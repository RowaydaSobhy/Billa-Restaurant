import 'package:billa_resturant/features/home/data/models/mode_of_menu.dart';
import 'package:billa_resturant/features/home/views/widgets/banner_widget.dart';
import 'package:billa_resturant/features/home/views/widgets/food_home_widget.dart';
import 'package:flutter/cupertino.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomBanner(),
        ),
        SliverGrid.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
            itemCount: foods.length,
            itemBuilder: (c,index){
          return FoodHomeWidget(
            index: index,);
            },)
      ],
    );
  }
}
