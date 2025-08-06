import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_state.dart';
import 'package:symbal_fl/features/game/ui/helpers/game_deployment_helper.dart';
import 'package:symbal_fl/features/game/ui/widgets/game_preview_card.dart';

/// Example integration of the enhanced game deployment system
class EnhancedGameChatExample extends StatelessWidget {
  const EnhancedGameChatExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enhanced Game Creation'),
        actions: [
          // Deploy button in app bar
          BlocBuilder<GameCubit, GameState>(
            builder: (context, state) {
              final hasGames = context.read<GameCubit>().getAllGeneratedGames().isNotEmpty;
              
              return PopupMenuButton<String>(
                onSelected: (value) {
                  switch (value) {
                    case 'deploy':
                      GameDeploymentHelper.showDeployDialog(context);
                      break;
                    case 'quick_deploy':
                      GameDeploymentHelper.quickDeployLatest(context);
                      break;
                    case 'select_game':
                      GameDeploymentHelper.showGameSelectionDialog(context);
                      break;
                  }
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'deploy',
                    child: ListTile(
                      leading: Icon(Icons.rocket_launch),
                      title: Text('Deploy Game'),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                  if (hasGames)
                    const PopupMenuItem(
                      value: 'quick_deploy',
                      child: ListTile(
                        leading: Icon(Icons.flash_on),
                        title: Text('Quick Deploy Latest'),
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  if (hasGames)
                    const PopupMenuItem(
                      value: 'select_game',
                      child: ListTile(
                        leading: Icon(Icons.list),
                        title: Text('Select Game'),
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                ],
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Icon(Icons.more_vert),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<GameCubit, GameState>(
        builder: (context, state) {
          return Column(
            children: [
              // Chat messages
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.chatList.length,
                  itemBuilder: (context, index) {
                    final message = state.chatList[index];
                    
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: message.isUser 
                            ? CrossAxisAlignment.end 
                            : CrossAxisAlignment.start,
                        children: [
                          // Message bubble
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: message.isUser 
                                  ? Colors.blue.shade100 
                                  : Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(message.prompt),
                          ),
                          
                          // Game preview card if message contains a game
                          if (message.gameModel != null) ...[
                            const SizedBox(height: 12),
                            GamePreviewCard(
                              gameModel: message.gameModel!,
                              isSelected: state.selectedGameId == message.gameModel!.id,
                              onTap: () {
                                context.read<GameCubit>().selectGameForDeployment(
                                  message.gameModel!.id,
                                );
                              },
                            ),
                          ],
                        ],
                      ),
                    );
                  },
                ),
              ),
              
              // Loading indicators
              if (state.isGenerating)
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(width: 16),
                      Text('Generating game...'),
                    ],
                  ),
                ),
              
              if (state.isDeploying)
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(width: 16),
                      Text('Deploying game...'),
                    ],
                  ),
                ),
              
              // Error display
              if (state.error != null)
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red.shade300),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.error, color: Colors.red.shade700),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          state.error!,
                          style: TextStyle(color: Colors.red.shade700),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Clear error (you'd need to add this method to GameCubit)
                          // context.read<GameCubit>().clearError();
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
              
              // Success message
              if (state.isDeployed)
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.green.shade300),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green.shade700),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Game deployed successfully!',
                          style: TextStyle(color: Colors.green.shade700),
                        ),
                      ),
                    ],
                  ),
                ),
              
              // Input area (simplified)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Describe your game idea...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        // Handle send message
                        // context.read<GameCubit>().createGame(prompt: '...', selectedFiles: []);
                      },
                      child: const Icon(Icons.send),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// Usage in your app:
/// 
/// BlocProvider(
///   create: (context) => GameCubit(gameGenerationRepository: gameRepository),
///   child: EnhancedGameChatExample(),
/// )
/// 
/// Features demonstrated:
/// 1. Chat interface with game generation
/// 2. Game preview cards in chat with selection
/// 3. Multiple deployment options (full dialog, quick deploy, selection)
/// 4. Visual feedback for selected games
/// 5. Loading states and error handling
/// 6. Success notifications
