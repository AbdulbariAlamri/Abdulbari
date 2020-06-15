import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget  {

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: "new Page",),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var txt = "+";
  var myController = TextEditingController();
  var txtInput = new TextField();
  var first = 0.0;
  var second = 0.0;
  var result = "";
  var inputState = "first";

  pressBTN(String text){
    setState(() {
      print("input");
      print(txtInput.textInputAction);
      print(txtInput);

      txt = txtInput.textInputAction.toString();
    });

  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }


 

  @override
  Widget build(BuildContext context) {
      txtInput = new TextField(controller: myController);



    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: new Container(

      
           child: new Column(children: <Widget>[
             new MaterialButton(
            child: new Text(txt),
            color: Colors.blueGrey,
            textColor: Colors.white, onPressed: () {
              if (inputState=="first"){
                first=double.parse(myController.text);
                
               setState(() {
                 txt = "=";
               });
               inputState="second";
              }else if (inputState=="second"){ 
                second=double.parse(myController.text);
                result = (first + second).toString();
                inputState="first";
              }
               setState(() {
                 print("input");
                 myController.text = result;
                 txt = "+";
                //print(txtInput.controller);
               });
            },
          ),
          txtInput,

           ],) 
      )
          
      
    );
  }
}
