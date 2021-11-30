import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: height,
      child: Container(
        height: height * 0.2,
        width: double.infinity,
        child: ListView.builder(itemBuilder: (context, index) {
          itemCount:
          return ListTile();
        }),
      ),
    ));
  }
}
