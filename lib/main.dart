import 'package:flutter/material.dart';
import 'package:hobby/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/kids.png'),
                fit: BoxFit.cover)),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                child: Text(
                  'Привет!👋',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway-Bold'),
                ),
              ),
              const Text(
                'Находи новые занятия по твоим интересам!',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'Raleway-Regular'),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (_) => const SecondPage(),
                    ));
                  },
                  child: const Text(
                    'Вперёд!',
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
