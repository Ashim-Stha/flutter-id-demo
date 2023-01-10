import 'package:flutter/material.dart';
import 'package:ioe/pages/widgets/widget.dart';
class Load extends StatefulWidget {
  const Load({Key? key}) : super(key: key);

  @override
  State<Load> createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: viewer(path: 'assets/test.pdf',),);
  }
}


