import 'package:simpsons_character_viewer/domain/entities/character_response_entity.dart';
import 'package:simpsons_character_viewer/domain/repositories/get_all_characters_repository.dart';
import 'package:simpsons_character_viewer/domain/usecases/get_all_characters_usecase/get_all_characters_usecase.dart';

class GetAllChararctersUseCaseImp implements GetAllCharactersUseCase {
  final GetAllCharactersRepository _repository;

  GetAllChararctersUseCaseImp(this._repository);

  @override
  Future<CharacterResponseEntity?> call() => _repository();
}
