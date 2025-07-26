import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/events.dart';
import 'package:flame/collisions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:symbal_fl/core/extensions/iterable_extension.dart';
import 'dart:ui';
import 'dart:math' as math;
import 'package:symbal_fl/features/game/data/models/game_schema/game_data_model.dart';

/// Main game class that renders the GameData
class SymbalGame extends FlameGame
    with HasKeyboardHandlerComponents, HasCollisionDetection {
  late GameData gameData;
  late AssetManager assetManager;
  final Map<String, SymbalEntity> entities = {};

  // Game state
  int score = 0;
  int lives = 3;
  bool gameWon = false;
  bool gameLost = false;

  // Input state
  final Set<LogicalKeyboardKey> _currentlyPressed = <LogicalKeyboardKey>{};

  @override
  KeyEventResult onKeyEvent(
    KeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    super.onKeyEvent(event, keysPressed);
    _currentlyPressed.clear();
    _currentlyPressed.addAll(keysPressed);
    return KeyEventResult.handled;
  }

  // Getter for movement controllers to access input state
  Set<LogicalKeyboardKey> get pressedKeys => _currentlyPressed;

  SymbalGame(GameData data) {
    // Initialize asset manager
    assetManager = AssetManager();
    gameData = data;
    // initializeGame(data);
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    initializeGame();
    // Enable collision detection
    add(ScreenHitbox());
  }

  /// Initialize the game with data from LLM
  Future<void> initializeGame() async {
    // Clear existing entities
    removeAll(children.whereType<SymbalEntity>());
    entities.clear();

    // Reset game state
    score = 0;
    lives = gameData.gameRules?.playerLives ?? 3;
    gameWon = false;
    gameLost = false;

    // Load user assets
    await assetManager.loadAssetsFromGameData(gameData);

    // Set up camera based on world configuration
    await _setupCamera();

    // Create world background
    await _createBackground();

    // Create all entities
    for (final entityData in gameData.entities) {
      await _createEntity(entityData);
    }

    // Set up game rules
    _setupGameRules();

    // Set up UI
    _setupUI();
  }

  Future<void> _setupCamera() async {
    final orientation = gameData.world.orientation;
    final bounds = gameData.world.bounds;

    if (bounds?.autoScale == true) {
      // Auto-scale based on orientation and screen size
      camera.viewfinder.visibleGameSize = Vector2(bounds!.width, bounds.height);
    }

    // Follow player if specified
    if (gameData.world.camera?.followPlayer == true) {
      final player = entities.values.firstWhereOrNull(
        (e) => e.entityData.tags.contains('player'),
      );
      if (player != null) {
        camera.follow(player);
      }
    }
  }

  Future<void> _createBackground() async {
    final background = gameData.world.background;
    if (background == null) return;

    if (background.color != null) {
      // Solid color background
      final colorBg = RectangleComponent(
        size: camera.viewfinder.visibleGameSize ?? size,
        paint: Paint()..color = _parseColor(background.color!),
      );
      add(colorBg);
    }

    if (background.asset != null) {
      // Sprite background
      final sprite = await assetManager.getSprite(background.asset!);
      if (sprite != null) {
        final spriteBg = SpriteComponent(
          sprite: sprite,
          size: camera.viewfinder.visibleGameSize ?? size,
        );
        add(spriteBg);
      }
    }
  }

  Future<void> _createEntity(GameEntity entityData) async {
    final entity = SymbalEntity(entityData, assetManager);
    await entity.onLoad();

    entities[entityData.id] = entity;
    add(entity);
  }

  void _setupGameRules() {
    if (gameData.gameRules != null) {
      add(GameRulesManager(gameData.gameRules!, this));
    }
  }

  void _setupUI() {
    if (gameData.ui != null) {
      add(GameUIManager(gameData.ui!, this));
    }
  }

  Color _parseColor(String colorHex) {
    return Color(int.parse(colorHex.substring(1, 7), radix: 16) + 0xFF000000);
  }

  // Game event handlers
  void onItemCollected(CollectibleComponent collectible) {
    score += collectible.value;
    _checkWinConditions();
  }

  void addScore(int points) {
    score += points;
    _checkWinConditions();
  }

  void onPlayerDeath() {
    lives--;
    if (lives <= 0) {
      gameLost = true;
      _handleGameOver();
    } else {
      _respawnPlayer();
    }
  }

  void onTriggerActivated(TriggerEvent event) {
    switch (event) {
      case TriggerEvent.win:
        gameWon = true;
        _handleWin();
        break;
      case TriggerEvent.lose:
        gameLost = true;
        _handleGameOver();
        break;
      case TriggerEvent.checkpoint:
        _handleCheckpoint();
        break;
      default:
        break;
    }
  }

  void _checkWinConditions() {
    final winConditions = gameData.gameRules?.winConditions ?? [];

    for (final condition in winConditions) {
      switch (condition.type) {
        case WinConditionType.score:
          if (score >= (condition.value ?? 0)) {
            gameWon = true;
            _handleWin();
          }
          break;
        case WinConditionType.collectAll:
          final collectibles = entities.values.where(
            (e) => e.entityData.components.collectible != null,
          );
          if (collectibles.isEmpty) {
            gameWon = true;
            _handleWin();
          }
          break;
        default:
          break;
      }
    }
  }

  void _handleWin() {
    // Pause game, show win screen
    pauseEngine();
  }

  void _handleGameOver() {
    // Pause game, show game over screen
    pauseEngine();
  }

  void _handleCheckpoint() {
    // Save current state
  }

  void _respawnPlayer() {
    // Find and respawn player at start position
    final playerData = gameData.entities.firstWhereOrNull(
      (e) => e.tags.contains('player'),
    );
    if (playerData != null) {
      final existingPlayer = entities[playerData.id];
      existingPlayer?.removeFromParent();
      _createEntity(playerData);
    }
  }
}

