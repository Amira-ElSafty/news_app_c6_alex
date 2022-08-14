import 'package:flutter/material.dart';
import 'package:flutter_app_news_c6_alex/model/NewsResponse.dart';
import 'package:flutter_app_news_c6_alex/my_theme.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(news.urlToImage ??
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2r7SW0oSbTqd_EC8_FP5SlkXRVELZRFYnlZc84C1QUw&s'),
          ),
          SizedBox(height: 8,),
          Text(news.author ?? '',
            style: TextStyle(
              color: MyThemeData.grayColor,
              fontSize: 14,
            ),
          ),
          Text(news.title ?? '',
            style: TextStyle(
              color: MyThemeData.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(news.publishedAt ?? '',
            style: TextStyle(
              color: MyThemeData.grayColor,
              fontSize: 14,
            ),
            textAlign: TextAlign.end,
          ),

        ],
      ),
    );
  }
}
