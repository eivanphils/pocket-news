import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:pocket_news/providers/providers.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const CustomHeader({super.key, this.title = 'Pocket News'});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                color: Colors.black,
                onPressed: () => themeProvider.setMode(),
                icon: Icon(themeProvider.isDarkMode
                    ? Icons.light_mode
                    : Icons.dark_mode))),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
  
  @override
    Size get preferredSize => const Size.fromHeight(60);

}
