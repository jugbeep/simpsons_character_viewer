import 'package:simpsons_character_viewer/domain/entities/character_response_entity.dart';

abstract class GetAllCharactersUseCase {
  Future<CharacterResponseEntity?> call();
}
