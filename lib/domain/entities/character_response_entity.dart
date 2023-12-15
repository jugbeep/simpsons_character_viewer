import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simpsons_character_viewer/domain/entities/character_entity.dart';

part 'character_response_entity.freezed.dart';

@freezed
class CharacterResponseEntity with _$CharacterResponseEntity {
  const factory CharacterResponseEntity({
    required List<CharacterEntity> characters,
  }) = _CharacterResponseEntity;
  const CharacterResponseEntity._();

  factory CharacterResponseEntity.fromJson(Map<String, dynamic> json) {
    final data = json['data'];
    if (data != null) {
      return CharacterResponseEntity(
        characters: (json['data'] as List<dynamic>)
            .map((e) => CharacterEntity.fromJson(e))
            .toList(),
      );
    } else {
      return const CharacterResponseEntity(characters: <CharacterEntity>[]);
    }
  }
}
