import 'package:flutter/material.dart';
import 'widget/input_field.dart';
import 'registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final emailRegex =
      RegExp(r'^[\w.-]+@[\w.-]+\.[a-zA-Z]{2,}$');

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5),

      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE88BAF),
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),

          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),

            child: Card(
              elevation: 8,
              shadowColor: const Color(0xFFF3B5CC),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),

              child: Padding(
                padding: EdgeInsets.all(25),

                child: Form(
                  key: _formKey,

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      CircleAvatar(
                        radius: 42,
                        backgroundColor: Color(0xFFFAD1E0),
                        child: Icon(
                          Icons.favorite,
                          size: 45,
                          color: Color(0xFFC85C87),
                        ),
                      ),

                      SizedBox(height: 18),

                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC85C87),
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        "Login to continue",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 30),

                      InputField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        hintText: "Enter your email",
                        labeltext: "Email",
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color(0xFFE88BAF),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email is required";
                          }

                          if (!emailRegex.hasMatch(value.trim())) {
                            return "Enter a valid email";
                          }

                          return null;
                        },
                      ),

                      SizedBox(height: 20),

                      InputField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        hintText: "Enter your password",
                        labeltext: "Password",
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color(0xFFE88BAF),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password is required";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 30),

                      SizedBox(
                        width: double.infinity,
                        height: 50,

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE88BAF),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 3,
                          ),

                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print("Login Successful");
                            }
                          },

                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Text("Don't have an account?"),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegistrationPage(),
                            ),
                          );
                        },

                        child: Text(
                          "Register Now",
                          style: TextStyle(
                            color: Color(0xFFC85C87),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
