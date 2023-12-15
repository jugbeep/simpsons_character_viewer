import 'package:flutter/material.dart';
import 'package:simpsons_character_viewer/domain/entities/character_entity.dart';
import 'package:simpsons_character_viewer/presentation/ui/pages/details_page/details_page.dart';
import 'package:simpsons_character_viewer/presentation/ui/widgets/character_card/character_card.dart';

class CharacterList extends StatelessWidget {
  final double listEndingSpace;
  final bool isLoadingCharacters;
  final List<CharacterEntity> characters;
  final List<int>? chosenQuantities;

  const CharacterList({
    required this.isLoadingCharacters,
    required this.characters,
    this.listEndingSpace = 0,
    this.chosenQuantities,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: characters.length + 1,
        itemBuilder: (_, index) {
          if (index == characters.length) {
            return SizedBox(height: listEndingSpace);
          }

          final character = characters[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CharacterCard(
              character: character,
              chosenQuantity: chosenQuantities?[index] ?? 0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsPage(character: character),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
