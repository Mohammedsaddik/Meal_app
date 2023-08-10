import 'package:flutter/material.dart';
import 'package:meal_app/Core/componnent/CustomFoodCard.dart';
import 'package:meal_app/Core/componnent/CustomText_field.dart';
import 'package:meal_app/Core/utils/Styls.dart';

class DessertViewBody extends StatelessWidget {
  const DessertViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: Text(
              'Desserts',
              style: Styles.textStyle30,
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.deepOrange),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextField(
                validator: (value) {
                  return;
                },
                prefixIcon: Icons.search,
                radius: 50.0,
                keyboardType: TextInputType.text,
                hintText: 'Search Food',
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => CustomFoodCard(
                  image: Image.asset(
                    'assets/images/dessert2.jpg',
                    fit: BoxFit.cover,
                  ),
                  name: 'Dark Chocolate Cake',
                  shop: 'Cakes by Tella',
                  rating: '4.7',
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10.0,
                ),
                itemCount: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


