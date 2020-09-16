
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}


var radioValue1 = "_radioValue1";
var handleRadioValueChange1;

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(
                child: Image.asset('assets/head.png'),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "    :نوع الزياره",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  new Radio(
                    value: 0,
                    groupValue:radioValue1 ,
                  ),
                  new Text(
                    'تفتيش روتيني',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 1,
                                        groupValue:radioValue1 ,

                  ),
                  new Text(
                    'تسمم غذائي',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  new Radio(
                    value: 2,
                                        groupValue:radioValue1 ,

                  ),
                  new Text(
                    'شكوى',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                                        groupValue:radioValue1 ,

                    value: 3,
                  ),
                  new Text(
                    'غير محدد',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "   : أماكن تحضير الطعام ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("الأرضيه"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("الجدران و الأسقف"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("المعدات و الأواني"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" التهويه"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Divider(),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "    :الموظفون و مجهزي الطعام",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("النظافه الشخصيه "),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" المراقبه الطبيه"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" التدريب و المعلومات"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Divider(),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "    :استلام و تحضير الطعام",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" استلام و ترتيب المواد"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" تجميد و تبريد الأغذيه"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Divider(),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "    :التنظيف و التطهير",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" وجود بروتوكول تنظيف"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("وجود معدات تنظيف مناسبه"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(" تخزين مواد التنظيف"),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              SizedBox(height: 10,),
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
                                           'All Done',
 
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
            ],
          ),
          
        ),
      ),
    );
  }
}