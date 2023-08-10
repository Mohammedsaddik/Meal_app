import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/Core/componnent/default_button.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/Core/utils/app_router.dart';
import 'package:meal_app/Features/Entry_Screen/presentation/views/widget/cuastom-painter.dart';
import 'package:meal_app/Features/Register_Screen/presentation/views/register_view_body.dart';

class EntryViewBody extends StatelessWidget {
  const EntryViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 450,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: CustomPaint(
                              size: const Size(double.infinity, 500),
                              painter: RPSCustomPainter(
                                  const Color(0xB60A0808).withOpacity(0.04)),
                            ),
                          ),
                          CustomPaint(
                            size: const Size(double.infinity, 400),
                            painter: RPSCustomPainter(
                                const Color(0xfffc6414).withOpacity(1.0)),
                          ),
                          CustomPaint(
                            size: const Size(double.infinity, 400),
                            painter: RPSCustomPainter(
                                const Color(0x872E2828).withOpacity(0.1)),
                          ),
                          const Image(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                'assets/images/background objects.png',
                            ),
                          ),
                        ],
                      )),
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                    AssetImage('assets/images/Monkey face.png'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Meal',
                  style: Styles.textStyle34,
                ),
                Text(
                  'Monkey',
                  style: Styles.texttextStyle34,
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              'Food Delivery',
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  Text('Discover the best foods from over 1,000',
                      style: Styles.textStyle12),
                  SizedBox(
                    height: 5,
                  ),
                  Text('restaurants and fast delivery to your doorstep',
                      style: Styles.textStyle12),
                ],
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: DefaultButton(
                onPressed: ()
                {
                  GoRouter.of(context).push(AppRouter.kloginView);
                },
                color: Colors.deepOrange,
                width: double.infinity,
                height: 60.0,
                borderRadius: 30,
                buttonText: 'Login',
                fontSize: 17.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: DefaultButton(
                onPressed: () {
                  navigateTo(context, const RegisterViewBody());
                },
                color: Colors.white,
                width: double.infinity,
                height: 60.0,
                borderRadius: 30,
                buttonText: 'Create an Account',
                borderWidth: 1.0,
                borderColor: Colors.deepOrange,
                fontColor: Colors.deepOrange,
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
