import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_prj/providers/horizontal_items.dart';
import 'package:test_prj/providers/vertical_items.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            height: height,
            child: ListView(
              children: [
                SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.close, color: Colors.black),
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                      "Section 1 (${HorizontalItemsProvider().itemsCount})",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700)),
                ),
                Container(
                  height: height * 0.21,
                  margin: const EdgeInsets.only(left: 9),
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      itemCount: HorizontalItemsProvider().itemsCount, //int
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: index == 0 ? 10 : 8, right: 10),
                          child: Container(
                            width: width / 1.15,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0,
                                  // offset: Offset(2.0, 2.0), //
                                )
                              ],
                            ),
                            child: Center(
                                child: Text(
                                    HorizontalItemsProvider()
                                        .generateItemAt(index),
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700))),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5),
                  child: Text(
                      "Section 2 (${VerticalItemsProvider().itemsCount})",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700)),
                ),
                Container(
                  height: height,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      itemCount: VerticalItemsProvider().itemsCount, //int
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                              height: height * 0.17,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 8.0,
                                    spreadRadius: 1.0,
                                  )
                                ],
                              ),
                              child: Center(
                                  child: Text(
                                      VerticalItemsProvider()
                                          .generateItemAt(index),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)))),
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
