import 'package:billa_resturant/core/utils/app_color.dart';
import 'package:billa_resturant/features/favourites/view/favorite_screen.dart';
import 'package:billa_resturant/features/home/views/widgets/home_body_widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;


  List<Widget> screens=[
    const HomeBody(),
    const FavoriteScreen()
  ];
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
appBar: AppBar(
  backgroundColor: AppColors.scaffoldColor,
centerTitle:true ,
title: Image.asset("assets/images/logo.jpg",height: MediaQuery.of(context).size.height*0.04,
),

),
drawer: const Drawer(
  child: Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Icon(Icons.person),
                radius: 20,
              ),
            ),SizedBox(
              width: 20,
            ),
            Text("Rowayda Sobhy",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),)
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text("Menu",style:  TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text("About Us",style:  TextStyle(
                fontWeight: FontWeight.bold
            )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text("Call Us",style:  TextStyle(
                fontWeight: FontWeight.bold
            )),
          ],
        )
      ],
    ),
  ),
),
bottomNavigationBar: BottomNavigationBar(
  onTap: (bottomIndex) {

print(bottomIndex.toString());
    setState(() {
      currentIndex=bottomIndex;

    });
  },
  currentIndex: currentIndex,
  selectedItemColor:Colors.blue,
  unselectedItemColor: Colors.grey,
  items: [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home),
    label: "Home"),
  const BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: "Favorite"),

],
),

body: screens[currentIndex],


    );
  }
}


