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
      title: 'Remote Car',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Remote Car'),
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
  String outputText = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 300,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.amber, width: 3.0),
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {
                          onPressed('Forward');
                        },
                        child: const Text("Forward")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: 85,
                          child: ElevatedButton(
                              onPressed: () {
                                onPressed('Left');
                              },
                              child: const Text("Left"))),
                      SizedBox(
                          width: 85,
                          child: ElevatedButton(
                              onPressed: () {
                                onPressed('Stop');
                              },
                              child: const Text("Stop"))),
                      SizedBox(
                          width: 85,
                          child: ElevatedButton(
                              onPressed: () {
                                onPressed('Right');
                              },
                              child: const Text("Right"))),
                    ],
                  ),
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {
                          onPressed('Reverse');
                        },
                        child: const Text("Reverse")),
                  ),
                ],
              ),
            ),
            Text(
              outputText,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed(String newOutputText) {
    outputText = newOutputText;
    setState(() {});
  }
}
