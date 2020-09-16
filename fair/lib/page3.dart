
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: ListView(children: [

SizedBox(child: Image.asset('assets/head.png'),),


Text(
                  'Welcome to the main page for the corporation associated to the \nministry of health, as you can see I\'ve translated the data in Arabic \nyou need to do the search operation, press the start button... To \nstart the search operation',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 14,
                    color: const Color(0xff302a5a),
                  ),
                  textAlign: TextAlign.center,
                ),
              

SizedBox(height: 10,),

 Text(
                  'Happy Eater Restaurant',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    color: const Color(0xcf302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
             
          Text(
                  'Ministry of health',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 10,
                    color: const Color(0xff302a5a),
                  ),
                  textAlign: TextAlign.center,
                ),
          
           Text(
                  'اسم المؤسسة:',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 17,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
              
            
         
            
            Text(
                  'اسم المالك : زيد محمود عودة  ',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
          
            Text(
                  ' نوع المؤسسه : مطعم وكافيه  ',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
          
              
          Text(
                  'العنوان : عمان ,شارع مكة,مجمع 14',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
          Text(
                  'رقم الهاتف : 079111111111',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
             Text(
                  'القضاء : الجامعه',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
           Text(
                  'المحافظه : عمان',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
           Text(
                  'رقم الترخيص : 12-34321',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
          Text(
                  ' 14/9/2020: التاريخ ',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
             Text(
                  'الوقت : 9:00',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
             Text(
                  'اسم المراقب الصحي: أحمد محمد سعيد ',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
           Text(
                  'رقم الهاتف : 0779787812000:',
                  style: TextStyle(
                    fontFamily: 'Adobe Garamond Pro',
                    fontSize: 19,
                    color: const Color(0xff302a5a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
            
           
             



  Center(
                      child: SizedBox(
                          height: 90,
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(onTap: ()=>{         
Navigator.push(context,     MaterialPageRoute(builder: (context) => Page4()),
)                          },
                                                        child: Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                   
                                    Text(
                                      "Start",
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
