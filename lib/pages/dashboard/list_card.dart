import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  const ListCard({super.key});

  @override
  State createState() {
    return _ListCardState();
  }
}

class _ListCardState extends State<ListCard> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      height: 150,
      child: PageView.builder(
        itemCount: 4,
        controller: PageController(viewportFraction: 0.7),
        onPageChanged: (int index) => setState(() => _index = index),
        itemBuilder: (_, i) {
          return Transform.scale(
            scale: i == _index ? 1 : 0.95,
            // change space between card
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(
                'https://placeimg.com/640/480/animals',
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
