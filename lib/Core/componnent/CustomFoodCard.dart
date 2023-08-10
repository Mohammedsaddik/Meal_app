import 'package:flutter/material.dart';
import 'package:meal_app/Core/utils/Styls.dart';

class CustomFoodCard extends StatelessWidget {
  const CustomFoodCard({
    Key? key,
    required String name,
    required String rating,
    required String shop,
    required Image image,
  })  : name = name,
        rating = rating,
        shop = shop,
        image = image,
        super(key: key);

  final String name;
  final String rating;
  final String shop;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: image,
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    name,
                    style: Styles.texttextStyle16,
                  ),
                  const SizedBox(
                    height: 1.0,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        rating,
                        style: const TextStyle(color: Colors.orange),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        shop,
                        style: Styles.texttextStyle12,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          '.',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Desserts',
                        style: Styles.texttextStyle12,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
