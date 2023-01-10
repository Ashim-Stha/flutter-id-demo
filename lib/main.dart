import 'package:flutter/material.dart';
import 'info.dart';
 void main() => runApp(MaterialApp(
   home:Home(),
 ));


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  List<String> strings = [
    'I am a student',
    'I am from Khairenitar'
  ];

  List<Student> st = [
    Student('Ashimmm','Khairenitar'),
    Student('Chnadrey','Parasi')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title:Column(
          children: [
              Center(
                  child: Text('TRBHUWAN UNIVERSITY',
          style: TextStyle(
            fontWeight:FontWeight.normal,
            fontSize: 15,),
              ),),
            Center(
              child: Text('INSTITUE OF ENGINEERING'),
            ),
            Center(
              child: Text('PASCHIMANCHAL CAMPUS'),
            ),

          ],
        ),

      ),

      body:
         Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           //mainAxisAlignment:MainAxisAlignment.center,
           children: [
             SizedBox(height: 10,),
             Center(
               child: CircleAvatar(
                 backgroundImage: AssetImage('assets/DSC_4671.jpeg'),
                 radius: 100,
               ),
             ),
             SizedBox(height: 10,),
             Container(
               child: Text('ASHIM SHRESTHA',
               style: TextStyle(
                 fontWeight:FontWeight.bold,
                 fontSize: 30,
               ),),
             ),
      SizedBox(height: 10,),
      Container(
        child: Text('PAS077BEI007',
          style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 30,
          ),),),
      SizedBox(height: 10,),
      Container(
        child: Text('Electronics & Information',
          style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 30,
            color: Colors.green[900],
          ),),),
             Card(
               margin: EdgeInsets.all(20),
               color: Colors.amber,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   IconButton(
                     onPressed: (){},

                     icon: Icon(
                       Icons.mail,
                       size: 40,
                     ),

                     ),
                  SizedBox(width: 5,),
                   Text('ashimshrestha2384@gmail.com',
                   style: TextStyle(
                     fontSize: 20,
                   ),),
                 ],
               ),
             ),
             Container(
               child:Text(' Current level:$counter',
               style: TextStyle(
                 fontSize: 30,
                 color: Colors.blue,
                 fontWeight: FontWeight.bold,

               ),),
             ),
             Column(
               children:strings.map((string){
                 return Text(string);

             },).toList(),
             ),
             Column(
               children: st.map((string){
                 return Text('${string.name}-${string.address}');
             },).toList(),


             ),
           ],),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              setState(() {
                counter ++;
              });
            },
            child:Text('+'),
            backgroundColor: Colors.amber,
          ),
          SizedBox(width:250),
          FloatingActionButton(
           onPressed: (){
             setState(() {
               counter --;
             });
           },
            child:Text('-'),
            backgroundColor: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}

