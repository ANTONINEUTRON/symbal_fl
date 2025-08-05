import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';
import 'package:symbal_fl/core/utils/utility_functions.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/features/game/domain/entities/message_model.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({super.key, required this.message});

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: message.isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!message.isUser) ...[
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple, Colors.pink]),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.smart_toy, color: Colors.white, size: 16),
            ),
            const SizedBox(width: 12),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: message.isUser ? Colors.purple : Colors.grey[800],
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.prompt,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ).addSpacing(bottom: 8),

                  // AI Response Action Buttons (only for AI messages)
                  if (!message.isUser) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Timestamp
                        Text(
                          UtilityFunctions.formatTime(message.timestamp),
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 11,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Play Button
                            if(message.gameData != null) ElevatedButton.icon(
                              onPressed: () {
                                context.router.push(PlayGameRoute(gameDataModel: GameDataModel.empty()));//message.gameData!
                              },
                              icon: const Icon(
                                Icons.play_arrow,
                                size: 16,
                                color: Colors.white,
                              ),
                              label: const Text(
                                'Play',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                minimumSize: Size.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),

                            // More Menu
                            PopupMenuButton<String>(
                              onSelected: (value) {
                                switch (value) {
                                  case 'set_main':
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: const Text(
                                          '⭐ Set as main game',
                                        ),
                                        backgroundColor: Colors.orange,
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                    );
                                    break;
                                  case 'report':
                                    _showReportDialog(context);
                                    break;
                                }
                              },
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.grey[400],
                                size: 18,
                              ),
                              color: Colors.grey[800],
                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                  value: 'set_main',
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                        size: 18,
                                      ),
                                      SizedBox(width: 12),
                                      Text(
                                        'Set as Main',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 'report',
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.flag_outlined,
                                        color: Colors.red,
                                        size: 18,
                                      ),
                                      SizedBox(width: 12),
                                      Text(
                                        'Report',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ],
              ),
            ),
          ),
          if (message.isUser) ...[
            const SizedBox(width: 12),
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.grey[700],
              child: const Icon(Icons.person, color: Colors.white, size: 16),
            ),
          ],
        ],
      ),
    );
  }

  void _showReportDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[800],
        title: const Text(
          'Report Content',
          style: TextStyle(color: Colors.white),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Why are you reporting this game?',
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 16),
            ReportOption(option: 'Inappropriate content'),
            ReportOption(option: 'Spam or misleading'),
            ReportOption(option: 'Copyright violation'),
            ReportOption(option: 'Other'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}

class ReportOption extends StatelessWidget {
  const ReportOption({super.key, required this.option});
  final String option;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        option,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      onTap: () {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('🚨 Reported: $option'),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }
}
