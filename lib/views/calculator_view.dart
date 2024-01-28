import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//calculator view for the application

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          //Calculator Display
          DisplayOne(hint: "Enter first number : "),
          SizedBox(
            height: 30,
          ),

          DisplayOne(hint: "Enter second number : "),

          const SizedBox(
            height: 30,
          ),

          const Text(
            "0",
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),

          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(CupertinoIcons.add),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.divide),
              ),
            ],
          ),
          //Calculator Buttons
        ],
      ),
    );
  }
}

//calculator display for the application

class DisplayOne extends StatelessWidget {
  const DisplayOne({super.key, this.hint = "Enter a number"});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(children: [
        //Calculator Display
        TextField(
          keyboardType: TextInputType.number,
          autofocus: true,
          style: TextStyle(fontSize: 20.0, color: Colors.black),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            filled: true,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black54),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        )
      ]),
    );
  }
}
