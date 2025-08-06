import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_state.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/ui/widgets/chat_input_field.dart';
import 'package:symbal_fl/features/game/ui/widgets/chat_view.dart';
import 'package:symbal_fl/features/game/ui/widgets/retries_counter.dart';
import 'package:symbal_fl/features/game/ui/widgets/welcome_view.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_cubit.dart';

@RoutePage()
class CreateGamePage extends StatefulWidget {
  const CreateGamePage({super.key});

  @override
  State<CreateGamePage> createState() => _CreateGamePageState();
}

class _CreateGamePageState extends State<CreateGamePage> {
  final TextEditingController _promptController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _textFieldFocus = FocusNode();

  List<PlatformFile> _selectedFiles = [];


  @override
  void dispose() {
    _promptController.dispose();
    _scrollController.dispose();
    _textFieldFocus.dispose();
    super.dispose();
  }

  void _sendMessage() {
    CreateGameState createGameState = context.read<GameCubit>().state;
    if (_promptController.text.trim().isEmpty || createGameState.retriesCount <= 0) return;

    String userMessage = _promptController.text.trim();

    context.read<GameCubit>().createGame(
      prompt: userMessage,
      selectedFiles: _selectedFiles.map((file) => File(file.path!)).toList(),
    );
    _promptController.clear();

    // Clear selected files after sending
    _selectedFiles.clear();

    _scrollToBottom();

  }

  void _onFilesSelected(List<PlatformFile> files) {
    setState(() {
      _selectedFiles = files;
    });
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _addRetries()async {
    // call cubit method to add retries
    await context.read<WalletCubit>().connectWallet();

    context.read<GameCubit>().addRetries(5);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('🎉 +5 retries added!'),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  void _startWithSuggestion(String suggestion) {
    // _promptController.text = suggestion;
    // _sendMessage();
  }

  void _showDeployDialog(GameModel? gameModel) {
    if (gameModel == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No game to deploy')),
      );
      return;
    }

    final titleController = TextEditingController(text: gameModel.title);
    final descriptionController = TextEditingController(text: gameModel.description);
    List<String> tags = List.from(gameModel.tags);
    final tagController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text(
            'Deploy Game',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color(0xFF16213E),
          content: Container(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Review and update your game details before deploying:',
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 20),
                  
                  // Title Field
                  Text(
                    'Game Title',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: titleController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter game title',
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Color(0xFF1A1A2E),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  
                  // Description Field
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: descriptionController,
                    style: TextStyle(color: Colors.white),
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Enter game description',
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Color(0xFF1A1A2E),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  
                  // Tags Section
                  Text(
                    'Tags',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  
                  // Current Tags
                  if (tags.isNotEmpty)
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: tags.map((tag) => Chip(
                        label: Text(
                          tag,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.7),
                        deleteIcon: Icon(Icons.close, size: 16, color: Colors.white),
                        onDeleted: () {
                          setState(() {
                            tags.remove(tag);
                          });
                        },
                      )).toList(),
                    ),
                  
                  SizedBox(height: 8),
                  
                  // Add Tag Field
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: tagController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Add a tag',
                            hintStyle: TextStyle(color: Colors.white54),
                            filled: true,
                            fillColor: Color(0xFF1A1A2E),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.white24),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.white24),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            ),
                          ),
                          onSubmitted: (value) {
                            if (value.trim().isNotEmpty && !tags.contains(value.trim())) {
                              setState(() {
                                tags.add(value.trim());
                                tagController.clear();
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        onPressed: () {
                          final value = tagController.text.trim();
                          if (value.isNotEmpty && !tags.contains(value)) {
                            setState(() {
                              tags.add(value);
                              tagController.clear();
                            });
                          }
                        },
                        icon: Icon(Icons.add, color: Theme.of(context).primaryColor),
                        style: IconButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            ElevatedButton(
              onPressed: ()async {
                // Navigator.pop(context);

                // connect to pay
                // await context.read<WalletCubit>().connectWallet();
                
                // Create updated game model
                final updatedGame = gameModel.copyWith(
                  title: titleController.text.trim(),
                  description: descriptionController.text.trim(),
                  tags: tags,
                );
                
                // Deploy with updated data
                context.read<GameCubit>().deployGame(
                  gameToDeploy: updatedGame,
                  updatedTitle: titleController.text.trim(),
                  updatedDescription: descriptionController.text.trim(),
                  updatedTags: tags,
                );
                
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${updatedGame.title} deployed successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
              ),
              child: Text('Deploy'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      
      _textFieldFocus.requestFocus();
    _scrollToBottom();
    });
  }

  @override
  Widget build(BuildContext context) {
    var createGameCubit = context.watch<GameCubit>();
    CreateGameState createGameState = createGameCubit.state;
    
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
        title: const Text('', style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
        elevation: 0,
        actions: [
          // Deploy Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            ),
            onPressed: createGameState.isGenerating ? null : (){
              _showDeployDialog(createGameState.generatedGame);
            },
            child: const Text('Deploy', style: TextStyle(fontWeight: FontWeight.bold)),
          ).addSpacing(right: 8),
          // Retries Counter
          RetriesCounter(retriesCount: createGameState.retriesCount, addRetries: _addRetries),
        ],
      ),
      body: Column(
        children: [
          // Game Type Dropdown
          // _buildGameType(),

          // Main Content Area
          Expanded(
            child: createGameState.chatList.isNotEmpty
                ? CreateChatView(
                    scrollController: _scrollController,
                    messages: createGameState.chatList,
                    isGenerating: createGameState.isGenerating,
                  )
                : WelcomeView(startWithSuggestion: _startWithSuggestion),
          ),

          // Input Field
          ChatInputField(
            retriesCount: createGameState.retriesCount,
            isGenerating: createGameState.isGenerating,
            promptController: _promptController,
            onFilesSelected: _onFilesSelected,
            onSendMessage: _sendMessage,
          ),
        ],
      ),
    );
  }

}
