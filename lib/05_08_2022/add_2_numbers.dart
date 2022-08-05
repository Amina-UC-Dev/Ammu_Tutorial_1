import 'package:flutter/material.dart';

class AddTwoNumbers extends StatefulWidget {
  const AddTwoNumbers({Key? key}) : super(key: key);

  @override
  State<AddTwoNumbers> createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {

  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();

  double sum =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add 2 Numbers"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             sum != 0 ? Text("Total SUM : $sum") : Container(),
              SizedBox(height: sum != 0 ? 50 : 0,),
              TextField(
                controller: first,
                decoration: const InputDecoration(
                  labelText: "Enter first number",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: second,
                decoration: const InputDecoration(
                  labelText: "Enter second number",
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                onPressed: () {
                  print("BEFORE : $sum");
                  setState((){
                    sum = double.parse(first.text) + double.parse(second.text);
                  });
                  print("AFTER : $sum");
                },
                child: const Text(
                  "ADD",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
