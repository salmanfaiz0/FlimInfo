import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/mamu.dart';

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
            Card(
              child: ListTile(
                title: Text(
                  "Jackie Chan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Chinese Actor"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  icon: Icon(Icons.more_horiz),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/photo1.jpg"),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Mammootty",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Indian Actor"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Mamnupage();
                    }));
                  },
                  icon: Icon(Icons.more_horiz),
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/photo2.jpg")),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Mohanlal",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Indian Actor"),
                trailing: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Details Are Not Found !"),
                      backgroundColor: Colors.red,
                    ));
                  },
                  icon: Icon(Icons.more_horiz),
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/photo3.jpeg")),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Shah Rukh Khan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Indian Actor"),
                trailing: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Details Are Not Found !"),
                      backgroundColor: Colors.red,
                    ));
                  },
                  icon: Icon(Icons.more_horiz),
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/photo4.jpg")),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Vijay",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Indian Actor"),
                trailing: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Details Are Not Found !"),
                      backgroundColor: Colors.red,
                    ));
                  },
                  icon: Icon(Icons.more_horiz),
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/photo6.jpg")),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Prithviraj Sukumaran",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(" Actor & Director "),
                trailing: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Details Are Not Found !"),
                      backgroundColor: Colors.red,
                    ));
                  },
                  icon: Icon(Icons.more_horiz),
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/photo5.jpg")),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Tovino Thomas",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Indian Actor "),
                trailing: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Details Are Not Found !"),
                      backgroundColor: Colors.red,
                    ));
                  },
                  icon: Icon(Icons.more_horiz),
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/photo8.jpg")),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Basil Joseph",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Actor & Director"),
                trailing: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Details Are Not Found !"),
                      backgroundColor: Colors.red,
                    ));
                  },
                  icon: Icon(Icons.more_horiz),
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/photo7.jpg")),
              ),
            ),
          ],
        ));
  }
}
