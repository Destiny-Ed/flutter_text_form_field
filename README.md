# flutter_text_form_field

A new Flutter package that provide already made text form field

##Usage

[Example] (https://github.com/Destiny-Ed/flutter_text_form_field/blob/main/example/example_app.dart)

To use this package :
*add the dependency to your [pubspec.yaml] file

```yaml
    dependencies:
        flutter:
            sdk : flutter
        flutter_text_form_field: ^0.0.3
```

```dart
    //...
    Example Usage
    //...

import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.purple),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "Continue to your account",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const SizedBox(
                height: 100,
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(30.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CustomTextField(
                              _emailController,
                              hint: 'Email',
                              password: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              _passwordController,
                              hint: 'Password',
                              obscure: true,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                //Forgot Password Page
                              },
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  child:
                                      const Text("Can't remember password?")),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            print(_emailController.text);
                            print(_passwordController.text);
                            //Validate User Inputs
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Navigate to Register Page
                          },
                          child: Text(
                            "Want to join?",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```


## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
