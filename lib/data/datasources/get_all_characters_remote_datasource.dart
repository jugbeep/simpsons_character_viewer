import 'package:simpsons_character_viewer/domain/entities/character_response_entity.dart';

abstract class GetAllCharactersRemoteDataSource {
  Future<CharacterResponseEntity?> call();
}
