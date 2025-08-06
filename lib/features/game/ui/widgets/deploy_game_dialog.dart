import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';

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

  @override
  void initState() {
    super.initState();
    selectedGame = widget.selectedGame ?? widget.availableGames.lastOrNull;
    
    titleController = TextEditingController(text: selectedGame?.title ?? '');
    descriptionController = TextEditingController(text: selectedGame?.description ?? '');
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

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.8,
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
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
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
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<GameModel>(
                  value: selectedGame,
                  isExpanded: true,
                  underline: const SizedBox(),
                  items: widget.availableGames.map((game) => 
                    DropdownMenuItem(
                      value: game,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.title.isNotEmpty ? game.title : 'Untitled Game',
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            _formatGameTime(game.createdAt),
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ).toList(),
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
                      'Game Title:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: 'Enter game title',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Description Editor
                    const Text(
                      'Description:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: descriptionController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Enter game description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Token URL Input
                    const Text(
                      'LetsGoBonk Token URL (Optional):',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: tokenUrlController,
                      decoration: InputDecoration(
                        hintText: 'https://letsgobonk.com/token/...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: const Icon(Icons.link),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Tags Editor
                    const Text(
                      'Tags:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        ...updatedTags.map((tag) => Chip(
                          label: Text(tag),
                          onDeleted: () => _removeTag(tag),
                          deleteIcon: const Icon(Icons.close, size: 16),
                        )),
                        ActionChip(
                          label: const Text('+ Add Tag'),
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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: selectedGame != null ? _deployGame : null,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Deploy Game',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddTagDialog() {
    final tagController = TextEditingController();
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Tag'),
        content: TextField(
          controller: tagController,
          decoration: const InputDecoration(
            hintText: 'Enter tag name',
          ),
          onSubmitted: (value) {
            _addTag(value);
            Navigator.of(context).pop();
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              _addTag(tagController.text);
              Navigator.of(context).pop();
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _deployGame() {
    if (selectedGame == null) return;

    final trimmedTokenUrl = tokenUrlController.text.trim();
    
    context.read<GameCubit>().deployGame(
      gameToDeploy: selectedGame,
      tokenUrl: trimmedTokenUrl.isEmpty ? null : trimmedTokenUrl,
      updatedTitle: titleController.text.trim(),
      updatedDescription: descriptionController.text.trim(),
      updatedTags: updatedTags,
    );

    Navigator.of(context).pop();
  }
}
