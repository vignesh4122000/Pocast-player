// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Homescreen extends StatefulWidget {
//   const Homescreen({Key? key}) : super(key: key);

//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }

// class _HomescreenState extends State<Homescreen> {




// List categorylist =["For you","News","Culture","Education","Business","Comedy","Arts","Technology","Health & Fitness","Children & Family","Science","History","Music","Sports"];



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         actions: [
//           CircleAvatar(
//             radius: 15,
//             backgroundColor: Colors.white,
//           ),
//           SizedBox(
//             width: 10,
//           )
//         ],
//         centerTitle: true,
//         title: Text(
//           'PODCAST',
//           style: GoogleFonts.lato(
//               textStyle: TextStyle(
//                   fontSize: 17, letterSpacing: 6, color: Colors.white)),
//         ),
//       ),
//       body: Container(
//         color: Colors.black,
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Column(children: [
//           Container(
//             height: 50,
//             child: Row(
//               children: [
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Icon(
//                   Icons.search,
//                   color: Colors.white,
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Text('search the library',
//                     style: GoogleFonts.dmSans(
//                         textStyle: TextStyle(
//                             fontSize: 13,
//                             letterSpacing: 0.5,
//                             color: Colors.white))),
//               ],
//             ),
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//                 color: Colors.black,
//                 border: Border.all(color: Colors.white),
//                 borderRadius: BorderRadius.circular(20)),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             height: 50,
//             width: MediaQuery.of(context).size.width,
//             color: Colors.grey.shade900,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
              
//               itemCount: categorylist.length,
//               itemBuilder: ((context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(top:13.0,left: 20,right: 20),
//                 child: Text(categorylist[index],style: TextStyle(color: Colors.white),),
//               );
//             }))
//           )
//         ]),
        
//       ),
//     );
//   }
// }
