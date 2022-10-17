import 'package:chess/screen/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: chess(),
  ));
}

class chess extends StatefulWidget {
  const chess({super.key});

  @override
  State<chess> createState() => _chessState();
}

class _chessState extends State<chess> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
