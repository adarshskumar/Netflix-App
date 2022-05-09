import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({ Key? key, required this.title }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        Spacer(),
        Icon(Icons.cast, color: Colors.white,),
        kWidth,
        Container(
           color: Colors.blue,
           width: 30,
           height: 30,
        ),
        kWidth,
      ],
    );
  }
}