/// Individual entity component using Flame's built-in collision system
class SymbalEntity extends PositionComponent
    with CollisionCallbacks, HasGameReference<SymbalGame> {
  final GameEntity entityData;
  final AssetManager assetManager;

  // Component references
  SpriteComponent? spriteComponent;
  HealthBarComponent? healthBar;
  AIBehaviorComponent? aiBehavior;
  MovementController? movementController;

  // Physics simulation
  Vector2 velocity = Vector2.zero();
  bool isGrounded = false;
  double health = 0;

  // Simple physics properties
  double gravity = 980.0;
  double friction = 0.8;
  double groundY = 400.0; // Will be calculated based on platforms

  SymbalEntity(this.entityData, this.assetManager);

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // Set up transform
    final transform = entityData.components.transform;
    if (transform != null) {
      position = Vector2(transform.x, transform.y);
      angle = transform.rotation;
      scale = Vector2.all(transform.scale);
    }

    // Add collision detection
    _addCollisionComponent();

    // Add visual components
    await _addSpriteComponent();
    await _addAnimationComponent();

    // Add behavior components
    _addMovementComponent();
    _addHealthComponent();
    _addAIComponent();
    _addCollectibleComponent();
    _addDamageComponent();
    _addPlatformComponent();
    _addTriggerComponent();

    // Calculate ground level based on platform entities
    _calculateGroundLevel();
  }

  void _addCollisionComponent() {
    final collision = entityData.components.collision;
    if (collision == null) return;

    final spriteSize = _getSpriteSize();

    switch (collision.shape) {
      case CollisionShape.rectangle:
        add(RectangleHitbox(size: spriteSize));
        break;
      case CollisionShape.circle:
        add(CircleHitbox(radius: math.min(spriteSize.x, spriteSize.y) / 2));
        break;
    }
  }

  Vector2 _getSpriteSize() {
    final sprite = entityData.components.sprite;
    if (sprite?.width != null && sprite?.height != null) {
      return Vector2(sprite!.width!, sprite.height!);
    }
    return Vector2(32, 32); // Default size
  }

  Future<void> _addSpriteComponent() async {
    final spriteData = entityData.components.sprite;
    if (spriteData == null) return;

    final sprite = await assetManager.getSprite(spriteData.asset);
    if (sprite == null) return;

    spriteComponent = SpriteComponent(
      sprite: sprite,
      size: Vector2(spriteData.width ?? 32, spriteData.height ?? 32),
      anchor: Anchor.center,
    );

    if (spriteData.flipX) spriteComponent!.scale.x *= -1;
    if (spriteData.flipY) spriteComponent!.scale.y *= -1;

    add(spriteComponent!);
  }

  Future<void> _addAnimationComponent() async {
    final animData = entityData.components.animation;
    if (animData == null) return;

    final spriteSheet = await assetManager.getSpriteAnimation(
      animData.spriteSheet,
      animData.frameCount,
      animData.stepTime,
    );

    if (spriteSheet != null) {
      final animationComponent = SpriteAnimationComponent(
        animation: spriteSheet,
        size: _getSpriteSize(),
        anchor: Anchor.center,
      );
      add(animationComponent);
    }
  }

  void _addMovementComponent() {
    final movement = entityData.components.movement;
    if (movement == null) return;

    movementController = MovementController(movement, this);
    add(movementController!);
  }

  void _addHealthComponent() {
    final healthData = entityData.components.health;
    if (healthData == null) return;

    health = (healthData.current ?? healthData.max).toDouble();

    healthBar = HealthBarComponent(healthData.max.toDouble(), health);
    add(healthBar!);
  }

  void _addAIComponent() {
    final aiData = entityData.components.ai;
    if (aiData == null) return;

    aiBehavior = AIBehaviorComponent(aiData, this);
    add(aiBehavior!);
  }

  void _addCollectibleComponent() {
    final collectible = entityData.components.collectible;
    if (collectible == null) return;

    add(CollectibleBehavior(collectible, this));
  }

  void _addDamageComponent() {
    final damage = entityData.components.damage;
    if (damage == null) return;

    add(DamageBehavior(damage, this));
  }

  void _addPlatformComponent() {
    final platform = entityData.components.platform;
    if (platform == null) return;

    add(PlatformBehavior(platform, this));
  }

  void _addTriggerComponent() {
    final trigger = entityData.components.trigger;
    if (trigger == null) return;

    add(TriggerBehavior(trigger, this));
  }

  void _calculateGroundLevel() {
    // Simple ground detection - in a real implementation you'd check for platform entities
    groundY = position.y + 100;
  }

  @override
  void update(double dt) {
    super.update(dt);

    // Simple physics simulation
    final physics = entityData.components.physics;
    if (physics?.bodyType == PhysicsBodyType.dynamic) {
      _updatePhysics(dt);
    }
  }

  void _updatePhysics(double dt) {
    final worldGravity = game.gameData.world.gravity;

    // Apply gravity
    if (worldGravity != null && !isGrounded) {
      velocity.y += worldGravity.y * dt;
    }

    // Apply friction
    velocity.x *= friction;

    // Update position
    position += velocity * dt;

    // Simple ground collision
    if (position.y >= groundY) {
      position.y = groundY;
      velocity.y = 0;
      isGrounded = true;
    } else {
      isGrounded = false;
    }

    // Keep in bounds
    final bounds = game.gameData.world.bounds;
    if (bounds != null) {
      position.x = position.x.clamp(0, bounds.width);
      position.y = position.y.clamp(-100, bounds.height);
    }
  }

  @override
  bool onCollisionStart(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ) {
    super.onCollisionStart(intersectionPoints, other);
    if (other is SymbalEntity) {
      _handleEntityCollision(other);
    }
    return true;
  }

  void _handleEntityCollision(SymbalEntity other) {
    // Handle collectibles
    if (other.entityData.components.collectible != null) {
      _collectItem(other);
    }

    // Handle damage
    if (other.entityData.components.damage != null) {
      _takeDamage(other.entityData.components.damage!.amount);
    }

    // Handle triggers
    if (other.entityData.components.trigger != null) {
      _activateTrigger(other.entityData.components.trigger!);
    }

    // Handle platforms (simple ground detection)
    if (other.entityData.components.platform != null) {
      if (position.y < other.position.y) {
        isGrounded = true;
        velocity.y = 0;
        position.y = other.position.y - size.y / 2;
      }
    }
  }

  void _collectItem(SymbalEntity item) {
    final collectible = item.entityData.components.collectible!;

    // Apply effect
    if (collectible.effect != null) {
      _applyCollectibleEffect(collectible.effect!);
    }

    // Remove item if configured
    if (collectible.destroyOnCollect) {
      item.removeFromParent();
      game.entities.remove(item.entityData.id);
    }

    // Notify game of collection
    game.onItemCollected(collectible);
  }

  void _applyCollectibleEffect(CollectibleEffect effect) {
    switch (effect.type) {
      case EffectType.health:
        health = math.min(
          health + effect.value,
          entityData.components.health?.max.toDouble() ?? health,
        );
        healthBar?.updateHealth(health);
        break;
      case EffectType.speed:
        movementController?.modifySpeed(effect.value);
        break;
      case EffectType.jump:
        movementController?.modifyJumpForce(effect.value);
        break;
      case EffectType.score:
        game.addScore(effect.value.toInt());
        break;
    }
  }

  void _takeDamage(int damage) {
    health = math.max(0, health - damage);
    healthBar?.updateHealth(health);

    if (health <= 0) {
      _die();
    }
  }

  void _activateTrigger(TriggerComponent trigger) {
    game.onTriggerActivated(trigger.event);
  }

  void _die() {
    if (entityData.tags.contains('player')) {
      game.onPlayerDeath();
    }
    removeFromParent();
    game.entities.remove(entityData.id);
  }
}

