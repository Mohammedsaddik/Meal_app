import 'package:flutter/material.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/Core/utils/app_router.dart';
import 'package:meal_app/Features/ItemDetailsScreen/presentation/views/ItemDetailsViewBody.dart';

class RecentItemsItem extends StatelessWidget {
  const RecentItemsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, const ItemDetailsViewBody());
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const SizedBox(
              width: 100.0,
              height: 100.0,
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/coffee.jpg',
                  )),
            ),
          ),
          const SizedBox(
            width: 22,
          ),
          Expanded(
            child: SizedBox(
              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Barita',
                    style: Styles.textStyle18,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Cafe',
                        style: Styles.textStyle15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          '.',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Coffee',
                        style: Styles.textStyle15,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '4.9',
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '(124) Ratings',
                        style: Styles.textStyle15,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
