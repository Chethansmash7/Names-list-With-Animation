import 'package:flutter/material.dart';
import 'values.dart';
import 'character.dart';
import 'character_widget.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  final List<Character> _characterList = [
    Character(1, name1, image1, description1),
    Character(2, name2, image2, description2),
    Character(3, name3, image3, description3),
    Character(4, name4, image4, description4),
    Character(5, name5, image5, description5),
    Character(6, name6, image6, description6),
    Character(7, name7, image7, description7),
    Character(8, name8, image8, description8),
    Character(9, name9, image9, description9),
    Character(10, name10, image10, description10),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Marvel Characters'),
        ),
        body: ListView(
          children: _characterList.map((ch) => CharacterWidget(ch)).toList(),
        ),
      ),
    );
  }
}