/// Asset Manager for handling user-provided assets
class AssetManager {
  final Map<String, Sprite> _sprites = {};
  final Map<String, SpriteAnimation> _animations = {};

  Future<void> loadAssetsFromGameData(GameData gameData) async {
    final assetNames = <String>{};

    // Collect all asset names from entities
    for (final entity in gameData.entities) {
      final sprite = entity.components.sprite?.asset;
      if (sprite != null) assetNames.add(sprite);

      final animation = entity.components.animation?.spriteSheet;
      if (animation != null) assetNames.add(animation);
    }

    // Add background asset
    final bgAsset = gameData.world.background?.asset;
    if (bgAsset != null) assetNames.add(bgAsset);

    // Load all assets
    for (final assetName in assetNames) {
      await _loadSprite(assetName);
    }
  }

  Future<void> _loadSprite(String assetName) async {
    try {
      // Try to load from user assets first, then fallback to bundled assets
      final sprite = await Sprite.load(assetName);
      _sprites[assetName] = sprite;
    } catch (e) {
      print('Failed to load asset: $assetName - $e');
      // Use placeholder sprite
      _sprites[assetName] = await _createPlaceholderSprite();
    }
  }

  Future<Sprite> _createPlaceholderSprite() async {
    // Create a simple colored rectangle as placeholder
    return Sprite.load('placeholder.png'); // You'll need a placeholder asset
  }

