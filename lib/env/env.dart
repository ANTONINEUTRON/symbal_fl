import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(
  path: '.env', 
  obfuscate: true,

)
abstract class Env {
    @EnviedField(varName: 'DB_URL')
    static String dbUrl = _Env.dbUrl;

    @EnviedField(varName: 'DB_ANON_KEY')
    static String dbAnonKey = _Env.dbAnonKey;
}

