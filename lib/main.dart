import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(

      child: ElevatedButton(onPressed: (){
        //code
      },

        child: Text(btntxt,
          style: TextStyle(
              fontSize: 35,
              color: txtcolor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: btncolor,
          shape: CircleBorder(),
        ),

      ),
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ Padding(padding: EdgeInsets.all(20),
                child: Text('0',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white,
                      fontSize: 100),
                ),
              )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 80,
                  width: 80,
                 child: calcbutton('AC', Colors.white, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('+/-', Colors.white, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('%', Colors.white, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('/', Colors.orange, Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('7', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('8', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('9', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('x', Colors.orange, Colors.black),
                ),
              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('4', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('5', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('6', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('-', Colors.orange, Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('1', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('2', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('3', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('+', Colors.orange, Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('0', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('.', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('⌫', Colors.grey, Colors.black),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: calcbutton('=', Colors.orange, Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
