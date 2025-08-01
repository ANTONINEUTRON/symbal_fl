import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:path/path.dart' as path;

import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/env/env.dart';

class GameGeneratorRemote {
  late final Dio _dio;

  GameGeneratorRemote() {
    _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 60),
      headers: {
        'Content-Type': 'application/json',
      },
    ));
  }

  Future<MessageModel> generateGame(MessageModel message) async {
    try {
      // Prepare the request body
      final requestBody = {
        'prompt': message.prompt,
        'userId': null, // You can add user ID from your auth system
        'assets': message.attachedFiles, // Array of asset URLs
      };

// Get the current user session
      final supabase = Supabase.instance.client;
      final session = supabase.auth.currentSession;
      
      // Make HTTP request to Supabase Edge Function using Dio
      final response = await _dio.post(
        'https://jglqhvzlszxeveudvcly.supabase.co/functions/v1/generate-game-gemini',
        data: requestBody,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${session?.accessToken}', // Use session token
          },
        ),
      );

      if (response.statusCode == 200) {
        final responseData = response.data;
        
        // Parse the response and create a MessageModel with the generated game
        return MessageModel(
          prompt: responseData['game']['messageToUser'] ?? 'Game generated successfully!',
          isUser: false,
          timestamp: DateTime.now(),
          attachedFiles: message.attachedFiles,
          game: GameDataModel(
            id: responseData['gameId']?.toString() ?? DateTime.now().millisecondsSinceEpoch.toString(),
            assets: message.attachedFiles,
            version: 1,
            renderableContent: responseData['game']['html'] ?? '',
            prompt: message.prompt,
            message: responseData['game']['messageToUser'] ?? 'Game generated successfully!',
          ),
        );
      } else {
        // Handle error response
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          message: 'Failed to generate game: ${response.data['error'] ?? 'Unknown error'}',
        );
      }
    } on DioException catch (e) {
      if(kDebugMode){
        print('DioException: ${e}');
      }
      // Handle Dio-specific errors
      String errorMessage = 'Sorry, I encountered an error while generating your game: ';
      
      if (e.type == DioExceptionType.connectionTimeout) {
        errorMessage += 'Connection timeout. Please check your internet connection.';
      } else if (e.type == DioExceptionType.receiveTimeout) {
        errorMessage += 'Request timeout. The server took too long to respond.';
      } else if (e.response != null) {
        final errorData = e.response?.data;
        errorMessage += errorData['error'] ?? 'Server error (${e.response?.statusCode})';
      } else {
        errorMessage += e.message ?? 'Network error';
      }

      return MessageModel(
        prompt: errorMessage,
        isUser: false,
        timestamp: DateTime.now(),
        attachedFiles: message.attachedFiles,
      );
    } catch (e) {
      if(kDebugMode){
        print('Error: ${e}');
      }

      // Handle any other errors
      return MessageModel(
        prompt: 'Sorry, I encountered an unexpected error: ${e.toString()}',
        isUser: false,
        timestamp: DateTime.now(),
        attachedFiles: message.attachedFiles,
      );
    }
  }

  Future<void> saveGame(GameDataModel gameData) async {
    // TODO: Implement save game to remote storage
    // This could save to Supabase database
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<List<String>> uploadFiles(List<File> files) async {
    try {
      final supabase = Supabase.instance.client;
      List<String> uploadedUrls = [];
      
      for (File file in files) {
        // Read file as bytes
        final bytes = await file.readAsBytes();
        
        // Create a unique filename with timestamp
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final fileExtension = path.extension(file.path);
        final fileName = '${timestamp}_${path.basenameWithoutExtension(file.path)}$fileExtension';
        
        // Upload to Supabase Storage
        final uploadPath = 'game-assets/$fileName';
        
        await supabase.storage
            .from('game-assets') // Make sure this bucket exists in your Supabase project
            .uploadBinary(
              uploadPath,
              bytes,
              fileOptions: FileOptions(
                cacheControl: '3600',
                upsert: false,
              ),
            );
        
        // Get the public URL
        final publicUrl = supabase.storage
            .from('game-assets')
            .getPublicUrl(uploadPath);
        
        uploadedUrls.add(publicUrl);
      }
      
      return uploadedUrls;
    } on StorageException catch (e) {
      throw Exception('Failed to upload files to Supabase Storage: ${e.message}');
    } catch (e) {
      throw Exception('Failed to upload files: ${e.toString()}');
    }
  }
}
