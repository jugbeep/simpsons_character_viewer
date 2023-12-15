import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:simpsons_character_viewer/data/remote/dio_client.dart';
import 'package:simpsons_character_viewer/utilities/url_addresses.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: UrlAddresses.duckDuckGoApi)
abstract class RestClient {
  factory RestClient() {
    final client = DioClient();
    return _RestClient(client.dio);
  }

  @GET('')
  Future<String> getAllCharacters();
}