  Sprite? getSprite(String assetName) => _sprites[assetName];

  Future<SpriteAnimation?> getSpriteAnimation(
    String assetName,
    int frameCount,
    double stepTime,
  ) async {
    final cacheKey = '$assetName-$frameCount-$stepTime';
    if (_animations.containsKey(cacheKey)) {
      return _animations[cacheKey];
    }

    try {
      final spriteSheet = await Sprite.load(assetName);
      final animation = SpriteAnimation.spriteList(
        List.generate(frameCount, (i) => spriteSheet),
        stepTime: stepTime,
      );
      _animations[cacheKey] = animation;
      return animation;
    } catch (e) {
      print('Failed to load animation: $assetName - $e');
      return null;
    }
  }
}

/// Game Rules Manager
class GameRulesManager extends Component {
  final GameRules rules;
  final SymbalGame game;

  GameRulesManager(this.rules, this.game);
}

/// Game UI Manager
class GameUIManager extends Component {
  final GameUI ui;
  final SymbalGame game;

  GameUIManager(this.ui, this.game);
}

/// Platform movement behavior component
class PlatformBehavior extends Component {
  final PlatformComponent platformData;
  final SymbalEntity entity;

  int currentPathIndex = 0;
  bool movingForward = true;

  PlatformBehavior(this.platformData, this.entity);

