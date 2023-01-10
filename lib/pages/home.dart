import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ioe/pages/widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            IconButton(onPressed:(){},
              icon: Icon(Icons.settings),),
            IconButton(onPressed:(){
              print('pressed');
              Navigator.pushNamed(context, '/login');
            },
              icon: Icon(Icons.person),)
          ],
          leading: IconButton(
            onPressed: (){
              //code on pressed
            },
            icon: Icon(Icons.menu),


          ),


        ),


        body: Container(
          width: double.infinity,
          color: Colors.blueGrey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 3,),
                OptButton(title: 'Book', size: 22, buttonheight: 70, buttonwidth: double.infinity,
                  callback: (){Navigator.pushNamed(context, '/booklist');},
                  //icon: Icon(Icons.newspaper),
                ),
                SizedBox(height: 3,),
                OptButton(title: 'Notes', size:22, buttonheight:70, buttonwidth: double.infinity,
                  callback: (){Navigator.pushNamed(context, '/load');
                  },

                ),
                SizedBox(height: 3,),
                OptButton(title: 'Old question', size: 22, buttonheight: 70, buttonwidth: double.infinity),
                SizedBox(height: 3,),
                OptButton(title: 'Reference book', size: 22, buttonheight: 70, buttonwidth: double.infinity),



              ],
            ),
          ),
        )


    );
  }
}
