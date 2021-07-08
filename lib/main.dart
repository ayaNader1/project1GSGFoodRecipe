import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe/menu-custom/menu_custom_icons.dart';
import 'package:food_recipe/model/recipe.dart';
import 'package:food_recipe/pages/details.dart';
import 'package:food_recipe/pages/favourites.dart';
import 'package:food_recipe/widgets/CategoriesWidget.dart';
import 'package:food_recipe/widgets/popularWidget.dart';
import 'package:food_recipe/widgets/widget1.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'data/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              //To support the following, you need to use the first initialization method
              button: TextStyle(fontSize: 45.sp)),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Function function;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assest/img/Rectanglea2.png'),
                  fit: BoxFit.fill
                )
              ),
              accountName: Text('Aya'),
              accountEmail: Text('aya@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  'assest/img/pizza.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                setState(() {});
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Home'),
            ),
            ListTile(
              onTap: (){
                setState(() {});
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fav(function)),
                );
              },
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Favorite'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(MenuCustom.search),
            color: Color(0xffB7C3CE),
          ),
          IconButton(
            onPressed: () {
              setState(() {});
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Fav(function)),
              );
            },
            icon: Icon(MenuCustom.favourites),
            color: Color(0xffB7C3CE),
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(MenuCustom.menu),
              color: Color(0xffB7C3CE),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Discover',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38.sp,
                    fontFamily: 'PlayfairDisplay',
                    color: Color(0xff0F375B)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: ImageSlideshow(
                width: double.infinity,
                height: 280,
                initialPage: 0,
                indicatorColor: Color(0xffF3C624),
                indicatorBackgroundColor: Colors.grey,
                children: [
                  Widget1(
                    top: -35.h,
                    right: -70.w,
                    img: 'dumplings.png',
                    title: 'Potstickers (Chinese Dumplings)',
                    subTitle:
                        'An authentic potsticker recipe using ground beef and ground shrimp',
                    time: '25min',
                  ),
                  Widget1(
                    top: -25,
                    right: -20.w,
                    img: 'pasta.png',
                    title: 'Pasta colored farfalle salad',
                    subTitle:
                        'A delicious dish created from the fresh bounty of my garden.',
                    time: '15min',
                  ),
                  Widget1(
                    top: -80.h,
                    right: -20.w,
                    img: 'pizza.png',
                    title: 'Homemade Pizza & Pizza Dough',
                    subTitle:
                        'This is a classic homemade pizza recipe, including a pizza dough recipe, topping suggestions, and step-by-step ',
                    time: '30min',
                    wi: 220,
                    he: 220,
                  ),
                ],
                onPageChanged: (value) {
                  // print('Page changed: $value');
                },
                autoPlayInterval: 3000,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Categories',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26.sp,
                    fontFamily: 'PlayfairDisplay',
                    color: Color(0xff0F375B)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoriesWidget(img: 'RectangleC.png',title: 'Pizza',),
                    CategoriesWidget(img: 'Rectangle-C1.png',title: 'Pasta',),
                    CategoriesWidget(img: 'Rectangle-C2.png',title: 'Steak',),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Popular recipes ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26.sp,
                    fontFamily: 'PlayfairDisplay',
                    color: Color(0xff0F375B)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: meals.map((e){
                return PopularWidget(e);
              }).toList(),

            )
          ],
        ),
      ),
    );
  }
}


