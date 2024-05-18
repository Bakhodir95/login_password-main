import 'package:flutter/material.dart';
import 'package:login_password/class/press.dart';
import 'package:login_password/pages/login_screen.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isHidden = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  String? nameError;
  String? emailError;
  String? passwordError1;
  String? passwordError2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
              ),
              SizedBox(height: 10),
              const Text(
                "Create your account for your schedule",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.person, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  errorText: nameError,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'name@example.com',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  errorText: emailError,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController1,
                obscureText: !isHidden,
                decoration: InputDecoration(
                  hintText: '****************',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.key, color: Colors.grey),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    icon: Icon(
                      isHidden ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  errorText: passwordError1,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController2,
                obscureText: !isHidden,
                decoration: InputDecoration(
                  hintText: '****************',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.key, color: Colors.grey),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    icon: Icon(
                      isHidden ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  errorText: passwordError2,
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Do you have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: " Sign in here",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 13,
                          horizontal: 120,
                        ),
                        backgroundColor: Color.fromARGB(255, 5, 51, 202),
                      ),
                      onPressed: () {
                        setState(() {
                          nameError = nameController.text.isEmpty
                              ? "Enter your name"
                              : null;
                          emailError = emailController.text.isEmpty ||
                                  !emailController.text.contains('@')
                              ? "Enter a valid email"
                              : null;
                          passwordError1 = passwordController1.text.isEmpty
                              ? "Enter a password"
                              : null;
                          passwordError2 = passwordController2.text.isEmpty
                              ? "Re-enter your password"
                              : passwordController1.text !=
                                      passwordController2.text
                                  ? "Passwords do not match"
                                  : null;
                        });

                        if (nameError == null &&
                            emailError == null &&
                            passwordError1 == null &&
                            passwordError2 == null) {
                          // Registration successful
                          DatabaseUsers.users.add({
                            "name": nameController.text,
                            "email": emailController.text,
                            "password": passwordController1.text,
                          });

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                contentPadding: const EdgeInsets.all(20),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.check_circle_outline_sharp,
                                      color: Colors.green[600],
                                      size: 60,
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      "Account Successfully Created!",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) => FourthScreen(),
                                        ),
                                      );
                                    },
                                    child: const Text("Log in"),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "By continuing, you agree to Loana's",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Terms of Use",
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: " & ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: "Privacy and Policy",
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
