
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: ListView(children: [
SizedBox(child: Image.asset('assets/head.png'),),
SizedBox(height: 10,),
          SizedBox(
                width: 345.0,
                height: 91.0,
                child: Text(
                  ' Welcome to the main site of this restaurant That\'s associated with the ministry of health, please fill in the required fields + evaluate the restaurant and service ',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    color: const Color(0xff302a5a),
                    shadows: [
                      Shadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 20,),
               SizedBox(
              width: 163.0,
              child: Text(
                'What is your complaint?',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xff302a5a),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 0,
                          color: Color(0xFFeeeeee), //Colors.blueGrey,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              maxLines: 10,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Enter your text here"),
                            ),
                          )),






  ),
Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Text('you can add image if you want'),Icon(Icons.camera_alt)],),
SizedBox(height: 20,),


Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [                Text("app rate"),
RatingBar(
   initialRating: 3,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
)
              /*  Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                ),*/
              ],
            ),


SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [    
                            Text("google rate"),
RatingBar(
   initialRating: 3,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
)
             /*   Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                ),*/
              ],
            ),
SizedBox(height: 20,),

  Center(
                    child: SizedBox(
                        height: 90,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(onTap: ()=>{        
                            showDialog(context: context,builder: (BuildContext context) {
          return Dialog(
            
backgroundColor: Colors.yellow[50],
shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Center(
                        child: Text(
                                         'Your compliment has been \nreceived and approved. It will be dealt with as soon as possible',
 
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 100.0,
                        child: RaisedButton(
                          onPressed: () {
                         

                            Navigator.pop(context);
                          },
                          child: Text(
                            "ok",
                            style: TextStyle(color: Colors.black),
                          ),
                          color: Colors.yellow[400]
                        ),
                      ),
                    ),
                  ]
                ),),

            ),);




         }
          
)                          },
                                                      child: Card(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                 
                                  Text(
                                    "Submit",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))),



        ],),
        
      ),
    );
  }
}