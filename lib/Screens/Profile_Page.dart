// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:gradient_text/gradient_text.dart';
//
// void main() {
//   runApp(Profile());
// }
//
// class Profile extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Gla Student Login App",
//       debugShowCheckedModeBanner: false,
//       home: ProfilePage(),
//     );
//
//   }
// }
// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "My Profile",
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 25
//           ),
//         ),
//         // title: GradientText(
//         //     "My Profile",
//         //   gradient: LinearGradient(colors: [
//         //     Color(0xFFFF1000),
//         //     Color(0xFF2508FF),
//         //    ]),
//         //     style: TextStyle(letterSpacing: 2,fontWeight: FontWeight.bold,fontSize: 30)
//         // ),
//         elevation: 10,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_outlined),
//           color: Colors.lightGreenAccent[700],
//           onPressed:(){
//             Navigator.pop(context);
//           }
//         ),
//         backgroundColor: Colors.deepOrange,
//         // flexibleSpace: Container(
//         //   decoration: new BoxDecoration(
//         //     gradient: new LinearGradient(
//         //         colors: [
//         //           const Color(0xFF3366FF),
//         //           const Color(0xFF00CCFF),
//         //         ],
//         //         begin: const FractionalOffset(0.0, 0.0),
//         //         end: const FractionalOffset(1.0, 0.0),
//         //         stops: [0.0, 1.0],
//         //         tileMode: TileMode.clamp
//         //     ),
//         //   ),
//         // ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 230,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.green,
//                   Colors.green[100],
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//             child: Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/anu.jpg'),
//                 radius: 50,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
  home:ProfilePage(),
));

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25
          ),
        ),
        // title: GradientText(
        //     "My Profile",
        //   gradient: LinearGradient(colors: [
        //     Color(0xFFFF1000),
        //     Color(0xFF2508FF),
        //    ]),
        //     style: TextStyle(letterSpacing: 2,fontWeight: FontWeight.bold,fontSize: 30)
        // ),
        elevation: 10,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.lightGreenAccent[700],
          onPressed:(){
            Navigator.pop(context);
          }
        ),
        backgroundColor: Colors.deepOrange,
        // flexibleSpace: Container(
        //   decoration: new BoxDecoration(
        //     gradient: new LinearGradient(
        //         colors: [
        //           const Color(0xFF3366FF),
        //           const Color(0xFF00CCFF),
        //         ],
        //         begin: const FractionalOffset(0.0, 0.0),
        //         end: const FractionalOffset(1.0, 0.0),
        //         stops: [0.0, 1.0],
        //         tileMode: TileMode.clamp
        //     ),
        //   ),
        // ),
      ),
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.greenAccent, Colors.lightGreenAccent]
                  )
              ),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/anu.jpg",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Anurodh Dubey\n"
                            "    B.Tech - CS",
                        style: TextStyle(
                          fontSize: 26.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children:<Widget>[
                          Card(
                          margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          elevation: 10.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 22.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Roll No",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        '191500140',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Year/Sem",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "II / IV",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Contact No.",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "9451168310",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                       ]
                      ),
                    ],
                  ),
                ),
              )
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(color: Colors.black,thickness: 0.6),
                  Text(
                    "Bio:",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontStyle: FontStyle.normal,
                        fontSize: 28.0
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Details will be displayed soon!',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CircularPercentIndicator(
            radius: 70.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.785,
            center: new Text(
              "78.5%",
              style:
              new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            footer: new Text(
              "Current Percentage",
              style:
              new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            circularStrokeCap: CircularStrokeCap.square,
            progressColor: Colors.deepOrange,backgroundColor: Colors.grey,
          ),
    ],
      )
    );

  }
}