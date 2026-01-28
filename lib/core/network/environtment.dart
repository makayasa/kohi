import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = true ? dotenv.env['base_url_local']! : dotenv.env['base_url']!;
final String storageKeyUser = dotenv.env['storage_key_user']!;
