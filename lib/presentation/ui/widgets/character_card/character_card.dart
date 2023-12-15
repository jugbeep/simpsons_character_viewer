import 'package:flutter/material.dart';
import 'package:simpsons_character_viewer/domain/entities/character_entity.dart';

class CharacterCard extends StatelessWidget {
  final CharacterEntity character;
  final int? chosenQuantity;
  final Function() onPressed;

  const CharacterCard({
    Key? key,
    required this.character,
    required this.onPressed,
    this.chosenQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(1),
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 1),
              blurRadius: 2,
            )
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
