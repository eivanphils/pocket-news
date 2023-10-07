import 'package:flutter/material.dart';
import 'package:pocket_news/services/news_service.dart';
import 'package:provider/provider.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const CustomHeader({super.key, this.title = 'Pocket News'});

  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                color: Colors.black,
                onPressed: () => newsService.changeThemeMode(),
                icon: Icon(newsService.isDarMode
                    ? Icons.light_mode
                    : Icons.dark_mode))),
        const SizedBox(
          width: 5,
        )
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
    Size get preferredSize => const Size.fromHeight(60);

}
