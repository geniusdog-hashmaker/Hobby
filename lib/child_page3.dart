import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby/child_page4.dart';

class Hobbies3 extends StatefulWidget {
  const Hobbies3({Key? key}) : super(key: key);

  @override
  _Hobbies3State createState() => _Hobbies3State();
}

class _Hobbies3State extends State<Hobbies3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/muzic.png'),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  SizedBox(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const Hobbies4(),
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
                        builder: (_) => const Hobbies4(),
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
