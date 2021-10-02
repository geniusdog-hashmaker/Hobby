import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby/child_page3.dart';

class Hobbies2 extends StatefulWidget {
  const Hobbies2({Key? key}) : super(key: key);

  @override
  _Hobbies2State createState() => _Hobbies2State();
}

class _Hobbies2State extends State<Hobbies2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/ag.png'),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  SizedBox(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const Hobbies3(),
                      ));
                    },
                    child: const Text('Не хочу'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                  )),
                  SizedBox(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const Hobbies3(),
                      ));
                    },
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
