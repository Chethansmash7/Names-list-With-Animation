import "package:flutter/material.dart";
import 'character.dart';


class CharacterDetail extends StatelessWidget {
  final Character _character;

  CharacterDetail(this._character);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_character.name),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              child: Hero(
                tag: "pic" + _character.id.toString(),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(_character.pic),
                ),
              ),
            ),
            Text(_character.name,
              style: TextStyle(
                  fontSize: 22
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(_character.description),
            ),
          ],
        ),
      ),
    );
  }
}