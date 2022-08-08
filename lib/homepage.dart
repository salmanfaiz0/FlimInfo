import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/home.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
              print("Next Page");
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              tooltip: 'Bookmarked',
              color: bgColor,
              onPressed: () {
                setState(() {
                  if (bgColor == Colors.white) {
                    bgColor = Colors.yellow;
                  } else {
                    bgColor = Colors.white;
                  }
                });
              },
              icon: Icon(Icons.favorite))
        ],
        backgroundColor: Colors.grey[850],
        title: Text(
          "FAMOUS ACTORS",
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/photo1.jpg"),
              radius: 30,
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Actor",
              style: TextStyle(
                  color: Colors.white, fontSize: 18, letterSpacing: 1),
            ),
            Text(
              "Jackie Chan",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: Text(
                "Chan was born on 7 April 1954 in British Hong Kong as Chan Kong-sang  to Charles and Lee-Lee Chan, refugees from the Chinese Civil War. His parents were so poor they had to borrow money from friends to pay the doctor.His parents nicknamed him Pao-pao  because the energetic child was always rolling around.",
                style: TextStyle(color: Colors.white54, height: 1.4),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "NO.OF FILMS",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: 1),
            ),
            Text(
              "150",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "In 2017, the Chinese-Indian co-production Kung Fu Yoga became his highest-grossing film in China. As of 2021,      Jackie Chan has appeared in nearly 150 films.",
              style: TextStyle(color: Colors.white54),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color.fromARGB(255, 77, 70, 8),
                    child: Row(
                      children: [
                        Text(
                          "  Follow us on",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () async {
                      print("instagram");
                      String url =
                          "https://www.instagram.com/jackiechan/?hl=en";
                      if (await canLaunch(url)) {
                        await launch(url,
                            forceSafariVC: false,
                            forceWebView: false,
                            enableJavaScript: false);
                      }
                    },
                    icon: Image.asset("assets/insta.png"),
                  ),
                  IconButton(
                      onPressed: () async {
                        print("facebook");
                        String url = "https://www.facebook.com/jackie";
                        if (await canLaunch(url)) {
                          await launch(url,
                              forceSafariVC: false,
                              forceWebView: false,
                              enableJavaScript: false);
                        }
                      },
                      icon: Image.asset("assets/fb.png")),
                  IconButton(
                      onPressed: () async {
                        print("wiki");
                        String url =
                            "https://en.wikipedia.org/wiki/Jackie_Chan";
                        if (await canLaunch(url)) {
                          await launch(url,
                              forceSafariVC: false,
                              forceWebView: false,
                              enableJavaScript: false);
                        }
                      },
                      icon: Image.asset("assets/wiki.png")),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
