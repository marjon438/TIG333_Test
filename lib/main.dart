// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(bodyText2: TextStyle(fontSize: 15)),
      ),
      home: MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  double marginBetween = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TIG169'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_right),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondView()));
            },
          )
        ],
      ),
      body: Column(
        children: [
          _image(),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _text(top: marginBetween, text: 'Name'),
                _textField(),
                _checkbox(),
                _iconRow(),
                _buttonRow()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _appbar(String text, context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        height: 53,
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: Text(
            'Title',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ));
  }

  Widget _checkbox() {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(top: marginBetween),
            child: SizedBox(
                width: 20,
                height: 15,
                child: Checkbox(value: false, onChanged: (val) {}))),
        _text(text: 'Contact me', left: 15, top: marginBetween)
      ],
    );
  }

  Widget _text(
      {fontSize, left = 0, top = 0, right = 0, bottom = 0, required text}) {
    return Container(
        margin:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: Text(text, style: TextStyle(fontSize: fontSize)));
  }

  Widget _textField() {
    return Container(
      margin: EdgeInsets.only(top: marginBetween - 15),
      child: (TextField(
          decoration: InputDecoration(hintText: 'Input your name:'))),
    );
  }

  Widget _iconRow() {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(top: marginBetween),
            child: Icon(Icons.person)),
        Container(
            margin: EdgeInsets.only(top: marginBetween, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _text(text: 'Heading'),
                _text(text: 'Subheading', fontSize: 13)
              ],
            ))
      ],
    );
  }

  Widget _buttonRow() {
    return Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlinedButton(onPressed: () {}, child: Text('Cancel')),
          Container(width: 40),
          ElevatedButton(onPressed: () {}, child: Text('Save'))
        ]));
  }

  Widget _image() {
    return Stack(
      alignment: Alignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Image(image: AssetImage('images/nature.jpg')),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.white, Colors.transparent])),
            )),
        Positioned(
          bottom: 20,
          child: Text(
            'Nature at dawn',
            style: TextStyle(fontSize: 36),
          ),
        )
      ],
    );
  }
}

class SecondView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _list(),
    );
  }

  Widget _list() {
    return ListView(
      children: [
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item(),
        _item()
      ],
    );
  }

  Widget _item() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Test'),
    );
  }
}
