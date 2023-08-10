import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Core/componnent/CustomText_field.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/Features/Home_Layout/cubit/cubit.dart';
import 'package:meal_app/Features/Home_Layout/cubit/states.dart';
import 'package:meal_app/Features/Home_Screen/presentation/views/widget/Custom_RecentItemsItem.dart';
import 'package:meal_app/Features/Home_Screen/presentation/views/widget/FoodItem.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeScreenStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () {
            return HomeCubit.get(context).getItems();
          },
          child: Scaffold(
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    CustomTextField(
                      validator: (value) {
                        return;
                      },
                      prefixIcon: Icons.search,
                      radius: 50.0,
                      keyboardType: TextInputType.text,
                      hintText: 'Search Food',
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Most Popular',
                          style: Styles.textStyle20,
                        ),
                        Text(
                          'View All',
                          style: Styles.texttextStyle14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 245.0,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => FoodItem(
                          item: HomeCubit.get(context).fav[index],
                          width: 250.0,
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 15,
                        ),
                        itemCount: HomeCubit.get(context).fav.length < 4
                            ? HomeCubit.get(context).fav.length
                            : 4,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Recent Items',
                          style: Styles.textStyle20,
                        ),
                        Text(
                          'View All',
                          style: Styles.texttextStyle14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 238.0,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) =>
                            const RecentItemsItem(),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 15.0,
                        ),
                        itemCount: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
