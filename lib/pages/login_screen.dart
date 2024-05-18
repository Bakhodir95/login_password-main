import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:login_password/pages/1main_page.dart';
import 'package:login_password/pages/last.dart';

class FourthScreen extends StatefulWidget {
  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  bool isHiddein = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Text(
                    "Welcome back",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Let's Login to Connect your email",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: 'name@example.com',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: isHiddein,
                    decoration: InputDecoration(
                        hintText: '****************',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: const Icon(
                          Icons.key,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              isHiddein = !isHiddein;

                              setState(() {});
                            },
                            icon: Icon(
                              isHiddein == true
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            )),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: " Sign up here",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              decorationColor:
                                  Colors.black, // Customize underline color
                              decorationThickness:
                                  1, // Customize underline thickness
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 120)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 5, 51, 202))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LastPage()),
                        );
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                        child: Row(
                          children: [Icon(Icons.apple), Text(" Apple")],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                        child: Row(
                          children: [
                            Icon(
                              MaterialCommunityIcons.google,
                              color: Colors.blue,
                            ),
                            Text(" Google"),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("By continuing, you agree to Loana's",
                      style: TextStyle(color: Colors.grey)),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Terms of Use",
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        )),
                    TextSpan(
                        text: " & ",
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                    TextSpan(
                        text: "Privacy and Policy",
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ))
                  ]))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
