import 'package:billa_resturant/core/utils/app_color.dart';
import 'package:billa_resturant/features/home/data/models/mode_of_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {

    List<Items> favlist =foods.where((Items) => Items.fav ==true).toList();
    return ListView.builder(
        itemCount: favlist.length,



        itemBuilder: (context,index){

          return   Card(
            child: ListTile(
              title: Text(favlist[index].name,
              style: TextStyle(color: AppColors.orange,
              fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(favlist[index].image),
              trailing: GestureDetector(
                onTap: (){
                  setState(() {
                    favlist[index].fav=false;
                  });

                },

                child: CircleAvatar(
                  backgroundColor: AppColors.orange.withOpacity(0.1),
                  child: Icon(Icons.favorite,
                  color: AppColors.orange)
                ),

              ),


            ),






          );
        });
  }
}
