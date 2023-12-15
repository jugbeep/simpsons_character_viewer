import 'package:flutter_test/flutter_test.dart';
import 'package:simpsons_character_viewer/core/injection/inject.dart';
import 'package:simpsons_character_viewer/presentation/controllers/character_controller/character_controller.dart';

void main() {
  late final CharacterController controller;

  setUpAll(() {
    Inject.init();
    controller = CharacterController();
  });

  test('CharacterController should exist', () {
    expect(controller, isNotNull);
  });
  test('Should be null', () {
    expect(controller.characters, isNull);
  });
  test('Should be false', () {
    expect(controller.isLoading, false);
  });

  test('Should not be null', () async {
    await controller.loadCharacters();
    expect(controller.characters, isNotNull);
  });
}
