import 'package:flutter/material.dart';
import 'package:meal_app/Features/Home_Screen/model/item_data_modell.dart';
import 'package:meal_app/Features/Home_Screen/presentation/views/widget/FoodItem.dart';
import 'package:meal_app/constant.dart';

class PopularItemsScreen extends StatelessWidget {
  final List<ItemModel> fav;
  const PopularItemsScreen({Key? key, required this.fav}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => FoodItem(
          item: recentItems[index],
        ),
        separatorBuilder: (context, index) => SizedBox(height: 15),
        itemCount: fav.length,
      ),
    );
  }
}
