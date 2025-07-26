import 'package:flame/components.dart';
import 'package:flame/game.dart';


/// Helper extension for finding game reference
extension ComponentGameExtension on Component {
  T? findGame<T extends FlameGame>() {
    Component? current = this;
    while (current != null) {
      if (current is T) return current;
      current = current.parent;
    }
    return null;
  }
}
