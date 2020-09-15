import 'dart:io';
import 'package:fair/page1.dart';
import 'package:fair/page2.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:glitters/glitters.dart';
import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';
void main() {
  runApp(splash());
}
class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}
class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState

    setState(() {});
  }
   @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
  }

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: WillPopScope(
            onWillPop: () => _onBackPressed(),
            child: Stack(

              children: [
                SplashScreen(
                    seconds: 4,
                    navigateAfterSeconds: Fair(),
                    image: Image.asset(
                      "assets/logo2.png",
                    ),
                    backgroundColor: Color.fromRGBO(238, 238, 238, 1),
                    photoSize: 180,
                    loadingText: Text(
                      '',
                      style: TextStyle(fontSize: 30),
                    ),
                    loaderColor: Colors.transparent),
                Glitters(
                  minSize: 8.0,
                  maxSize: 20.0,
                  interval: Duration.zero,
                  maxOpacity: 0.7,
                ),
                Glitters(
                  minSize: 10.0,
                  maxSize: 25.0,
                  interval: Duration(milliseconds: 20),
                  color: Colors.lime,
                ),
                Glitters(
                  minSize: 10.0,
                  maxSize: 25.0,
                  duration: Duration(milliseconds: 200),
                  inDuration: Duration(milliseconds: 500),
                  outDuration: Duration(milliseconds: 500),
                  interval: Duration(milliseconds: 30),
                  color: Colors.white,
                  maxOpacity: 0.7,
                ),
                Glitters(
                  minSize: 14.0,
                  maxSize: 30.0,
                  interval: Duration(milliseconds: 40),
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ));

   
  }
  Widget roundedButton(String buttonLabel, Color bgColor, Color textColor) {
    var loginBtn = new Container(
      padding: EdgeInsets.all(5.0),
      alignment: FractionalOffset.center,
      decoration: new BoxDecoration(
        color: bgColor,
        borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: const Color(0xFF696969),
            //    offset: Offset(1.0, 6.0),
            // blurRadius: 0.001,
          ),
        ],
      ),
      child: Text(
        buttonLabel,
        style: new TextStyle(
            color: textColor, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
    return loginBtn;}

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child:
                    roundedButton("No", Colors.black, const Color(0xFFFFFFFF)),
              ),
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: roundedButton(
                    " Yes ", Colors.black, const Color(0xFFFFFFFF)),
              ),
            ],
          ),
        ) ??
        false;
  }
  
  final _flashOnController = TextEditingController(text: "Flash on");
  final _flashOffController = TextEditingController(text: "Flash off");
  final _cancelController = TextEditingController(text: "Cancel");

  var _aspectTolerance = 0.00;
  var _numberOfCameras = 0;
  var _selectedCamera = -1;
  var _useAutoFocus = true;
  var _autoEnableFlash = false;
}
  class Fair extends StatefulWidget {
  @override
  _FairState createState() => _FairState();
}

class _FairState extends State<Fair> {
  
  File _image;

  Future getImage(ImgSource source) async {
    var image = await ImagePickerGC.pickImage(
        context: context,
        source: source,
        cameraIcon: Icon(
          Icons.camera_alt,
          color: Colors.red,
        ), //cameraIcon and galleryIcon can change. If no icon provided default icon will be present
        cameraText: Text(
          "From Camera",
          style: TextStyle(color: Colors.red),
        ),
        galleryText: Text(
          "From Gallery",
          style: TextStyle(color: Colors.blue),
        ));
    setState(() {
      _image = image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
//SizedBox(child: Image.asset('assets/head.png'),)   ,
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  "Scan QR",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 20,
                ),

                InkWell(onTap: ()=>{//scan()
                
                },
                                  child: SizedBox(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSzz4bOpap-wg5XHBdNPN1GKo_keqdt3aHFng&usqp=CAU')),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  "OR",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 20,
                ),

                Center(
                    child: SizedBox(
                        height: 90,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () => {
                              getImage(ImgSource.Both),
                            },
                            child: Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.camera_alt),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Take a photo",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))),
                SizedBox(
                  height: 10,
                ),

                Center(
                  child: Text(
                    "involve a picture for the bill ",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Center(
                    child: SizedBox(
                        height: 90,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(onTap: ()=>{         
Navigator.push(context,     MaterialPageRoute(builder: (context) => Page1()),
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
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: InkWell(
                    onTap: ()=>{Navigator.push(context,     MaterialPageRoute(builder: (context) => Page2()),)
},
                                      child: Text(
                      "Are you an inspector? If Yes, CLICK HERE  ",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}





  

