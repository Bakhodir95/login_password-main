import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_password/class/press.dart';
import 'package:login_password/pages/3third_screen.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final PageController controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 380,
                      width: double.infinity,
                      child: PageView(
                        controller: controller,
                        onPageChanged: (value) {
                          index = value;
                          print("Salom$value");
                          setState(() {});
                        },
                        children: [
                          pageView("images/second.png"),
                          pageView("images/third.png"),
                          pageView("images/fourth.png"),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 7,
                          backgroundColor:
                              index == 0 ? Color.fromARGB(255, 5, 51, 202) : null,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor:
                              index == 1 ? Color.fromARGB(255, 5, 51, 202) : null,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: index == 2
                              ? const Color.fromARGB(255, 5, 51, 202)
                              : null,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      child: Text(
                        "Set Your Schedule",
                        style:
                            TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
                      ),
                    ),
                    const Text(
                      "Quiqckly see your upcoming events, tasks,\nconfidence calls, weather and more",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 20)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 5, 51, 202))),
                        onPressed: () {
                          controller.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.bounceOut,
                          );
                          if (index == 2) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThirdScreen()),
                            );
                          }
                          print(controller);
                          setState(() {});
                        },
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                              color: Colors.white),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
