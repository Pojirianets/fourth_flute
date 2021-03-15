// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'src/page_one.dart';
import 'src/page_two.dart';
import 'src/page_three.dart';


void main() {
  runApp(FourthFlute());
}

final demos = [
  Demo(
    name: 'Page One',
    route: '/page_one',
    builder: (context) => PgOne(),
  ),
  Demo(
    name: 'Page Two',
    route: '/page_two',
    builder: (context) => PgTwo(),
  ),
  Demo(
    name: 'Page Three',
    route: '/page_three',
    builder: (context) => PgThree(),
  ),
];

class FourthFlute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Микросписок',
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: Map.fromEntries(demos.map((d) => MapEntry(d.route, d.builder))),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Микросписок'),
      ),
      body: ListView(
        children: [...demos.map((d) => DemoTile(d))],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final Demo demo;

  DemoTile(this.demo);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo.name),
      onTap: () {
        Navigator.pushNamed(context, demo.route);
      },
    );
  }
}

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Demo({this.name, this.route, this.builder});
}
