import 'package:flutter/material.dart';
import 'package:meal_app/Features/Entry_Screen/presentation/views/Entry_view_body.dart';

class EntryView extends StatelessWidget {
  const EntryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EntryViewBody(),
    );
  }
}
