import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  _HobbiesState createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  Image pict1 = Image.asset('assets/images/thackvando.png');
  Image pict2 = Image.asset('assets/images/ag.png');
  Image pict3 = Image.asset('assets/images/muzic.png');
  Image pict4 = Image.asset('assets/images/yunost.png');
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
