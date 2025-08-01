# File Upload Implementation Guide

## Overview

The file upload functionality has been successfully implemented with the following components:

### 1. **Supabase Storage Integration** ✅
- **Location**: `lib/features/game/data/datasources/game_generator_remote.dart`
- **Package**: `supabase_flutter: ^2.9.1` (already installed)
- **Path Package**: `path: ^1.9.0` (newly added)

### 2. **File Upload Method**
```dart
Future<List<String>> uploadFiles(List<File> files) async {
  final supabase = Supabase.instance.client;
  List<String> uploadedUrls = [];
  
  for (File file in files) {
    // Read file as bytes
    final bytes = await file.readAsBytes();
    
    // Create unique filename with timestamp
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final fileExtension = path.extension(file.path);
    final fileName = '${timestamp}_${path.basenameWithoutExtension(file.path)}$fileExtension';
    
    // Upload to Supabase Storage
    final uploadPath = 'game-assets/$fileName';
    
    await supabase.storage
        .from('game-assets')
        .uploadBinary(uploadPath, bytes, fileOptions: FileOptions(
          cacheControl: '3600',
          upsert: false,
        ));
    
    // Get public URL
    final publicUrl = supabase.storage
        .from('game-assets')
        .getPublicUrl(uploadPath);
    
    uploadedUrls.add(publicUrl);
  }
  
  return uploadedUrls;
}
```

### 3. **UI Integration** ✅
- **Location**: `lib/features/game/ui/widgets/chat_input_field.dart`
- **Features**:
  - File picker with support for JPG, PNG, GIF, SVG images
  - Horizontal scrolling file preview
  - Individual file removal
  - Clear all files option
  - Responsive design with constraints

### 4. **Clean Architecture** ✅
- **Repository**: `SupabaseGameGeneration` delegates to datasource
- **Datasource**: `GameGeneratorRemote` handles all API operations
- **Error Handling**: Comprehensive error management with Dio and Supabase exceptions

## Setup Requirements

### Supabase Storage Bucket Setup
You need to create a storage bucket named `game-assets` in your Supabase project:

1. **Go to your Supabase Dashboard**
2. **Navigate to Storage**
3. **Create a new bucket**:
   - Name: `game-assets`
   - Public: `true` (for public URLs)
   - File size limit: Set as needed (e.g., 50MB)
   - Allowed MIME types: `image/jpeg`, `image/png`, `image/gif`, `image/svg+xml`

### RLS (Row Level Security) Policies
```sql
-- Allow authenticated users to insert files
CREATE POLICY "Allow authenticated users to upload game assets"
ON storage.objects FOR INSERT
TO authenticated
WITH CHECK (bucket_id = 'game-assets');

-- Allow public access to read files
CREATE POLICY "Allow public access to game assets"
ON storage.objects FOR SELECT
TO public
USING (bucket_id = 'game-assets');
```

## Usage Flow

1. **User selects files** → `ChatInputField` widget
2. **Files are stored locally** → `_selectedFiles` list
3. **User sends message** → `CreateGameCubit.createGame()`
4. **Files are uploaded** → `GameGeneratorRemote.uploadFiles()`
5. **URLs are returned** → Used in game generation API call
6. **Files are cleared** → UI resets for next interaction

## Supported File Types
- **JPG/JPEG**: Standard image format
- **PNG**: Lossless image format
- **GIF**: Animated images
- **SVG**: Vector graphics

## Error Handling
- **Storage exceptions**: Specific Supabase storage error handling
- **Network errors**: Dio timeout and connection handling
- **File picker errors**: User-friendly error messages via AppCubit
- **File validation**: Extension and type checking

## File Naming Convention
Files are uploaded with the following naming pattern:
```
{timestamp}_{originalBasename}.{extension}
```

Example: `1704067200000_my_image.png`

## Current Implementation Status
- ✅ File selection UI with preview
- ✅ File upload to Supabase Storage
- ✅ Error handling and user feedback
- ✅ Clean architecture implementation
- ✅ Integration with game generation flow
- ⚠️ **Requires**: Supabase storage bucket setup (`game-assets`)

## Next Steps
1. Create the `game-assets` bucket in your Supabase project
2. Configure RLS policies for proper access control
3. Test file upload functionality
4. Optionally add file size limits and validation
