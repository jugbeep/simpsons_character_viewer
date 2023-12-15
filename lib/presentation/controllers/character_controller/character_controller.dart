import 'package:get_it/get_it.dart';
import 'package:simpsons_character_viewer/domain/entities/character_entity.dart';
import 'package:simpsons_character_viewer/domain/usecases/get_all_characters_usecase/get_all_characters_usecase.dart';
import 'package:mobx/mobx.dart';

part 'character_controller.g.dart';

class CharacterController = _CharacterControllerBase with _$CharacterController;

abstract class _CharacterControllerBase with Store {
  final _getAllCharactersUseCase = GetIt.I.get<GetAllCharactersUseCase>();

  @readonly
  var _isLoading = false;

  @readonly
  List<CharacterEntity>? _characters;

  @observable
  List<CharacterEntity> searchResults = [];

  @action
  loadCharacters() async {
    _isLoading = true;
    try {
      final result = await _getAllCharactersUseCase();
      _characters = result?.characters;
    } catch (e) {
      _isLoading = false;
    }

    _isLoading = false;
  }

  @action
  searchCharacters(String query) async {
    searchResults = _characters
            ?.where((element) =>
                element.text.toLowerCase().contains(query.toLowerCase()))
            .toList() ??
        [];
  }
}
