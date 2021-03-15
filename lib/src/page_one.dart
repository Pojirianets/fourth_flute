import 'package:flutter/material.dart';

class PgOne extends StatefulWidget {
  @override
  _PgOneState createState() => _PgOneState();
}

class _PgOneState extends State<PgOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Товар 1'),),
        body: ListView(
          children: [
            Image.asset('images/water.jpg', width: 600, height: 240, fit: BoxFit.cover,),
            Text(" "),
            Text("Подробная информация", softWrap: true, style: TextStyle(fontSize: 26),),
            Text(" "),
            Text('Это всего лишь Вода. Вы не боялись ее раньше, зачем же бояться ее сейчас? '
                'Очень многие мои друзья в разговорах жалуются, что им не дает работать вода  '
                'или говорят, что накатила вода – вроде все ясно, что делать, а работа не идет. '
                'Чтобы тёртый картофель не темнел, его нужно натирать поочерёдно с луком. '
                'Вода – лакомство для искушенных. Вода. Так и должно быть? Или я не за тех голосовал? '
                'А вот «Адов» – это Вода наоборот.', softWrap: true,),
          ],
        )
    );
  }
}