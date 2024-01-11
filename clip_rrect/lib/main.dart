import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _size = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text("CLIP RECT",style: TextStyle(color: Colors.white,fontSize: 30),)),backgroundColor: Colors.blueGrey),backgroundColor: Colors.grey,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(_size),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blueGrey,
                child: Center(
                  child: FlutterLogo(
                    size: _size+10,
                  ),
                ),
              ),
            ),),
          Center(
            child: Container( width: 800,
              child: Slider(
                value: _size,
                activeColor: Theme.of(context).primaryColorLight,
                inactiveColor: Theme.of(context).cardColor.withOpacity(0.3),
                min: 0.0,
                max: 100.0,
                divisions: 100,
                onChanged: (double value){
                  setState(() {
                    _size = value;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
