import 'package:flutter/material.dart';
import 'buttons.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Buttons op = Buttons();
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 10,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Text('$number'),
                ),
                color: Colors.grey,
              ),
            ),
            Expanded(flex: 2, child: op.operations()),
            Expanded(
                child: FlatButton(
              onPressed: () {
                setState(() {
                  number = 1;
                });
              },
              child: Text('1'),
            ))
            // Expanded(
            //   flex: 2,
            //   child: Row(
            //     children: [
            //       op.numButton(1),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       op.numButton(2),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       op.numButton(3),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       op.numButton(4),
            //     ],
            //   ),
            // ),
            // Expanded(
            //   flex: 2,
            //   child: Row(
            //     children: [
            //       op.numButton(5),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       op.numButton(6),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       op.numButton(7),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       op.numButton(8),
            //     ],
            //   ),
            // ),
            // Expanded(
            //   flex: 2,
            //   child: Row(
            //     children: [
            //       op.numButton(9),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       op.numButton(0),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       op.specialOp('='),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       op.specialOp('<='),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
