import 'package:flutter/material.dart';
import 'package:hobby/child_reg.dart';
import 'package:hobby/second_page.dart';
import 'package:hobby/parent_reg.dart';

class ParentOrChild extends StatelessWidget {
  const ParentOrChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/kids.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Регистрация',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => const ParentReg(),
                  ));
                },
                child: const Text('👨Родитель',
                    style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0x00c4c4c4).withOpacity(0.5)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => ChildReg(),
                  ));
                },
                child: const Text('👦Ребёнок',
                    style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0x00c4c4c4).withOpacity(0.5)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (_) => const SecondPage(),
                    ));
                  },
                  child: const Text(
                    'Войти',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
