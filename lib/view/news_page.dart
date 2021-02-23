import 'package:flutter/material.dart';
import 'package:flutter_app_bit/presenter/build_view.dart';
import 'package:flutter_app_bit/view/widgets/drawer_option.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int NewsInt = 1;

  String viewName = 'NewList';
  static const DrawerOptions = <Map<String, dynamic>>[
    {
      'value': 1,
      'text':
          '> All articles about Tesla from the last month, sorted by recent first',
    },
    {
      'value': 2,
      'text': '> Top business headlines in the US right now',
    },
    {
      'value': 3,
      'text':
          '> All articles mentioning Apple from yesterday, sorted by popular publishers first',
    },
    {
      'value': 4,
      'text': '> Top headlines from TechCrunch right now',
    },
    {
      'value': 5,
      'text':
          '> All articles published by the Wall Street Journal in the last 6 months, sorted by recent first',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'BIT News',
          style: TextStyle(color: Colors.black26),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(children: [
          DrawerHeader(
              child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.white,
            child: Image.network(
                'https://bit.institute/images/Instituto-Cursos-Programacion.png'),
          )),
          ...DrawerOptions.map(
            (option) => DrawerOption(
                text: option['text'],
                ontap: () {
                  setState(() {
                    NewsInt = option['value'];
                    Navigator.pop(context);
                  });
                }),
          )
          /*  ListTile(
            title: Text(
              '> All articles about Tesla from the last month, sorted by recent first',
              style: Styles.drawerOptionStyle,
            ),
            onTap: () {
              setState(() {
                NewsInt = 1;
                viewName = 'NewList';
              });
            },
          ),
          ListTile(
            title: Text(
              '> Top business headlines in the US right now',
              style: Styles.drawerOptionStyle,
            ),
            onTap: () {
              setState(() {
                NewsInt = 2;
                viewName = 'NewList';
              });
            },
          ),
          ListTile(
            title: Text(
              '> All articles mentioning Apple from yesterday, sorted by popular publishers first',
              style: Styles.drawerOptionStyle,
            ),
            onTap: () {
              setState(() {
                NewsInt = 3;
                viewName = 'NewList';
              });
            },
          ),
          ListTile(
            title: Text(
              '> Top headlines from TechCrunch right now',
              style: Styles.drawerOptionStyle,
            ),
            onTap: () {
              setState(() {
                NewsInt = 4;
                viewName = 'NewList';
              });
            },
          ),
          ListTile(
            title: Text(
              '> All articles published by the Wall Street Journal in the last 6 months, sorted by recent first',
              style: Styles.drawerOptionStyle,
            ),
            onTap: () {
              setState(() {
                NewsInt = 5;
                viewName = 'NewList';
              });
            },
          ),*/
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: BuildVieW(
          viewName: viewName,
          intNews: NewsInt,
        ),
        /*child: ListView(
          children: NewsRepository()
              .NEWS
              .map((news) => NewsCard(
                    news: news,
                  ))
              .toList(),
        ),*/
      ),
    );
  }
}
