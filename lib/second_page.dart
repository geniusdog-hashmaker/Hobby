import 'package:flutter/material.dart';
import 'package:hobby/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                aspectRatio: 2 / 2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        'Вход',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Логин(👦)',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white)),
                      style: TextStyle(color: Colors.white),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Код(👨)',
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                      ),
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
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (_) => const ParentOrChild(),
                          ));
                        },
                        child: const Text(
                          'Войти',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white)),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (_) => const ParentOrChild(),
                          ));
                        },
                        child: const Text(
                          'Зарегистрироваться',
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
