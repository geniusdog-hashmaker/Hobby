import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hobbies4 extends StatefulWidget {
  const Hobbies4({Key? key}) : super(key: key);

  @override
  _Hobbies4State createState() => _Hobbies4State();
}

class _Hobbies4State extends State<Hobbies4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/yunost.png'),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  SizedBox(
                      child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Не хочу'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                  )),
                  SizedBox(
                      child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Хочу!'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                  ))
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            )));
  }
}
