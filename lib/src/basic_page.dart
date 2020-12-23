import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _imageCreate(),
            _createTitle(),
            _actions(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Widget _imageCreate() => Container(
        width: double.infinity,
        child: Image(
          image: NetworkImage(
              'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      );
  Widget _createTitle() => SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lago con un puente', style: titleStyle),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'Algún texto',
                      style: subtitleStyle,
                    )
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.red,
                size: 30.0,
              ),
              Text(
                '41',
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ),
      );

  Widget _actions() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _action(Icons.call, 'CALL'),
          _action(Icons.near_me, 'ROUTE'),
          _action(Icons.share, 'Share'),
        ],
      );

  Widget _action(IconData icon, String text) => Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
            size: 40.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 15.0, color: Colors.blue),
          )
        ],
      );

  Widget _createText() => SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text(
              'lkasjdhasdhaskjdhkashdksa',
              textAlign: TextAlign.justify,
            )),
      );
}
