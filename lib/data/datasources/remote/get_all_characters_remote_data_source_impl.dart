import 'dart:convert';

import 'package:simpsons_character_viewer/data/datasources/get_all_characters_remote_datasource.dart';
import 'package:simpsons_character_viewer/data/remote/rest_client.dart';
import 'package:simpsons_character_viewer/domain/entities/character_entity.dart';
import 'package:simpsons_character_viewer/domain/entities/character_response_entity.dart';

class GetAllCharactersRemoteDataSourceImp
    implements GetAllCharactersRemoteDataSource {
  GetAllCharactersRemoteDataSourceImp(this.client);
  final RestClient client;
  @override
  Future<CharacterResponseEntity?> call() async {
    try {
      final result = await client.getAllCharacters();

      final Map<String, dynamic> parsedResult = jsonDecode(result);
      return CharacterResponseEntity(
        characters: (parsedResult['RelatedTopics'] as List<dynamic>)
            .map((e) => CharacterEntity.fromJson(e))
            .toList(),
      );
    } catch (e) {
      return Future.value(const CharacterResponseEntity(characters: []));
    }
  }
}
