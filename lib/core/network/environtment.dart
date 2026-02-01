import 'package:flutter_dotenv/flutter_dotenv.dart';

// final String baseUrl = dotenv.env['base_url']!;

//* untuk localhost
// final String baseUrl = dotenv.env['base_url_local']!;

//* untuk localhost tapi pakai emulator android
final String baseUrl = dotenv.env['base_url_emulator']!;

final String storageKeyUser = dotenv.env['storage_key_user']!;