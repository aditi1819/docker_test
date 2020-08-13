import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

web(address,osname, imagename,imageversion) async {
  var url = "http://${address}/cgi-bin/web.py?x=${osname}&y=${imagename}&z=${imageversion}";
  var response = await http.get(url);
  print(response.body);
}

App(){
  var na;
  var dosn;
  var img;
  var imgv;
  var textWidgets= Column(
    crossAxisAlignment: CrossAxisAlignment.center ,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[Container(
      
      padding: EdgeInsets.symmetric(horizontal:18.0),
      decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             ),
      child: Card(
        
        child: TextField(
                    
                    onChanged: (value) {
                      na = value;
                    },
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      
                     border: OutlineInputBorder(),
                      hintText: "Enter ur Node Address",
                      //prefixIcon: Icon(Icons.tablet_android),
                    ),
                  ),
                  elevation: 20.0,
                  shadowColor:  Colors.lightBlue.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10) 
                  ),
                  
                  ),
    ),
    Container(
      
      padding: EdgeInsets.symmetric(horizontal:18.0),
      decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             ),
      child: Card(
        
        child: TextField(
                    
                    onChanged: (value) {
                      dosn = value;
                    },
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(),
                      hintText: "Enter ur Docker OS Name ",
                      //prefixIcon: Icon(Icons.tablet_android),
                    ),
                  ),
                  elevation: 20.0,
                  shadowColor:  Colors.lightBlue.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10) 
                  ),
                  
                  ),
    ),
    Container(
      
      padding: EdgeInsets.symmetric(horizontal:18.0),
      decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             ),
      child: Card(
        
        child: TextField(
                    
                    onChanged: (value) {
                      img = value;
                    },
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(),
                      hintText: "Enter your image",
                      //prefixIcon: Icon(Icons.tablet_android),
                    ),
                  ),
                  elevation: 20.0,
                  shadowColor:  Colors.lightBlue.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10) 
                  ),
                  
                  ),
    ),
    Container(
      
      padding: EdgeInsets.symmetric(horizontal:18.0),
      decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             ),
      child: Card(
        
        child: TextField(
                    
                    onChanged: (value) {
                      imgv = value;
                    },
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(),
                      hintText: "Enter Your image version",
                      //prefixIcon: Icon(Icons.tablet_android),
                    ),
                  ),
                  elevation: 20.0,
                  shadowColor:  Colors.lightBlue.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10) 
                  ),
                  
                  ),
    ),
    Container(
      //alignment: AlignmentDirectional.bottomEnd,
      width:100,
      child: RaisedButton(onPressed: (){
        web(na,dosn,img,imgv);
      },
      splashColor: Colors.blue[100],
      color: Colors.white70,
      child:Text("SUBMIT")),
    )
                ],
  );
return MaterialApp(
  debugShowCheckedModeBanner: false,
  home:Scaffold(body: Center(child:Container(
  height: double.infinity,
  width: double.infinity,
  child: Column(
    children:[
      Stack(
        alignment: Alignment.center,
              children:[ Container(
          height: 400,
          decoration: BoxDecoration(
    
             image: const DecorationImage(
                     image: NetworkImage('https://github.com/aditi1819/Flutter_docker/raw/master/Screenshot%20(243).png'),
                     fit: BoxFit.cover,
                 ),
             borderRadius: BorderRadius.circular(12),
             ),
          ),
      
        Container(
          height:130,
          width:130,
          
          alignment: Alignment.center,
          decoration: BoxDecoration(
          
           image: const DecorationImage(
                   image: NetworkImage('https://github.com/aditi1819/Flutter_docker/raw/master/Screenshot%20(247).png'),
                   fit: BoxFit.contain,
               ),
           borderRadius: BorderRadius.circular(100),
           ),
        )],
        
   ),textWidgets,
   Row(
     
     children: <Widget>[
       Container(width:220),
       Container(
         alignment:Alignment.bottomCenter,
         
                child: FlatButton(onPressed: null, child: Text('Advanced Options',
             textAlign: TextAlign.center,
             overflow: TextOverflow.ellipsis,
             style: TextStyle(fontWeight: FontWeight.w600,
             color: Colors.blue[700],
             fontSize: 15.0),))
       
         ),
     ],
   )
    ],)
) ),));
}