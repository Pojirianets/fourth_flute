import 'package:flutter/material.dart';

class PgTwo extends StatefulWidget {
  @override
  _PgTwoState createState() => _PgTwoState();
}

class _PgTwoState extends State<PgTwo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Товар 2'),),
        body: ListView(
          children: [
            Image.asset('images/minibrot.jpg', width: 600, height: 240, fit: BoxFit.cover,),
            Text(" "),
            Text("Подробная информация", softWrap: true, style: TextStyle(fontSize: 26),),
            Text(" "),
            Text('Никто не ожидает увидет здесь МИНИБРОТ! '
                'А ведь его довольно трудно найти, фрактал Мандельброта  '
                'очень сильно приблизили чтобы найти этого маленького клона ', softWrap: true,),
          ],
        )
    );
  }
}