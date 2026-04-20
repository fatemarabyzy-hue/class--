import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                HorizontalRowWidget(),
                Padding(padding: EdgeInsets.all(16.0),),
                ColumnRowWidget(),
              ],
            ),

          ),
        ),
      ),





    );



  }
}

class ColumnRowWidget extends StatelessWidget {
  const ColumnRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children:<Widget> [
            Container(
              color: Colors.yellow,
              height: 60.0,
              width: 60.0,
            ),
            Padding(padding: EdgeInsets.all(16.0),),
            Container(
              color: Colors.amber,
              height:40.0,
              width: 40.0,

            ),
            Padding(padding: EdgeInsets.all(16.0),),
            Container(
              color: Colors.brown,
              height:20.0,
              width: 20.0,

            ),
            Divider(),
            Row(
              children: [

              ],
            ),

            StackCircleWidget(),
            Divider(),
            Text("End of the Line"),


          ],





        ),
      ],




    );
  }
}

class StackCircleWidget extends StatelessWidget {
  const StackCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget> [
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 100.0,
          child: Stack(
            children:<Widget> [
              Container(
                color: Colors.yellow,
                height:100.0,
                width: 100.0,

              ),
              Container(
                color: Colors.amber,
                height:60.0,
                width: 60.0,

              ),
              Container(
                color: Colors.brown,
                height:40.0,
                width: 40.0,

              ),
            ],
          ),
        ),
      ],


    );
  }
}

class HorizontalRowWidget extends StatelessWidget {
  const HorizontalRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Container(
        color: Colors.yellow,
        height: 40.0,
        width: 40.0,
      ),
        Padding(padding: EdgeInsets.all(16.0),),
        Expanded(
          child: Container(
            color: Colors.amber,
            height: 40.0,
            width: 40.0,
          ),



        ),
        const Padding(padding: EdgeInsets.all(16.0),),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,
        ),
      ],
    );
  }
}
