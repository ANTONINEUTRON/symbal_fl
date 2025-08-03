import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:symbal_fl/env/env.dart';
import 'package:symbal_fl/features/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Supabase.initialize(
    url: Env.dbUrl,
    anonKey: Env.dbAnonKey,
  );
  
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );

  runApp(const MyApp());
}
