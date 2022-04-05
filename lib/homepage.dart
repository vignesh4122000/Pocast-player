import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastplayer/detailedpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List categorylist = [
    "For you",
    "News",
    "Culture",
    "Education",
    "Business",
    "Comedy",
    "Arts",
    "Technology",
    "Health & Fitness"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
          )
        ],
        centerTitle: true,
        title: Text(
          'PODCAST',
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white, letterSpacing: 4.5),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade900),
              child: Center(
                child: Text(
                  'Search the library',
                  style: GoogleFonts.dmSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categorylist.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      categorylist[index],
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: 12),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Featured Podcasts",
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                          color: Colors.white, letterSpacing: .5, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 180,
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("podcastplayer")
                    .snapshots(),
                builder: (context, snapshots) {
                  return ListView.builder(
                      itemCount: snapshots.data!.docs.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) => 
                            detailedpage(querySnapshot: snapshots.data!.docs[index])));
                            },
                            child: Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Image.network(
                                      snapshots.data!.docs[index]["img"],
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      snapshots.data!.docs[index]["name"],
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: .5,
                                            fontSize: 10),
                                      ),
                                    ),
                                    Text(
                                      snapshots.data!.docs[index]["source"],
                                      style: GoogleFonts.dmSans(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: .5,
                                            fontSize: 6),
                                      ),
                                    ),
                                  ]),
                              height: 120,
                              width: 120,
                              color: Colors.grey.shade900,
                            ),
                          ),
                        );
                      }));
                },
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
