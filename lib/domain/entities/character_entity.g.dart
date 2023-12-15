// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterEntity _$CharacterEntityFromJson(Map<String, dynamic> json) =>
    CharacterEntity(
      firstUrl: json['FirstURL'] as String,
      icon: json['Icon'] as Map<String, dynamic>,
      result: json['Result'] as String,
      text: json['Text'] as String,
    );

Map<String, dynamic> _$CharacterEntityToJson(CharacterEntity instance) =>
    <String, dynamic>{
      'FirstURL': instance.firstUrl,
      'Icon': instance.icon,
      'Result': instance.result,
      'Text': instance.text,
    };
