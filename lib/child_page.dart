import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby/child_page2.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  _HobbiesState createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/thackvando.png'),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  SizedBox(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const Hobbies2(),
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
                        builder: (_) => const Hobbies2(),
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
