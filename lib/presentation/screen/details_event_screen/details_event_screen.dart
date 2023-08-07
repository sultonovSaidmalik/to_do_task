import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/body_widget.dart';
import 'widgets/delete_button.dart';
import 'widgets/edit_button.dart';
import 'widgets/text_description.dart';
import 'widgets/title_widget.dart';

class DetailsScreen extends StatefulWidget {
  static const id = "details/";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(),
          BodyWidget(),
        ],
      ),
    );
  }
}
