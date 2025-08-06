import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_state.dart';

class DeployGameDialog extends StatefulWidget {
  final List<GameModel> availableGames;
  final GameModel? selectedGame;

  const DeployGameDialog({
    super.key,
    required this.availableGames,
    this.selectedGame,
  });

  @override
  State<DeployGameDialog> createState() => _DeployGameDialogState();
}

class _DeployGameDialogState extends State<DeployGameDialog> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late TextEditingController tokenUrlController;
  GameModel? selectedGame;
  List<String> updatedTags = [];
  String? tokenUrlError;

  @override
  void initState() {
    super.initState();
    selectedGame = widget.selectedGame ?? widget.availableGames.lastOrNull;

    titleController = TextEditingController(text: selectedGame?.title ?? '');
    descriptionController = TextEditingController(
      text: selectedGame?.description ?? '',
    );
    tokenUrlController = TextEditingController();
    updatedTags = List.from(selectedGame?.tags ?? []);
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    tokenUrlController.dispose();
    super.dispose();
  }

  void _updateSelectedGame(GameModel? game) {
    setState(() {
      selectedGame = game;
      titleController.text = game?.title ?? '';
      descriptionController.text = game?.description ?? '';
      updatedTags = List.from(game?.tags ?? []);
    });
  }

  String _formatGameTime(DateTime? timestamp) {
    if (timestamp == null) return 'Unknown time';
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inMinutes < 1) return 'Just now';
    if (difference.inHours < 1) return '${difference.inMinutes}m ago';
    if (difference.inDays < 1) return '${difference.inHours}h ago';
    return '${difference.inDays}d ago';
  }

  void _addTag(String tag) {
    if (tag.trim().isNotEmpty && !updatedTags.contains(tag.trim())) {
      setState(() {
        updatedTags.add(tag.trim());
      });
    }
  }

  void _removeTag(String tag) {
    setState(() {
      updatedTags.remove(tag);
    });
  }

  bool _isValidLetsBonkUrl(String url) {
    if (url.trim().isEmpty) return true; // Optional field
    
    // Check if it matches the pattern: https://letsbonk.fun/token/<token_address>
    // Token addresses are typically 32-44 characters long and contain alphanumeric chars
    final regex = RegExp(r'^https:\/\/letsbonk\.fun\/token\/[a-zA-Z0-9]{32,44}$');
    return regex.hasMatch(url.trim());
  }

  void _validateTokenUrl(String value) {
    setState(() {
      if (value.trim().isEmpty) {
        tokenUrlError = null;
      } else if (!_isValidLetsBonkUrl(value)) {
        tokenUrlError = 'Please enter a valid LetsBonk.fun token URL format:\nhttps://letsbonk.fun/token/<token_address>';
      } else {
        tokenUrlError = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameCubit, GameState>(
      listener: (context, state) {
        if (state.isDeployed) {
          // Show success message and reset chat
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Game deployed successfully!'),
              backgroundColor: Colors.green,
              duration: Duration(seconds: 3),
            ),
          );
          
          // Reset the chat after successful deployment
          context.read<GameCubit>().resetGame();
          
          // Close the dialog
          Navigator.of(context).pop();
        } else if (state.error != null && !state.isDeploying) {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Deployment failed: ${state.error}'),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 5),
            ),
          );
          
          // Clear the error after showing it
          context.read<GameCubit>().clearError();
        }
      },
      child: Dialog(
        backgroundColor: const Color(0xFF16213E),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Deploy Game',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Game Selector
              if (widget.availableGames.length > 1) ...[
                const Text(
                  'Select Game Version:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF1A1A2E),
                  ),
                  child: DropdownButton<GameModel>(
                    value: selectedGame,
                    isExpanded: true,
                    underline: const SizedBox(),
                    dropdownColor: const Color(0xFF1A1A2E),
                    items: widget.availableGames
                        .map(
                          (game) => DropdownMenuItem(
                            value: game,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  game.title.isNotEmpty
                                      ? game.title
                                      : 'Untitled Game',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  _formatGameTime(game.createdAt),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: _updateSelectedGame,
                  ),
                ),
                const SizedBox(height: 24),
              ],

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title Editor
                      const Text(
                        'Game Title',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: titleController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter game title',
                          hintStyle: const TextStyle(color: Colors.white54),
                          filled: true,
                          fillColor: const Color(0xFF1A1A2E),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.white24),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.white24),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Description Editor
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: descriptionController,
                        maxLines: 3,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter game description',
                          hintStyle: const TextStyle(color: Colors.white54),
                          filled: true,
                          fillColor: const Color(0xFF1A1A2E),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.white24),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.white24),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Token URL Input
                      const Text(
                        'LetsBonk.fun token link (Optional)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: tokenUrlController,
                        style: const TextStyle(color: Colors.white),
                        onChanged: _validateTokenUrl,
                        decoration: InputDecoration(
                          hintText: 'https://letsbonk.fun/token/...',
                          hintStyle: const TextStyle(color: Colors.white54),
                          errorText: tokenUrlError,
                          errorStyle: const TextStyle(color: Colors.redAccent),
                          filled: true,
                          fillColor: const Color(0xFF1A1A2E),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: tokenUrlError != null ? Colors.redAccent : Colors.white24,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: tokenUrlError != null ? Colors.redAccent : Colors.white24,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: tokenUrlError != null 
                                  ? Colors.redAccent 
                                  : Theme.of(context).primaryColor,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.link,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Tags Editor
                      const Text(
                        'Tags',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          ...updatedTags.map(
                            (tag) => Chip(
                              label: Text(
                                tag,
                                style: const TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Theme.of(
                                context,
                              ).primaryColor.withOpacity(0.7),
                              onDeleted: () => _removeTag(tag),
                              deleteIcon: const Icon(
                                Icons.close,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ActionChip(
                            label: const Text(
                              '+ Add Tag',
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Theme.of(
                              context,
                            ).primaryColor.withOpacity(0.3),
                            onPressed: () => _showAddTagDialog(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Deploy Button
              BlocBuilder<GameCubit, GameState>(
                builder: (context, state) {
                  return SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (selectedGame != null && tokenUrlError == null && !state.isDeploying) 
                          ? _deployGame 
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: state.isDeploying
                          ? const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text(
                                  'Deploying...',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          : const Text(
                              'Deploy Game',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAddTagDialog() {
    final tagController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF16213E),
        title: const Text('Add Tag', style: TextStyle(color: Colors.white)),
        content: TextField(
          controller: tagController,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: 'Enter tag name',
            hintStyle: TextStyle(color: Colors.white54),
            filled: true,
            fillColor: Color(0xFF1A1A2E),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24),
            ),
          ),
          onSubmitted: (value) {
            _addTag(value);
            Navigator.of(context).pop();
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.white70),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _addTag(tagController.text);
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
            ),
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _deployGame() {
    if (selectedGame == null) return;

    final trimmedTokenUrl = tokenUrlController.text.trim();
    
    // Final validation check
    if (trimmedTokenUrl.isNotEmpty && !_isValidLetsBonkUrl(trimmedTokenUrl)) {
      _validateTokenUrl(trimmedTokenUrl);
      return;
    }

    context.read<GameCubit>().deployGame(
      gameToDeploy: selectedGame!,
      tokenUrl: trimmedTokenUrl.isEmpty ? null : trimmedTokenUrl,
      updatedTitle: titleController.text.trim(),
      updatedDescription: descriptionController.text.trim(),
      updatedTags: updatedTags,
    );

    // Don't close dialog immediately - let BlocListener handle it after deployment completes
  }
}
