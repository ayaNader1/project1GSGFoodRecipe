import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/menu-custom/menu_custom_icons.dart';
import 'package:food_recipe/model/recipe.dart';

import 'favourites.dart';

class Details extends StatefulWidget {
  Recipe recipe;
  Function function;
  Details(this.recipe,this.function);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(375),
        child: AppBar(
          actions: [
            IconButton(onPressed: (){
              setState(() {

              });
              widget.function(widget.recipe);
            }, icon: Icon(MenuCustom.favourites),color: widget.recipe.isFav?Colors.red:Colors.white,)
          ],
          // elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assest/img/${widget.recipe.img}'),
                    fit: BoxFit.fill)),
          ),
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 30,
                  ),
                  Positioned.fill(
                      top: -140,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 64,
                          height: 7,
                          color: Color(0xffF3C624).withOpacity(0.78),
                        ),
                      )),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' ${widget.recipe.title}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          fontFamily: 'PlayfairDisplay',
                          color: Color(0xff0F375B)),
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 5),
                child: Text(
                  widget.recipe.subtitle,
                  style: TextStyle(fontSize: 13, color: Color(0xffB7C3CE)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Color(0xffF3C624),
                    size: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.recipe.time ?? '',
                    style: TextStyle(fontSize: 14, color: Colors.black),
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
                    width: 10,
                  ),
                  Text(
                    widget.recipe.degree ?? '',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                ' Ingredients ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'PlayfairDisplay',
                    color: Color(0xff0F375B)),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assest/img/shrimp.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assest/img/shrimp copy.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assest/img/shrimp copy 2.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assest/img/shrimp copy 3.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                ' Recipe ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'PlayfairDisplay',
                    color: Color(0xff0F375B)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ' ${widget.recipe.recipe}',
                style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff0F375B)),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
