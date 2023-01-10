import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:ioe/pages/widgets/widget.dart';
class Read extends StatefulWidget {


  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pdf Viewer'),


      ),
      body:Container(
        child: viewer(path: 'assets/test.pdf',)
      ),


    );
  }
}

