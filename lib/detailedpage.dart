import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailedpage extends StatefulWidget {
  final QueryDocumentSnapshot querySnapshot;
  const detailedpage({Key? key,required this.querySnapshot}) : super(key: key);

  @override
  State<detailedpage> createState() => _detailedpageState();
}

class _detailedpageState extends State<detailedpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [Icon(Icons.menu)],
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        // ignore: avoid_unnecessary_containers
        child: Column(children: [
          Row(
            children: [
              Container(height: 120, width: 120, child: Image.network(widget.querySnapshot['img'])),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                   widget.querySnapshot['name'],
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 15),
                    ),
                  ),
                  Text(
                    widget.querySnapshot['source'],
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 0,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                child: Center(
                  child: Text(
                    'Subscribe',
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing:0.5,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900]),
              ),
              SizedBox(
                width: 20
              ),
  
              Icon(
                Icons.share,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            alignment: Alignment.topLeft,
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 20),  
                    
            
            
                        child: Text(
        widget.querySnapshot['desc'],
        textAlign: TextAlign.left,
                          style: GoogleFonts.dmSans(
                            textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0,
                              fontSize: 11,
                            ),
                          ),
                        ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                '2 Episodes',
                style: GoogleFonts.dmSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: 0,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            color: Colors.grey.shade900,
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      '18 Oct 2019',
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Gaana Music',
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 10),
                      child: Text(
                        'Listen to Episode 2 of Gaana Music podcast audio show. Listen only on Hubhopper.',
                        style: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                     

                    SizedBox(height: 3,),
                    Container(
                      child: Center(
                        child: Text(
                          '3 min',
                          style: GoogleFonts.dmSans(
                            textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                      height: 30,
                      width: 100,
                      
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                          
                    ),
                    SizedBox(width: 30,),
                    Icon(Icons.save,color: Colors.white,),
                    SizedBox(width: 30,),
                    Icon(Icons.download,color: Colors.white,),
                    Spacer(),Icon(Icons.menu,color: Colors.white,),


                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
