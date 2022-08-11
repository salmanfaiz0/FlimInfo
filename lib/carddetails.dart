import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/image.dart';

class CardDetails extends StatelessWidget {
  String actorNamesub;
  String actorName;
  String actorimgl;

  String messageBox = "Details Are Not Found !";

  CardDetails(
      {required this.actorNamesub,
      required this.actorName,
      required this.actorimgl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          actorName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(actorNamesub),
        trailing: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage();

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(messageBox),
                backgroundColor: Colors.red,
              ));
            }));
          },
          icon: Icon(Icons.more_horiz),
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(actorimgl),
        ),
      ),
    );
  }
}
