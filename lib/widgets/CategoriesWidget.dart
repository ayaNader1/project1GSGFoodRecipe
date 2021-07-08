import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  String img;
  String title;
  CategoriesWidget({this.title, this.img});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Image.asset('assest/img/$img'),
          Positioned.fill(
            bottom: 20,
              left: 20,
              child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title??'',style: TextStyle(
              color: Colors.white,fontSize: 16
            ),),
          ))
        ],
      ),
    );
  }
}
