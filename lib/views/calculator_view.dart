import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//calculator view for the application

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num result = 0;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          //Calculator Display

          Display(
            hint: "Enter first number : ",
            controller: displayOneController,
          ),
          const SizedBox(
            height: 2,
          ),

          Display(
            hint: "Enter second number : ",
            controller: displayTwoController,
          ),

          const SizedBox(
            height: 30,
          ),

//text to show output after calculation
          Text(
            result.toString(),
            style: const TextStyle(
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),

          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //button for addition
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    result = num.tryParse(displayOneController.text)! +
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: const Icon(CupertinoIcons.add),
              ),

              //button for subtraction
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    result = num.tryParse(displayOneController.text)! -
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: const Icon(CupertinoIcons.minus),
              ),

              //button for multiplication
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    result = num.tryParse(displayOneController.text)! *
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: const Icon(CupertinoIcons.multiply),
              ),

              //button for multiplication
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    result = num.tryParse(displayOneController.text)! /
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: const Icon(CupertinoIcons.divide),
              ),
            ],
          ),

          //Calculator Buttons
          const SizedBox(
            height: 20,
          ),

//clear button for the calculator
          FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  x = 0;
                  y = 0;
                  result = 0;
                  displayOneController.clear();
                  displayTwoController.clear();
                });
              },
              label: const Text("Clear"))
        ],
      ),
    );
  }
}

//calculator display for the application

class Display extends StatelessWidget {
  const Display(
      {super.key, this.hint = "Enter a number", required this.controller});

  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(children: [
        //Calculator Display
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          autofocus: true,
          style: const TextStyle(fontSize: 20.0, color: Colors.black),
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            filled: true,
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.black54),
            enabledBorder: const OutlineInputBorder(
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
