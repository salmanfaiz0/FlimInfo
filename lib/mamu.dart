import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/home.dart';
import 'package:url_launcher/url_launcher.dart';

class Mamnupage extends StatefulWidget {
  Mamnupage({Key? key}) : super(key: key);

  @override
  State<Mamnupage> createState() => _HomePageState();
}

class _HomePageState extends State<Mamnupage> {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/photo2.jpg"),
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
                "Mammootty",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20),
                child: Text(
                  "Mammootty is the chairman of Malayalam Communications, which runs the Malayalam television channels Kairali TV, Kairali News and Kairali We. He is the owner of multiple production ventures, including the distribution-production banner Playhouse and the Mammootty Kampany.",
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
                "421",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "South Indian Movie Awards",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                "	Varsham(2015), Pathemari(2016), Unda(2019)",
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
                      color: Color.fromARGB(255, 77, 70, 8),
                      child: Text(
                        "Follow us on",
                        style: TextStyle(color: Colors.white),
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
                        String url = "https://www.instagram.com/mammootty/";
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
                          String url = "https://www.facebook.com/Mammootty";
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
                              "https://en.wikipedia.org/wiki/Mammootty";
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
        ),
      )),
    );
  }
}
