import 'package:flutter/material.dart';
import 'package:hobby/second_page.dart';

class ChildReg extends StatelessWidget {
  const ChildReg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/kids.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(68.0),
            child: Container(
              color: const Color(0x00c4c4c4).withOpacity(0.5),
              padding: const EdgeInsets.all(20.0),
              child: AspectRatio(
                aspectRatio: 2 / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Регистрация',
                      style: TextStyle(color: Colors.white),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Фамилия',
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Имя',
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Логин',
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Твой код:',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                          enabled: false),
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: const Alignment(0.75, 0.75),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Подтвердить',
                        ),
                      ),
                    ),
                    TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white)),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (_) => const SecondPage(),
                          ));
                        },
                        child: const Text(
                          'Войти',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
