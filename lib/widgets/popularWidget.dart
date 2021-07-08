import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/model/recipe.dart';
import 'package:food_recipe/pages/details.dart';

import '../menu-custom/menu_custom_icons.dart';

class PopularWidget extends StatefulWidget{
  Recipe recipe;
  PopularWidget(this.recipe);

  @override
  _PopularWidgetState createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  toggleProduct(Recipe recipe) {
    setState(() {
      int index = meals.indexOf(recipe);
      meals[index].isFav = !meals[index].isFav;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shadowColor: Colors.transparent
      ),
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Details(widget.recipe,toggleProduct)),
        );
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assest/img/${widget.recipe.img}'),
                        fit: BoxFit.cover,
                      )
                  ),
              ),
              Positioned.fill(
              child: Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assest/img/Gradien.png'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 25,
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
              Positioned.fill(child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ' ${widget.recipe.title}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'PlayfairDisplay',
                      color: Color(0xff0F375B)),
                ),
              ))
            ],
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(right: 20,left: 5),
            child: Text(
                widget.recipe.subtitle
            ,style: TextStyle(fontSize: 13, color: Color(0xffB7C3CE)),),
          ),
          SizedBox(height: 15,),
          Row(
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
                width: 5,
              ),
              Text(
                widget.recipe.degree ?? '',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(color: Color(0xffB7C3CE),
          width: double.infinity, height: 1,
            margin: EdgeInsets.only(right: 20),
          ),
          SizedBox(height: 15,),

        ],
      ),
    );
  }
}