  @override
  void update(double dt) {
    super.update(dt);

    // Access platform properties based on your data model
    if (!platformData.oneWay || platformData.moving == null) return;

    final targetPos = Vector2(
      platformData.moving!.path[currentPathIndex].x,
      platformData.moving!.path[currentPathIndex].y,
    );

    final currentPos = entity.position;
    final direction = (targetPos - currentPos).normalized();
    entity.velocity = direction * platformData.moving!.speed;

    // Check if reached waypoint
    if (currentPos.distanceTo(targetPos) < 10) {
      _moveToNextWaypoint(platformData.moving!.path.length);
    }
  }

  void _moveToNextWaypoint(int pathLength) {
    if (movingForward) {
      currentPathIndex++;
      if (currentPathIndex >= pathLength) {
        if (pathLength > 1) {
          currentPathIndex = pathLength - 2;
          movingForward = false;
        } else {
          currentPathIndex = 0;
        }
      }
    } else {
      currentPathIndex--;
      if (currentPathIndex < 0) {
        currentPathIndex = 1;
        movingForward = true;
      }
    }
  }
}

/// Collectible behavior component
class CollectibleBehavior extends Component {
  final CollectibleComponent collectibleData;
  final SymbalEntity entity;

  double bobOffset = 0;
  double rotationSpeed = 2.0;

  CollectibleBehavior(this.collectibleData, this.entity);

  @override
  void update(double dt) {
    super.update(dt);

    // Add floating/bobbing animation
    bobOffset += dt * 3;
    entity.position.y += math.sin(bobOffset) * 0.5;

    // Add rotation
    entity.angle += rotationSpeed * dt;
  }
}

/// Trigger behavior component
class TriggerBehavior extends Component {
  final TriggerComponent triggerData;
  final SymbalEntity entity;

  bool hasTriggered = false;

  TriggerBehavior(this.triggerData, this.entity);

  void trigger() {
    if (triggerData.once && hasTriggered) return;

    hasTriggered = true;

    final game = entity.findGame() as SymbalGame?;
    game?.onTriggerActivated(triggerData.event);
  }
}

/// Damage dealing behavior component
class DamageBehavior extends Component {
  final DamageComponent damageData;
  final SymbalEntity entity;

  double cooldownTimer = 0;
  final double cooldownDuration = 1.0; // 1 second cooldown

  DamageBehavior(this.damageData, this.entity);

  @override
  void update(double dt) {
    super.update(dt);

    if (cooldownTimer > 0) {
      cooldownTimer -= dt;
    }
  }

  bool canDealDamage() => cooldownTimer <= 0;

  void dealDamage() {
    cooldownTimer = cooldownDuration;
  }
}

/// Movement controller component (Fixed - no keyboard handler mixin)
class MovementController extends Component {
  final MovementComponent movementData;
  final SymbalEntity entity;

