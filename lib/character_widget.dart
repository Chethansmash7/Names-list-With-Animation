import "package:flutter/material.dart";
import 'character.dart';
import 'character_detail.dart';

class CharacterWidget extends StatelessWidget {
  final Character _character;

  CharacterWidget(this._character);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterDetail(_character))),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Hero(
              tag: "pic" + _character.id.toString(),
              child: CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(_character.pic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_character.name),
            ),

          ],
        ),
      ),
    );
  }
}