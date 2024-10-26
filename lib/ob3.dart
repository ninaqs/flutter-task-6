import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:eshop/login.dart';
import 'package:flutter/material.dart';

class Prices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blueGrey.shade200, Colors.white])),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Prices Have Never Been Lower!',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 36)),
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.06),
                      AnimatedTextKit(
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TypewriterAnimatedText('Seasonal discounts.',
                              textStyle: TextStyle(
                                  color: Colors.red.shade700, fontSize: 16))
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.06),
                      AnimatedTextKit(
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TypewriterAnimatedText(
                              'Daily deals and loyalty rewards.',
                              textStyle: TextStyle(
                                  color: Colors.red.shade700, fontSize: 16))
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.06),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red.shade800),
                              foregroundColor:
                                  const MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: const Text('Start Shopping!')),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: double.infinity,
          child: Image.asset(
            'images/prices.jpg',
            fit: BoxFit.cover,
            alignment: Alignment.bottomRight,
          ),
        ),
      ],
    );
  }
}
