import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_state.dart';
import 'package:symbal_fl/features/game/ui/widgets/chat_input_field.dart';
import 'package:symbal_fl/features/game/ui/widgets/chat_view.dart';
import 'package:symbal_fl/features/game/ui/widgets/retries_counter.dart';
import 'package:symbal_fl/features/game/ui/widgets/welcome_view.dart';

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

  void _addRetries() {
    // call cubit method to add retries
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
              context.read<GameCubit>().deployGame();
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
