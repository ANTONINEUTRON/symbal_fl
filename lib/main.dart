import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:symbal_fl/env/env.dart';
import 'package:symbal_fl/features/app/app.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: Env.dbUrl,
    anonKey: Env.dbAnonKey,
  );

  runApp(const MyApp());
}
