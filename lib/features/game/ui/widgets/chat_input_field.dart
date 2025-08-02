import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/app/cubits/app_cubit.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({
    super.key,
    required this.onSendMessage,
    required this.retriesCount,
    required this.isGenerating,
    required this.promptController,
    this.onFilesSelected,
  });

  final TextEditingController promptController;
  final Function onSendMessage;
  final int retriesCount;
  final bool isGenerating;
  final Function(List<PlatformFile>)? onFilesSelected;

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  List<PlatformFile> selectedFiles = [];

  Future<void> _pickFiles() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'svg'],
        allowMultiple: true,
        withData: false, // We'll just get file paths for now
      );

      if (result != null && result.files.isNotEmpty) {
        setState(() {
          selectedFiles.addAll(result.files);
        });

        // Notify parent widget about selected files
        widget.onFilesSelected?.call(selectedFiles);
      }
    } catch (e) {
      // Handle error
      context.read<AppCubit>().showErrorMessage("Failed to pick files: $e");
    }
  }

  void _removeFile(int index) {
    setState(() {
      selectedFiles.removeAt(index);
    });
    widget.onFilesSelected?.call(selectedFiles);
  }

  void _clearAllFiles() {
    setState(() {
      selectedFiles.clear();
    });
    widget.onFilesSelected?.call(selectedFiles);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight:
            MediaQuery.of(context).size.height *
            0.7, // Limit to 40% of screen height
      ),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        border: Border(top: BorderSide(color: Colors.grey[700]!)),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Selected files preview
              if (selectedFiles.isNotEmpty) ...[
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Selected files (${selectedFiles.length})',
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            onTap: _clearAllFiles,
                            child: Text(
                              'Clear all',
                              style: TextStyle(
                                color: Colors.red[400],
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 60,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: selectedFiles.length,
                          itemBuilder: (context, index) {
                            final file = selectedFiles[index];
                            return Container(
                              margin: const EdgeInsets.only(right: 8),
                              child: Stack(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[700],
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey[600]!,
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            _getFileIcon(file.extension ?? ''),
                                            color: Colors.grey[300],
                                            size: 20,
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            file.name.toUpperCase(),
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: -4,
                                    right: -4,
                                    child: GestureDetector(
                                      onTap: () => _removeFile(index),
                                      child: Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              // Input row
              Row(
                children: [
                  // Attachment button
                  GestureDetector(
                    onTap: widget.isGenerating ? null : _pickFiles,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: widget.isGenerating
                            ? Colors.grey[700]
                            : Colors.grey[600],
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey[500]!),
                      ),
                      child: Icon(
                        Icons.attach_file,
                        color: widget.isGenerating
                            ? Colors.grey[500]
                            : Colors.grey[300],
                        size: 20,
                      ),
                    ),
                  ).addSpacing(right: 8),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.grey[600]!),
                      ),
                      // height: MediaQuery.of(context).size.height * 0.7, // Limit height to 8% of screen height
                      child: TextField(
                        controller: widget.promptController,
                        style: const TextStyle(color: Colors.white),
                        maxLines: 10,
                        minLines: 1,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          hintText: 'Describe your dream game...',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        onSubmitted: (_) => widget.onSendMessage(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: (widget.retriesCount > 0 && !widget.isGenerating)
                        ? () => widget.onSendMessage()
                        : null,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient:
                            widget.retriesCount > 0 && !widget.isGenerating
                            ? const LinearGradient(
                                colors: [Colors.purple, Colors.pink],
                              )
                            : null,
                        color: widget.retriesCount <= 0 || widget.isGenerating
                            ? Colors.grey[600]
                            : null,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        widget.isGenerating ? Icons.stop : Icons.send,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getFileIcon(String extension) {
    switch (extension.toLowerCase()) {
      case 'jpg':
      case 'jpeg':
      case 'png':
      case 'gif':
        return Icons.image;
      case 'svg':
        return Icons.code; // Using code icon for SVG files
      default:
        return Icons.insert_drive_file;
    }
  }
}
