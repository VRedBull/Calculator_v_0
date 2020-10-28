import 'package:flutter/material.dart';

class Buttons {
  int num = 0;
  Widget operations() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: FlatButton.icon(
              color: Colors.lightBlue,
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text(
                '',
                style: TextStyle(fontSize: 40),
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
              color: Colors.lightBlue,
              onPressed: () {},
              // icon: Icon(Icons.),
              child: Text(
                '-',
                style: TextStyle(fontSize: 40),
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
              color: Colors.lightBlue,
              onPressed: () {},
              // icon: Icon(Icons.),
              child: Text(
                '/',
                style: TextStyle(fontSize: 40),
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
              color: Colors.lightBlue,
              onPressed: () {},
              // icon: Icon(Icons.),
              child: Text(
                'x',
                style: TextStyle(fontSize: 40),
              )),
        ),
      ],
    );
  }

  Widget numButton(int num) {
    return Expanded(
      flex: 1,
      child: FlatButton(
          color: Colors.blueAccent,
          onPressed: () {
            setState() {
              this.num = num;
            }
          },
          child: Text('$num')),
    );
  }

  Widget specialOp(String speacialOp) {
    return Expanded(
        flex: 1,
        child: FlatButton(
          color: Colors.indigo,
          onPressed: () {},
          child: Text(
            '$speacialOp',
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
