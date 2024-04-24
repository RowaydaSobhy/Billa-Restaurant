import 'package:billa_resturant/core/utils/app_color.dart';
import 'package:billa_resturant/features/home/data/models/mode_of_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodHomeWidget extends StatefulWidget {
  const FoodHomeWidget({super.key, required this.index});
final  int index;
  @override
  State<FoodHomeWidget> createState() => _FoodHomeWidgetState();
}

class _FoodHomeWidgetState extends State<FoodHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
          ),
          child:Column(
            children: [
              Image.asset(foods[widget.index].image
              ,height: 96,
              width: 96,),
              Text(foods[widget.index].name),
              Text(foods[widget.index].price,
              style: TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 11,)
            ],

          ) ,
        ),
        Padding(padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10
        ),
          child:GestureDetector(
    onTap: (){
      setState(() {
        foods[widget.index].fav=!foods[widget.index].fav;
      });
    },
          child: CircleAvatar(
         backgroundColor: AppColors.orange.withOpacity(0.1),
            child:Icon(
              foods[widget.index].fav==true?
                  Icons.favorite: Icons.favorite_border,
              color: AppColors.orange,
            ) ,
          ),
        )

        )
      ],

    );
  }
}
