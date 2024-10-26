import 'package:eshop/register.dart';
import 'package:eshop/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blueGrey.shade200, Colors.white])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Welcome!',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 32),
                        ),
                        const Text('Have an account? Log in:',
                            style: TextStyle(fontSize: 20)),
                        Container(
                            padding: const EdgeInsets.all(12),
                            child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your username';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white60,
                                    hintText: 'Username',
                                    border: OutlineInputBorder()))),
                        Container(
                            padding: const EdgeInsets.all(12),
                            child: TextFormField(
                                validator: (value) {
                                  if (value!.length < 8) {
                                    return 'Password length should be at least 8';
                                  }
                                  if (!(value.contains(RegExp(r'[A-Za-z]')) &&
                                      value.contains(RegExp(r'[0-9]')))) {
                                    return 'Password should contain letters and digits';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white60,
                                    hintText: 'Password',
                                    border: OutlineInputBorder()))),
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                              }
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.red.shade800),
                                foregroundColor: const MaterialStatePropertyAll(
                                    Colors.white)),
                            child: const Text('Log in',
                                style: TextStyle(fontSize: 20)))
                      ])),
              Column(children: [
                const Text(
                  "First visit? Join Us",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.red.shade800),
                        foregroundColor:
                            const MaterialStatePropertyAll(Colors.white)),
                    child: const Text('Create Account',
                        style: TextStyle(fontSize: 20)))
              ])
            ],
          ),
        ));
  }
}
