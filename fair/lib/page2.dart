
import 'package:fair/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}
bool _obscureText = true;

String _password;
String _email;
String _fname;
String _sname;

class _Page2State extends State<Page2> {
    void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: new Container(
                child: new Column(
                  children: <Widget>[







SizedBox(child: Image.asset('assets/logo2.png'),),

SizedBox(height:30 ,),

                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Email',
                          icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.email))),
                      validator: (val) =>
                          val.length < 0 ? 'please enter your email.' : null,
                      onChanged: (val) => _email = val,
                    ),


SizedBox(height:20 ,),

                    Stack(                  alignment: true?Alignment.centerRight:Alignment.centerLeft,
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              icon: const Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: const Icon(Icons.lock))),
                          validator: (val) =>
                              val.length < 6 ? 'Password too short.' : null,
                          onChanged: (val) => _password = val,
                          obscureText: _obscureText,
                        ),
                        IconButton(
                          icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                          onPressed: () {
                            _toggle(); // Your codes...
                          },
                        ),
                      ],
                    ),

                    /*  new FlatButton(
                        onPressed: _toggle,
                        child: new Text(_obscureText ? "Show password" : "Hide password")),*/

                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ButtonTheme(
                        
                        height: 45,
                        minWidth: MediaQuery.of(context).size.width / 1.20,
                        child: FlatButton(
                          color: Colors.blueGrey[200],
                          onPressed: () async => {
                            _password = "",
                            _email = "",
                           // Navigator.of(context).pop()
Navigator.push(context,     MaterialPageRoute(builder: (context) => Page3()),)


                          },
                          child: Text(
                          "LOGIN",
                           // DemoLocalizations.of(context).translate('log'),
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),
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