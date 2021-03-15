import 'package:flutter/material.dart';

class PgThree extends StatefulWidget {
  @override
  _PgThreeState createState() => _PgThreeState();
}

class _PgThreeState extends State<PgThree> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Товар 3'),),
      body: ListView(
       children: [
       Image.asset('images/food.jpg', width: 600, height: 240, fit: BoxFit.cover,),
         Text(" "),
         Text("Подробная информация", softWrap: true, style: TextStyle(fontSize: 26),),
         Text(" "),
         Text('Драники — это оладьи, которые готовят из тёртого картофеля, лука, специй и иногда яиц. '
             'Лучше всего использовать крахмалистые сорта картофеля. Как  '
             'правило, у них светло-коричневая кожура и беловатая мякоть. '
             'Чтобы тёртый картофель не темнел, его нужно натирать поочерёдно с луком. '
             'Вместо лука можно добавить 1–2 столовые ложки сметаны. Она не '
             'позволит картошке потемнеть, а также сделает драники более воздушными.', softWrap: true,),
     ],
      )
    );
  }
}
