import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var num1 = 0, num2 = 0, sum = "0";

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculator")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $sum",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter First Number"),
            ),
            TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter second Number"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: MaterialButton(
                      color: Colors.greenAccent,
                      onPressed: () {
                        add();
                      },
                      child: Text("+"),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      sub();
                    },
                    color: Colors.greenAccent,
                    child: Text("-"),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: MaterialButton(
                    onPressed: () {
                      mul();
                    },
                    color: Colors.greenAccent,
                    child: Text("*"),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    div();
                  },
                  color: Colors.greenAccent,
                  child: Text("/"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    clear();
                  },
                  color: Colors.greenAccent,
                  child: Text("Clear"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void add() {
    setState(() {
      var a = t1.text;
      var b = t2.text;

      if (a.isEmpty || b.isEmpty) {
        sum = "Synax Error";
      } else {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      var a = num1 + num2;
      sum = a.toString();
      }
    });
  }

  void sub() {
    setState(() {
      var a = t1.text;
      var b = t2.text;

      if (a.isEmpty || b.isEmpty) {
        sum = "Synax Error";
      } else {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      var a = num1 - num2;
      sum = a.toString();
      }
    });
  }

  void mul() {
    setState(() {
      var a = t1.text;
      var b = t2.text;

      if (a.isEmpty || b.isEmpty) {
        sum = "Synax Error";
      } else {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      var a = num1 * num2;
      sum = a.toString();
      }
    });
  }
  void div() {
    setState(() {
      var a = t1.text;
      var b = t2.text;

      if (a.isEmpty || b.isEmpty) {
        sum = "Synax Error";
      } else {
        num1 = int.parse(t1.text);
        num2 = int.parse(t2.text);

        if (num2 == 0) {
          sum = "Synax Error";
        } else {
          var a = num1 ~/ num2;
          sum = a.toString();
        }
      }
    });
  }
  void clear(){
    setState(() {
      t1.text = "";
      t2.text = "";
      sum = "0";
    });
  }
}
