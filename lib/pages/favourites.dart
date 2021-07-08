import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/widgets/popularWidget.dart';

class Fav extends StatelessWidget{
  Function function;
  Fav(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assest/img/Rectanglea.png'),
                  fit: BoxFit.fill)),
        ),
        elevation: 0,
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
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView.builder(
            itemCount: meals.where((element) => element.isFav).length,
            itemBuilder: (context, index) {
              return PopularWidget(
                  meals.where((element) => element.isFav).toList()[index]);
            }),
      )
    );
  }

}