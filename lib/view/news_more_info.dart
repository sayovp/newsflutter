import 'package:flutter/material.dart';
import 'package:flutter_app_bit/model/news.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsMoreInfo extends StatelessWidget {
  final News news;

  const NewsMoreInfo({Key key, @required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;

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
        body: Container(
          margin: EdgeInsets.only(right: 13, left: 13),
          child: Stack(
            children: [
              Container(
                height: _Height / 4,
                width: Width,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: news.urlToImage != null
                            ? NetworkImage(news.urlToImage)
                            : AssetImage('assets/img/fondolog.jpg'))),
              ),
              Column(children: [
                SizedBox(
                  height: _Height / 3.5,
                ),
                Text(
                  news.title ?? 'Title not find',
                  maxLines: 3,
                  style: GoogleFonts.signika(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: _Height * 0.02,
                ),
                Text(
                  news.content ?? 'Description not find',
                  style: GoogleFonts.signika(
                      fontSize: 15,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ],
          ),
        ));
  }
}
