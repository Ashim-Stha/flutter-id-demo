import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

//for doc
//import 'dart:async';

class OptButton extends StatelessWidget {

  final String? title;
  final Icon? icon;
  final Color? color;
  final VoidCallback? callback;
  final double size;
  final double buttonheight;
  final double buttonwidth;


  OptButton({required this.title, this.icon, this.color, this.callback,required this.size,
      required this.buttonheight, required this.buttonwidth});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callback!();
    },
        child: Container(
          height: buttonheight,
          width: buttonwidth,
          padding: EdgeInsets.fromLTRB(0, buttonheight/6, 0, 0),
          child: Row(
            children: [
              if(icon!=null)
                icon!,
               Text(title!,
                 style: TextStyle(fontSize: size),
               ),

            ]),
        )

    );
  }
}
//for reading
class viewer extends StatefulWidget {


 final String? path;


 viewer({required this.path});
 void printpath(){print(this.path!);}

  @override
  State<viewer> createState() => _viewerState(this.path!);
}

class _viewerState extends State<viewer> {
  final String path;


  _viewerState(this.path);

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(this.path!);
  }

}

