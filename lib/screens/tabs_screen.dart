import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  static const routeName = 'home';

  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(color: Colors.red,),
          Container(color: Colors.blue,)
        ],
      ),
    );
  }
}
