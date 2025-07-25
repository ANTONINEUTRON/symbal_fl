import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/features/game/data/models/create_message_model.dart';
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

  String _selectedGameType = 'Puzzle';
  int _retriesCount = 3;
  bool _isGenerating = false;
  bool _hasStartedChat = false;

  // final List<String> _gameTypes = [
  //   'Puzzle',
  //   'Adventure',
  //   'Action',
  //   'Strategy',
  //   'Casual',
  //   'Mystery',
  //   'Fantasy',
  //   'Sci-Fi',
  // ];

  final List<CreateMessageModel> _messages = [];

  @override
  void dispose() {
    _promptController.dispose();
    _scrollController.dispose();
    _textFieldFocus.dispose();
    super.dispose();
  }

  void _sendMessage() {
    if (_promptController.text.trim().isEmpty || _retriesCount <= 0) return;

    final userMessage = _promptController.text.trim();

    setState(() {
      if (!_hasStartedChat) {
        _hasStartedChat = true;
      }
      _messages.add(
        CreateMessageModel(
          prompt: userMessage,
          isUser: true,
          timestamp: DateTime.now(),
        ),
      );
      _isGenerating = true;
      _retriesCount--;
    });

    _promptController.clear();
    _scrollToBottom();

    // Simulate AI response
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _messages.add(
          CreateMessageModel(
            prompt:
                "🎮 Fantastic! I'm creating your $_selectedGameType game: \"$userMessage\"\n\n✨ Generating unique gameplay mechanics...\n🎭 Crafting an AI-powered story...\n🎯 Setting up fun challenges...\n\nYour personalized game will be ready shortly!",
            isUser: false,
            timestamp: DateTime.now(),
          ),
        );
        _isGenerating = false;
      });
      _scrollToBottom();
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
    setState(() {
      _retriesCount += 5;
    });

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
    _promptController.text = suggestion;
    _sendMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
        title: const Text(
          'Create Game',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          // Retries Counter
          RetriesCounter(
            retriesCount: _retriesCount,
            addRetries: _addRetries,
          ),
        ],
      ),
      body: Column(
        children: [
          // Game Type Dropdown
          // _buildGameType(),

          // Main Content Area
          Expanded(
            child: _hasStartedChat
                ? CreateChatView(
                    scrollController: _scrollController,
                    messages: _messages,
                    isGenerating: _isGenerating,
                  )
                : WelcomeView(startWithSuggestion: _startWithSuggestion),
          ),

          // Input Field
          ChatInputField(
            onSendMessage: _sendMessage,
            retriesCount: _retriesCount,
            isGenerating: _isGenerating,
            promptController: _promptController,
            textFieldFocus: _textFieldFocus,
          ),
        ],
      ),
    );
  }

  // Container _buildGameType() {
  //   return Container(
  //     margin: const EdgeInsets.all(16),
  //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
  //     decoration: BoxDecoration(
  //       color: Colors.grey[800],
  //       borderRadius: BorderRadius.circular(12),
  //       border: Border.all(color: Colors.purple.withOpacity(0.3)),
  //     ),
  //     child: DropdownButtonHideUnderline(
  //       child: DropdownButton<String>(
  //         value: _selectedGameType,
  //         isExpanded: true,
  //         dropdownColor: Colors.grey[800],
  //         icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
  //         style: const TextStyle(color: Colors.white, fontSize: 16),
  //         items: _gameTypes.map((type) {
  //           return DropdownMenuItem(
  //             value: type,
  //             child: Row(
  //               children: [
  //                 Icon(_getGameTypeIcon(type), color: Colors.purple, size: 20),
  //                 const SizedBox(width: 12),
  //                 Text(type),
  //               ],
  //             ),
  //           );
  //         }).toList(),
  //         onChanged: (value) {
  //           setState(() {
  //             _selectedGameType = value!;
  //           });
  //         },
  //       ),
  //     ),
  //   );
  // }

  // IconData _getGameTypeIcon(String type) {
  //   switch (type) {
  //     case 'Puzzle':
  //       return Icons.extension;
  //     case 'Adventure':
  //       return Icons.explore;
  //     case 'Action':
  //       return Icons.flash_on;
  //     case 'Strategy':
  //       return Icons.psychology;
  //     case 'Casual':
  //       return Icons.spa;
  //     case 'Mystery':
  //       return Icons.search;
  //     case 'Fantasy':
  //       return Icons.auto_awesome;
  //     case 'Sci-Fi':
  //       return Icons.rocket;
  //     default:
  //       return Icons.games;
  //   }
  // }
}

