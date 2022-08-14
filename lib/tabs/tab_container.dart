import 'package:flutter/material.dart';
import 'package:flutter_app_news_c6_alex/model/SourceResponse.dart';
import 'package:flutter_app_news_c6_alex/tabs/tab_item.dart';

import '../home/news/news_container.dart';

class TabContainer extends StatefulWidget {
  List<Source> sources ;

  TabContainer({required this.sources});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sources.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index){
                selectedIndex = index ;
                setState(() {

                });
              },
              isScrollable: true,
             indicatorColor: Colors.transparent,
             tabs: widget.sources.map((source) =>
                 TabItem(source: source,
                     isSelected: selectedIndex == widget.sources.indexOf(source)
                 )).toList()
            ),
            Expanded(child: NewsContainer(source: widget.sources[selectedIndex],)),
          ],
        )
    );
  }
}
