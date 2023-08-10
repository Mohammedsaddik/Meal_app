import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_app/Core/componnent/default_button.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/constants.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('assets/images/pizza4.jpg'),
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20.0),
            child: Material(
              elevation: 20,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(FontAwesomeIcons.chevronLeft,
                        size: 20,
                        color: Theme.of(context).scaffoldBackgroundColor),
                  ),
                  const Icon(Icons.shopping_cart),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35)),
                          color: Colors.white),
                      height: size.height * 0.6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              'Tandoori Chicken Pizza',
                              style: Styles.textStyle22,
                              maxLines: 1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    RatingBar.builder(
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: defaultColor,
                                        size: 10,
                                      ),
                                      onRatingUpdate: (rating) => print(rating),
                                      itemCount: 5,
                                      itemPadding:
                                          const EdgeInsetsDirectional.only(
                                              end: 1.0),
                                      allowHalfRating: true,
                                      direction: Axis.horizontal,
                                      maxRating: 1,
                                      ignoreGestures: true,
                                      itemSize: 30.0,
                                      initialRating: 5.5,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '5 Star Ratings',
                                      style: Styles.textStyle11.copyWith(
                                        color: defaultColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'LE.',
                                          style: Styles.textStyle30,
                                        ),
                                        Text(
                                          '750',
                                          style: Styles.textStyle30,
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsetsDirectional.only(start: 12),
                                      child: Text(
                                        '/ per Portion',
                                        style: Styles.textStyle14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Description',
                              style: Styles.textStyle18,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada',
                              style: Styles.textStyle14.copyWith(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'pieces',
                                  style: Styles.texttextStyle14.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            elevation: 10,
                                            child: DefaultButton(
                                              onPressed: () {},
                                              buttonText: '- ',
                                              borderWidth: 1,
                                              width: 20,
                                              borderRadius: 20.0,
                                              height: 35,
                                              fontSize: 16,
                                              color: Colors.deepOrange,
                                              borderColor: Colors.deepOrange,
                                              fontColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: DefaultButton(
                                            onPressed: () {},
                                            buttonText: '2 ',
                                            borderWidth: 1,
                                            width: 20,
                                            borderRadius: 20.0,
                                            height: 35,
                                            fontSize: 16,
                                            color: Colors.white,
                                            borderColor: Colors.deepOrange,
                                            fontColor: Colors.deepOrange,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            elevation: 10,
                                            child: DefaultButton(
                                              onPressed: () {},
                                              buttonText: '+ ',
                                              borderWidth: 1,
                                              width: 20,
                                              borderRadius: 20.0,
                                              height: 35,
                                              fontSize: 16,
                                              color: Colors.deepOrange,
                                              borderColor: Colors.deepOrange,
                                              fontColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Stack(
                              alignment: AlignmentDirectional.centerEnd,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 200),
                                  child: Container(
                                    height: 180,
                                    width: 300.0,
                                    decoration: const ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30),
                                          ),
                                        ),
                                        color: Colors.deepOrange),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      end: 15, start: 35),
                                  child: Material(
                                    elevation: 5.0,
                                    borderRadius:
                                        const BorderRadiusDirectional.only(
                                            topStart: Radius.circular(55),
                                            bottomStart: Radius.circular(55),
                                            topEnd: Radius.circular(15),
                                            bottomEnd: Radius.circular(15)),
                                    color: Colors.white,
                                    child: SizedBox(
                                      height: 150,
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            'Total Price',
                                            style: Styles.textStyle12,
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 87.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'LE.',
                                                  style: Styles.textStyle30
                                                      .copyWith(fontSize: 25),
                                                ),
                                                Text(
                                                  '750',
                                                  style: Styles.textStyle30
                                                      .copyWith(fontSize: 25),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0,
                                                left: 35.0,
                                                right: 35.0),
                                            child: DefaultButton(
                                              borderRadius: 30,
                                              width: double.infinity,
                                              height: 55,
                                              onPressed: () {},
                                              fontSize: 14,
                                              buttonText: 'Add to Cart',
                                              icon: Icons.shopping_cart,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(50),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  elevation: 10,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Container(
                                    width: 53,
                                    height: 53,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.deepOrange,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
