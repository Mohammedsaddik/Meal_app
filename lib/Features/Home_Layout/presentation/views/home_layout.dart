import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/Features/Home_Layout/cubit/cubit.dart';
import 'package:meal_app/Features/Home_Layout/cubit/states.dart';
import 'package:meal_app/constants.dart';


class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeScreenStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    leading: InkWell(
                      onTap: (){},
                      child: const Icon(
                        Icons.shopping_cart,
                        size: 30.0,
                        color: Color(0xFF7c7d7e),
                      ),
                    ),
                    actions: [
                      Text(
                        cubit.titles[cubit.currentIndex],
                        style: Styles.textStyle37,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButton: MaterialButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightElevation: 0,
              hoverElevation: 0,
              child: Container(
                width: 73,
                height: 73,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: cubit.currentIndex == 4 ? defaultColor : placeholder,
                ),
                child: Icon(
                  Icons.house,
                  size: 40,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
              onPressed: () {
                cubit.changeBottomNav(4, context);
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              height: 85,
              shape: const CircularNotchedRectangle(),
              color: Colors.white,
              notchMargin: 5,
              elevation: 30,
              child: Container(
                color: Colors.transparent,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        btmbatItem(cubit, context, Icons.menu_open_outlined,
                            'Menu', 0),
                        btmbatItem(cubit, context, Icons.discount_rounded,
                            'Offerss', 1),
                      ],
                    ),
                    // Right Tab bar icons
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        btmbatItem(cubit, context, Icons.person, 'Profile', 2),
                        btmbatItem(cubit, context, Icons.read_more_outlined,
                            'More', 3),
                      ],
                    )
                  ],
                ),
              ),
            ),
            body: cubit.screens[cubit.currentIndex],
          ),
        );
      },
    );
  }

  Widget btmbatItem(HomeCubit cubit, BuildContext context, IconData icon,
      String title, int index) {
    return MaterialButton(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      minWidth: 40,
      onPressed: () {
        cubit.changeBottomNav(index, context);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: cubit.currentIndex == index ? defaultColor : placeholder,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: cubit.currentIndex == index
                      ? defaultColor
                      : secondaryFontColor,
                ),
          ),
        ],
      ),
    );
  }
}
