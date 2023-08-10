import 'package:flutter/material.dart';
import 'package:meal_app/Core/componnent/CustomFoodCard.dart';
import 'package:meal_app/Core/utils/Styls.dart';

class OffersViewBody extends StatelessWidget {
  const OffersViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Find discounts,Offers special\nmeals and more!',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=>CustomFoodCard(
              image: Image.asset(
                'assets/images/dessert5.jpg',
                fit: BoxFit.cover,
              ),
              name: 'Dark Chocolate Cake',
              shop: 'Cakes by Tella',
              rating: '4.7',
            ),
            separatorBuilder: (context,index)=>const SizedBox(height: 10,),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
