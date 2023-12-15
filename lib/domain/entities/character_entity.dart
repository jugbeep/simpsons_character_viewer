import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_entity.g.dart';

@JsonSerializable()
@immutable
class CharacterEntity {
  const CharacterEntity({
    required this.firstUrl,
    required this.icon,
    required this.result,
    required this.text,
  });

  @JsonKey(name: 'FirstURL')
  final String firstUrl;

  @JsonKey(name: 'Icon')
  final Map<String, dynamic> icon;

  @JsonKey(name: 'Result')
  final String result;

  @JsonKey(name: 'Text')
  final String text;

  factory CharacterEntity.fromJson(Map<String, dynamic> json) =>
      _$CharacterEntityFromJson(json);
}
