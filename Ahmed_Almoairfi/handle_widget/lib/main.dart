import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'second page',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Two Page APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  var _color = Colors.pink;

  

  myWidget(){
    return new MaterialButton(
                    child: new Text("data"),

                    color:Colors.green
                    , onPressed: () {
                      setState(() {
                        _color = Colors.purple;
                      });
                      print(_color);
                    },
                    
                    
                
                    
              );

  }
  final contriller = PageController(
    initialPage: 0,
  );
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: new PageView(
              controller: contriller,
              scrollDirection: Axis.vertical,
              children: [firstPage(),secondPage()],
            ),
      ),
       
    );
    

  }

  firstPage(){
    return Wrap(
      children: <Widget>[
        Center(
          child:btn("Sign up"),
        ),
        Center(
          child:btn("LogIN"),
        ),
        Center(child:new Text("swap Up to go to the next Page"),)
      ],
    );





  }
  btn(txt){
    return MaterialButton(
      child: new Text(txt),
      color:Colors.grey,
      onPressed: () { },
      );

  }
  secondPage(){
    return  Wrap(
          children: <Widget>[
              cell("One"),
              cell("two"),
              cell("three"),
              cell("Four"),
       
          ],
         
         
        );


  }
  cell(text){
    return Row(
    
      children: <Widget>[
        
        Expanded(

          child: new MaterialButton(
            color: Colors.blueAccent,
            child: new Text("the cell number "+text), onPressed: () {
              
            },
          ),
           
        ),

      ],
    );
    

  }
}
