import 'package:flutter/material.dart';
import 'package:ioe/pages/widgets/widget.dart';
class BookList extends StatefulWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  @override
  Widget build(BuildContext context) {
    var arrBooknames =['computer graphics','advance electronics','applied math'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Booklist'),
      ),
      body: Container(
        child: ListView.separated(itemBuilder: (context ,index){
          return Container(
            child: OptButton(title: arrBooknames[index],buttonheight: 70,buttonwidth: double.infinity,size: 22,
            callback: (){
              Navigator.pushNamed(context, '/read');
            },),
          );
        },
            separatorBuilder: (context ,index){
          return Divider(thickness: 2,);},
            itemCount: arrBooknames.length)
        )
      );

  }
}
