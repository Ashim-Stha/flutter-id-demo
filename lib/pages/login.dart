import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String dropdownvalue='Electronic';
  var items =['Electronic','Electrical','mechanical','computer'];
  String dropdownvaluesem='1';
  var itemssem=['1','2','3','4','5','6','7','8'];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png',
          ),
              fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.fromLTRB(20, 150, 10, 2),
                child: Text('Login Here',style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),),
              ),
              //email
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/7,left:20,right:20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),


                    ),
                    hintText: 'email',

                  ),


                ),
              ),
              //faculty choose button
              Container(
                padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                alignment: Alignment.topLeft,
                child: Text('Choose your faculty',
                style: TextStyle(
                  fontSize:18,

                ),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                padding: EdgeInsets.only(left: 10),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(width: 2,color:Colors.deepOrange),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  hint:Text('select your faculty'),
                  focusColor: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(21),


                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              //semester choose button
              Container(
                padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                alignment: Alignment.topLeft,
                child: Text('Choose your semester',
                  style: TextStyle(
                    fontSize:18,

                  ),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                padding: EdgeInsets.only(left: 10),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(width: 2,color:Colors.deepOrange),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  hint:Text('select your semester'),
                  focusColor: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(21),


                  // Initial Value
                  value: dropdownvaluesem,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: itemssem.map((String itemssem) {
                    return DropdownMenuItem(
                      value: itemssem,
                      child: Text(itemssem),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvaluesem = newValue!;
                      print(dropdownvaluesem);

                    }

                    );
                  },
                ),
              ),
              //login button
              Container(
                width: 120,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/');
                  },
                  child: Row(
                      children: [Text('Login',style: TextStyle(fontSize: 22,
                      backgroundColor:
                      Colors.blueAccent),),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward),
                       ]
                  ),
                ),
              )
            ],

          ),
        )
      ),
    );
  }
}
