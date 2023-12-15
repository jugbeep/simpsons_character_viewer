import 'package:flutter/material.dart';
import 'package:simpsons_character_viewer/domain/entities/character_entity.dart';
import 'package:simpsons_character_viewer/utilities/url_addresses.dart';

class DetailsPage extends StatelessWidget {
  final CharacterEntity character;

  const DetailsPage({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Scaffold(
        appBar: orientation == Orientation.landscape ? AppBar() : null,
        body: (orientation == Orientation.portrait)
            ? CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: Text(character.text),
                    pinned: true,
                    expandedHeight: 300,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: _simsonwaveImage(),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(character.text),
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  Center(child: _simsonwaveImage()),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        character.text,
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Image _simsonwaveImage() {
    return Image.network(
      UrlAddresses.duckDuckGoImages + character.icon['URL'],
      fit: BoxFit.contain,
      errorBuilder: (c, o, s) => Image.asset('images/Simpsonswave.gif'),
    );
  }
}
