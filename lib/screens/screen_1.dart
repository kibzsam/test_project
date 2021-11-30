import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => _showStartDialog());
  }

  Future<void> _showStartDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          title: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: const Text(
                            'Title',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: const Center(
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin viverra ligula orci.',
                            style: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, color: Colors.grey),
                ),
              )
            ],
          ),
          content: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                  decoration: const BoxDecoration(color: Colors.grey),
                  height: MediaQuery.of(context).size.height * 0.44,
                  child: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Container(
                          child: const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin viverra ligula orci. '
                            'Nullam tellus ante, sagittis at cursus facilisis, luctus ut tellus. Etiam eget lacus lacus. Nunc tincidunt, lorem nec pharetra molestie, urna quam elementum nulla, nec ultrices neque justo sit amet massa. Duis ut accumsan mauris. Duis rutrum eget ante ut lobortis. Duis enim ligula, dignissim sed lacus id, mattis pellentesque odio. Duis eleifend pulvinar ex. '
                            'Fusce egestas urna sapien. Vestibulum sed nibh fringilla, porttitor neque et, dapibus mauris. Fusce egestas urna sapien. Vestibulum sed nibh fringilla, porttitor neque et, dapibus mauris.Fusce egestas urna sapien. Vestibulum sed nibh fringilla, porttitor neque et, dapibus mauris. Fusce egestas urna sapien. Vestibulum sed nibh fringilla, porttitor neque et, dapibus mauris. Fusce egestas urna sapien. Vestibulum sed nibh fringilla, porttitor neque et, dapibus mauris.',
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 10.0),
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () {},
                    child: Text('Test Button'.toUpperCase()),
                  ),
                ],
              ),
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(24.0),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(),
    );
  }
}
