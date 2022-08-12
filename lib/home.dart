import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/image.dart';
import 'package:flutter_application_1/mamu.dart';
import 'package:flutter_application_1/carddetails.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("World Famous Actress🎭"),
        ),
        backgroundColor: Colors.grey[850],
        body: ListView(
          children: [
            CardDetails(
              actorName: "Jackie Chan",
              actorNamesub: "Chinese Actor",
              actorimgl: jacki,
            ),
            sizebox(),
            CardDetails(
              actorNamesub: "Indian Actor",
              actorName: "Mammootyyyyyyyyyy",
              actorimgl: mamo,
            ),
            sizebox(),
            CardDetails(
              actorNamesub: "Indian Actor",
              actorName: "Mohanlal",
              actorimgl: mohal,
            ),
            sizebox(),
            CardDetails(
                actorNamesub: "Indian Actor",
                actorName: "Shah Rukh Khan",
                actorimgl: sharu),
            sizebox(),
            CardDetails(
                actorNamesub: "Indian Actor",
                actorName: "Vijay",
                actorimgl: suku),
            sizebox(),
            CardDetails(
                actorNamesub: "Indian Actor & Director",
                actorName: "Prithviraj Sukumaran",
                actorimgl: vij),
            sizebox(),
            CardDetails(
                actorNamesub: "Indian Actor ",
                actorName: "Tovino Thomas",
                actorimgl: basil),
            sizebox(),
            CardDetails(
                actorNamesub: "Actor & Director",
                actorName: "Basil joseph",
                actorimgl: tovi)
          ],
        ));
  }
}
