import 'package:flutter/material.dart';
import 'package:meal_app/Core/componnent/CustomText_field.dart';
import 'package:meal_app/Core/utils/app_router.dart';
import 'package:meal_app/Core/utils/helper.dart';
import 'package:meal_app/Features/Dessert_Screen/presentation/views/dessert_view_body.dart';
import 'widget/CustomMenuCard.dart';
class MenuViewBody extends StatelessWidget {
  const MenuViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
              height: 20,
            ),
            SizedBox(
              height: Helper.getScreenHeight(context) * 0.6,
              width: Helper.getScreenWidth(context),
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: 100.0,
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        color: Colors.deepOrange),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const MenuCard(
                          imageShape: ClipOval(
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/pizza.jpg'),
                              ),
                            ),
                          ),
                          name: 'Food',
                          count: '120',
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        MenuCard(
                          imageShape: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const SizedBox(
                              height: 70,
                              width: 70,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/coffee.jpg'),
                              ),
                            ),
                          ),
                          name: 'Beverage',
                          count: '220',
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        GestureDetector(
                          onTap: (){
                            navigateTo(context, const DessertViewBody());
                          },
                          child: MenuCard(
                            imageShape: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const SizedBox(
                                height: 70,
                                width: 70,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/dessert.jpg'),
                                ),
                              ),
                            ),
                            name: 'Desserts',
                            count: '135',
                          ),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        const MenuCard(
                          imageShape: ClipOval(
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/hamburger.jpg'),
                              ),
                            ),
                          ),
                          name: 'Promotions',
                          count: '25',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}