  double currentSpeed;
  double currentJumpForce;
  bool leftPressed = false;
  bool rightPressed = false;
  bool jumpPressed = false;

  MovementController(this.movementData, this.entity)
    : currentSpeed = movementData.speed,
      currentJumpForce = movementData.jumpForce ?? 0;

  @override
  void update(double dt) {
    super.update(dt);

    if (!movementData.canMove) return;

    // Get input state from game
    final game = entity.findGame() as SymbalGame?;
    if (game == null) return;

    final keysPressed = game.pressedKeys;

    // Update movement flags
    leftPressed =
        keysPressed.contains(LogicalKeyboardKey.arrowLeft) ||
        keysPressed.contains(LogicalKeyboardKey.keyA);
    rightPressed =
        keysPressed.contains(LogicalKeyboardKey.arrowRight) ||
        keysPressed.contains(LogicalKeyboardKey.keyD);
    jumpPressed =
        keysPressed.contains(LogicalKeyboardKey.space) ||
        keysPressed.contains(LogicalKeyboardKey.arrowUp) ||
        keysPressed.contains(LogicalKeyboardKey.keyW);

    // Horizontal movement
    if (leftPressed) {
      final force = entity.isGrounded
          ? currentSpeed
          : currentSpeed * (movementData.airControl ?? 1.0);
      entity.velocity.x = -force;
      _flipSprite(true);
    } else if (rightPressed) {
      final force = entity.isGrounded
          ? currentSpeed
          : currentSpeed * (movementData.airControl ?? 1.0);
      entity.velocity.x = force;
      _flipSprite(false);
    } else if (entity.isGrounded) {
      // Apply friction when on ground
      entity.velocity.x *= 0.8;
    }

    // Jumping
    if (jumpPressed && (movementData.canJump ?? true) && entity.isGrounded) {
      entity.velocity.y = -currentJumpForce;
      entity.isGrounded = false;
    }
  }

  void _flipSprite(bool facingLeft) {
    if (entity.spriteComponent != null) {
      entity.spriteComponent!.scale.x = facingLeft ? -1 : 1;
    }
  }

  void modifySpeed(double delta) {
    currentSpeed += delta;
  }

  void modifyJumpForce(double delta) {
    currentJumpForce += delta;
  }
}

/// AI Behavior component
class AIBehaviorComponent extends Component {
  final AIComponent aiData;
  final SymbalEntity entity;

  late AIState currentState;
  int currentWaypointIndex = 0;
  double waitTimer = 0;
  SymbalEntity? target;

  AIBehaviorComponent(this.aiData, this.entity);

  @override
  void onMount() {
    super.onMount();
    currentState = _getInitialState();
  }

