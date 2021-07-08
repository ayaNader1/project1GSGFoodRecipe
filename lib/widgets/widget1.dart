import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/menu-custom/menu_custom_icons.dart';

class Widget1 extends StatelessWidget {
  double top;
  double right;
  String img;
  String title;
  String subTitle;
  String time;
  double wi;
  double he;
  Widget1(
      {this.img,
      this.right,
      this.top,
      this.title,
      this.subTitle,
      this.time,
      this.wi,
      this.he});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
        ),
        Positioned.fill(
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset('assest/img/Rectanglea.png'))),
        Positioned.fill(
            top: top,
            right: right,
            child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assest/img/$img',
                  width: wi,
                  height: he,
                ))),
        Positioned.fill(
            left: 20,
            top: -140,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 62,
                height: 7,
                color: Color(0xffF3C624).withOpacity(0.78),
              ),
            )),
        Positioned.fill(
            left: 30,
            top: 18,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 144,
                height: 200,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        title ?? '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'PlayfairDisplay',
                            color: Color(0xffffffff)),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        subTitle ?? '',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffB7C3CE)),
                      ),
                    ),
                    // SizedBox(height: 10,),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Color(0xffF3C624),
                            size: 24,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            time ?? '',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            MenuCustom.shape,
                            color: Color(0xffF3C624),
                            size: 22,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Easy',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
