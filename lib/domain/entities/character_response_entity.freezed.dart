// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterResponseEntity {
  List<CharacterEntity> get characters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterResponseEntityCopyWith<CharacterResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterResponseEntityCopyWith<$Res> {
  factory $CharacterResponseEntityCopyWith(CharacterResponseEntity value,
          $Res Function(CharacterResponseEntity) then) =
      _$CharacterResponseEntityCopyWithImpl<$Res, CharacterResponseEntity>;
  @useResult
  $Res call({List<CharacterEntity> characters});
}

/// @nodoc
class _$CharacterResponseEntityCopyWithImpl<$Res,
        $Val extends CharacterResponseEntity>
    implements $CharacterResponseEntityCopyWith<$Res> {
  _$CharacterResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterResponseEntityCopyWith<$Res>
    implements $CharacterResponseEntityCopyWith<$Res> {
  factory _$$_CharacterResponseEntityCopyWith(_$_CharacterResponseEntity value,
          $Res Function(_$_CharacterResponseEntity) then) =
      __$$_CharacterResponseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CharacterEntity> characters});
}

/// @nodoc
class __$$_CharacterResponseEntityCopyWithImpl<$Res>
    extends _$CharacterResponseEntityCopyWithImpl<$Res,
        _$_CharacterResponseEntity>
    implements _$$_CharacterResponseEntityCopyWith<$Res> {
  __$$_CharacterResponseEntityCopyWithImpl(_$_CharacterResponseEntity _value,
      $Res Function(_$_CharacterResponseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$_CharacterResponseEntity(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
    ));
  }
}

/// @nodoc

class _$_CharacterResponseEntity extends _CharacterResponseEntity {
  const _$_CharacterResponseEntity(
      {required final List<CharacterEntity> characters})
      : _characters = characters,
        super._();

  final List<CharacterEntity> _characters;
  @override
  List<CharacterEntity> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharacterResponseEntity(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterResponseEntity &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterResponseEntityCopyWith<_$_CharacterResponseEntity>
      get copyWith =>
          __$$_CharacterResponseEntityCopyWithImpl<_$_CharacterResponseEntity>(
              this, _$identity);
}

abstract class _CharacterResponseEntity extends CharacterResponseEntity {
  const factory _CharacterResponseEntity(
          {required final List<CharacterEntity> characters}) =
      _$_CharacterResponseEntity;
  const _CharacterResponseEntity._() : super._();

  @override
  List<CharacterEntity> get characters;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterResponseEntityCopyWith<_$_CharacterResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}
