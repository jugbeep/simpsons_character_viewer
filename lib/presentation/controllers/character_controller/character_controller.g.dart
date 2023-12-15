// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharacterController on _CharacterControllerBase, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_CharacterControllerBase._isLoading', context: context);

  bool get isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  bool get _isLoading => isLoading;

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_charactersAtom =
      Atom(name: '_CharacterControllerBase._characters', context: context);

  List<CharacterEntity>? get characters {
    _$_charactersAtom.reportRead();
    return super._characters;
  }

  @override
  List<CharacterEntity>? get _characters => characters;

  @override
  set _characters(List<CharacterEntity>? value) {
    _$_charactersAtom.reportWrite(value, super._characters, () {
      super._characters = value;
    });
  }

  late final _$searchResultsAtom =
      Atom(name: '_CharacterControllerBase.searchResults', context: context);

  @override
  List<CharacterEntity> get searchResults {
    _$searchResultsAtom.reportRead();
    return super.searchResults;
  }

  @override
  set searchResults(List<CharacterEntity> value) {
    _$searchResultsAtom.reportWrite(value, super.searchResults, () {
      super.searchResults = value;
    });
  }

  late final _$loadCharactersAsyncAction =
      AsyncAction('_CharacterControllerBase.loadCharacters', context: context);

  @override
  Future loadCharacters() {
    return _$loadCharactersAsyncAction.run(() => super.loadCharacters());
  }

  late final _$searchCharactersAsyncAction = AsyncAction(
      '_CharacterControllerBase.searchCharacters',
      context: context);

  @override
  Future searchCharacters(String query) {
    return _$searchCharactersAsyncAction
        .run(() => super.searchCharacters(query));
  }

  @override
  String toString() {
    return '''
searchResults: ${searchResults}
    ''';
  }
}
