import 'package:flutter/material.dart';
import 'package:meal_app/Core/componnent/CustomText_field.dart';
import 'package:meal_app/Core/componnent/default_button.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/constants.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/user.jpg'),
                    ),
                  ),
                  ClipOval(
                    child: Container(
                      color: Colors.black.withOpacity(0.0),
                      width: 140,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: 30,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.edit,
                      size: 20,
                      color: defaultColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Edit Profile',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 15,
                            color: defaultColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Hi there Emilia!',
              style: Styles.textStyle18,
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 100,
                alignment: Alignment.center,
                height: 30,
                child: const Text(
                  'Sign Out',
                  style: Styles.textStyle16,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextField(
                prefixIcon: Icons.person,
                radius: 25.0,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return '         Name must not be empty';
                  }
                  return null;
                },
                hintText: 'Name',
              ),
            ),
            const SizedBox(
              height: 28.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextField(
                prefixIcon: Icons.phone,
                radius: 25.0,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return '         Mobile must not be empty';
                  }
                  return null;
                },
                hintText: 'Mobile No',
              ),
            ),
            const SizedBox(
              height: 28.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextField(
                prefixIcon: Icons.location_on,
                radius: 25.0,
                keyboardType: TextInputType.streetAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return '         Address must not be empty';
                  }
                  return null;
                },
                hintText: 'Address',
              ),
            ),
            const SizedBox(
              height: 28.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: DefaultButton(
                onPressed: () {},
                color: Colors.deepOrange,
                width: double.infinity,
                height: 60.0,
                borderRadius: 30,
                buttonText: 'Save',
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
