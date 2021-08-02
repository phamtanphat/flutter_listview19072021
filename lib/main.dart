import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Demo Context"),
            ),
            body: HomePage()
        ));
  }
}

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(count.toString()),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    count = count + 1;
                  });
                },
                child: Text("Increment")
            ),
            Children()
          ],
        ),
      ),
    );
  }

}

class Children extends StatefulWidget {

  @override
  _ChildrenState createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {

  @override
  void initState() {
    super.initState();
    print("Children initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Children didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("Children build");
    return Container();
  }

  @override
  void didUpdateWidget(covariant Children oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Children didUpdateWidget");
  }
}