  AIState _getInitialState() {
    switch (aiData.type) {
      case AIType.patrol:
        return AIState.patrolling;
      case AIType.follow:
        return AIState.searching;
      case AIType.guard:
        return AIState.guarding;
      case AIType.wander:
        return AIState.wandering;
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    switch (aiData.type) {
      case AIType.patrol:
        _updatePatrol(dt);
        break;
      case AIType.follow:
        _updateFollow(dt);
        break;
      case AIType.guard:
        _updateGuard(dt);
        break;
      case AIType.wander:
        _updateWander(dt);
        break;
    }
  }

  void _updatePatrol(double dt) {
    if (aiData.waypoints.isEmpty) return;

    final currentWaypoint = aiData.waypoints[currentWaypointIndex];
    final targetPos = Vector2(currentWaypoint.x, currentWaypoint.y);
    final currentPos = entity.position;

    switch (currentState) {
      case AIState.patrolling:
        _moveTowards(targetPos, dt);

        if (currentPos.distanceTo(targetPos) < 20) {
          currentState = AIState.waiting;
          waitTimer = aiData.waitTime;
        }
        break;

      case AIState.waiting:
        waitTimer -= dt;
        if (waitTimer <= 0) {
          currentWaypointIndex =
              (currentWaypointIndex + 1) % aiData.waypoints.length;
          currentState = AIState.patrolling;
        }
        break;

      default:
        break;
    }
  }

  void _updateFollow(double dt) {
    // Find player
    target ??= _findPlayer();
    if (target == null) return;

    final distance = entity.position.distanceTo(target!.position);

    if (distance <= aiData.detectionRange) {
      currentState = AIState.following;
      _moveTowards(target!.position, dt);
    } else {
      currentState = AIState.searching;
      // Maybe add searching behavior
    }
  }

  void _updateGuard(double dt) {
    target ??= _findPlayer();
    if (target == null) return;

    final distance = entity.position.distanceTo(target!.position);

    if (distance <= aiData.detectionRange) {
      currentState = AIState.guarding;
      // Face the player but don't move
      _faceTarget(target!.position);
    }
  }

  void _updateWander(double dt) {
    switch (currentState) {
      case AIState.wandering:
        // Move in current direction
        if (entity.velocity.length < 10) {
          // Choose new random direction
          final angle = math.Random().nextDouble() * 2 * math.pi;
          entity.velocity.x = math.cos(angle) * aiData.speed;
        }

        // Randomly decide to wait
        if (math.Random().nextDouble() < 0.01) {
          currentState = AIState.waiting;
          waitTimer = aiData.waitTime * (0.5 + math.Random().nextDouble());
          entity.velocity.x = 0;
        }
        break;

      case AIState.waiting:
        waitTimer -= dt;
        if (waitTimer <= 0) {
          currentState = AIState.wandering;
        }
        break;

      default:
        break;
    }
  }

  void _moveTowards(Vector2 targetPos, double dt) {
    final direction = (targetPos - entity.position).normalized();
    entity.velocity.x = direction.x * aiData.speed;

    // Flip sprite based on direction
    if (entity.spriteComponent != null) {
      entity.spriteComponent!.scale.x = direction.x < 0 ? -1 : 1;
    }
  }

  void _faceTarget(Vector2 targetPos) {
    if (entity.spriteComponent != null) {
      final direction = targetPos.x - entity.position.x;
      entity.spriteComponent!.scale.x = direction < 0 ? -1 : 1;
    }
  }

  SymbalEntity? _findPlayer() {
    final game = entity.findGame() as SymbalGame?;
    return game?.entities.values.firstWhereOrNull(
      (e) => e.entityData.tags.contains('player'),
    );
  }
}

/// AI State enum
enum AIState { patrolling, following, searching, guarding, waiting, wandering }

/// Health bar component
class HealthBarComponent extends PositionComponent {
  final double maxHealth;
  double currentHealth;

  late RectangleComponent background;
  late RectangleComponent healthBar;

  HealthBarComponent(this.maxHealth, this.currentHealth);

  @override
  Future<void> onLoad() async {
    super.onLoad();

    size = Vector2(40, 6);
    position = Vector2(0, -30); // Above the entity

    // Background
    background = RectangleComponent(
      size: size,
      paint: Paint()..color = const Color(0xFF330000),
    );
    add(background);

    // Health bar
    healthBar = RectangleComponent(
      size: Vector2(size.x * (currentHealth / maxHealth), size.y),
      paint: Paint()..color = const Color(0xFF00AA00),
    );
    add(healthBar);
  }

  void updateHealth(double newHealth) {
    currentHealth = newHealth.clamp(0, maxHealth);

    final healthRatio = currentHealth / maxHealth;
    healthBar.size.x = size.x * healthRatio;

    // Change color based on health
    if (healthRatio > 0.6) {
      healthBar.paint.color = const Color(0xFF00AA00); // Green
    } else if (healthRatio > 0.3) {
      healthBar.paint.color = const Color(0xFFAAAA00); // Yellow
    } else {
      healthBar.paint.color = const Color(0xFFAA0000); // Red
    }
  }
}
