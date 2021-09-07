import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:Online_exam_App/Screens/Profile_Page.dart';


// class MainPage extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Gla Student Login App",
//       debugShowCheckedModeBanner: false,
//       home: GlaApp(),
//     );
//   }
// }

class GlaApp extends StatefulWidget {
  @override
  _GlaAppState createState() => _GlaAppState();
}

class _GlaAppState extends State<GlaApp> {

  void _refreshpage() {
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        shadowColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.cached_rounded),
            highlightColor: Colors.lightBlue,
            tooltip: "Refresh",
            splashRadius: 25,
            onPressed: (){
              _refreshpage();
            },
          )
        ],
        centerTitle: true,
        elevation: 10.0,
        title: Text("GLA EXAMINATION SYSTEM"),
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 10.0,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.cyanAccent,
                    Colors.blueAccent[200],
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/anu.jpg"),
                    radius: 40.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Anurodh Dubey',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text('anurodh.dubey_cs19@''\n'
                          'gla.ac.in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15.0
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
                leading: Icon(Icons.dashboard,color: Colors.deepOrange,size: 29),
                title: Text("Dashboard",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                onTap: (){
                  //your function here
                }
            ),
            ListTile(
                leading: Icon(Icons.settings,color: Colors.deepOrange,size: 29),
                title: Text("Exam History",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                onTap: (){
                  Navigator.pop(context);
                }
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.deepOrange,size: 29),
              title: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.deepOrange,size: 29),
              title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue,
                    Colors.red,
                  ])
          ),
          child: Center(
              child: Text("Hurray! No Upcoming Exam",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic))
          ),
        ),
      ),
    );
  }
}