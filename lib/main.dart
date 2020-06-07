import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_mobile_app/IntroductionPage.dart';
import 'package:my_first_mobile_app/custom_icons/HomePage.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); 
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
       runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(   
        fontFamily: 'Roboto',
       primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     onGenerateRoute: (settings) {
       switch (settings.name) {
         case "/": 
         return PageTransition(child: IntroductionPage(), type: PageTransitionType.fade);           
           break;
           case "/home": 
         return PageTransition(child: HomePage(), type: PageTransitionType.fade);           
           break;
         default:
          return null;
       }
     },
    );
  }
}


// Center(
//         child: GestureDetector(
//           child: Container(
//             height: 100,
//             width: 100,
//             color: color,
//           ),
//           onTap: () {
//             setState(() {
//               color = Colors.black;
//             });            
//           },
//           onDoubleTap: () {
//             setState(() {
//               color = Colors.yellow;
//             }); 
//           },
//           onLongPress: () {
//             setState(() {
//               color = Colors.blue;
//             });
//           },
//         ),    
//       ) ,
// class MyApp extends StatelessWidget{
  
//   @override
//   Widget build(BuildContext context) {
//     Color color = Colors.red;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('MWONE'),
//           leading: Text('data'),
//         ),
//         body: Center(
//           child:  GestureDetector(
//             child: Container(
//               height: 100,
//               width: 100,
//               color: color,
//             ),
//             onTap: () {
             
//             },
//             onDoubleTap: () {
//               print("BOSS");
//             },
//           ) 
//         )
//       ),
//     );
//   }
// }


 
