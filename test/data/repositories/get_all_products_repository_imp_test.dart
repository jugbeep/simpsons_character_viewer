import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:simpsons_character_viewer/core/injection/inject.dart';
import 'package:simpsons_character_viewer/domain/entities/character_response_entity.dart';
import 'package:simpsons_character_viewer/domain/repositories/get_all_characters_repository.dart';

void main() {
  late GetAllCharactersRepository repository;

  setUpAll(() => Inject.init());

  setUp(() {
    repository = GetIt.I.get<GetAllCharactersRepository>();
  });

  test('GetAllCharactersRepository should exists', () {
    expect(repository, isNotNull);
  });

  test('Should return Future<List<CharacterEntity>>', () async {
    final result = await repository();
    expect(result, isA<CharacterResponseEntity>());
  });

  test('Should have 50 items', () async {
    final result = await repository();
    expect(result?.characters.length, 66);
  });
}
