import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:simpsons_character_viewer/presentation/controllers/character_controller/character_controller.dart';
import 'package:simpsons_character_viewer/presentation/ui/widgets/character_list.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _characterController = GetIt.I.get<CharacterController>();

    _characterController.loadCharacters();

    return Scaffold(
      appBar: AppBar(title: const Text('Simpsons Characters')),
      body: Observer(builder: (_) {
        if (_characterController.isLoading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                onChanged: (v) {
                  _characterController.searchCharacters(v);
                },
                decoration: const InputDecoration(
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: CharacterList(
                isLoadingCharacters: _characterController.isLoading,
                characters: _characterController.searchResults.isEmpty
                    ? _characterController.characters ?? []
                    : _characterController.searchResults,
                listEndingSpace: 66,
              ),
            ),
          ],
        );
      }),
    );
  }
}
