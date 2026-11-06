import 'package:flutter/material.dart';
import 'widget/input_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() =>
      _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final emailRegex =
      RegExp(r'^[\w.-]+@[\w.-]+\.[a-zA-Z]{2,}$');

  final passwordRegex =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$');

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5),

      appBar: AppBar(
        title: Text(
          "Registration",
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
                          Icons.person_add_alt_1,
                          size: 45,
                          color: Color(0xFFC85C87),
                        ),
                      ),

                      SizedBox(height: 18),

                      Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC85C87),
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        "Join us and get started!",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 30),

                      // Name Field
                      InputField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        hintText: "Enter your name",
                        labeltext: "Full Name",
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Color(0xFFE88BAF),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Name is required";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 20),

                      // Email Field
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

                      // Password Field
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

                          if (!passwordRegex.hasMatch(value)) {
                            return "Use 8+ characters, uppercase, lowercase, number & special character";
                          }

                          return null;
                        },
                      ),

                      SizedBox(height: 20),

                      // Confirm Password Field
                      InputField(
                        controller: confirmPasswordController,
                        keyboardType: TextInputType.text,
                        hintText: "Confirm your password",
                        labeltext: "Confirm Password",
                        prefixIcon: Icon(
                          Icons.lock_reset,
                          color: Color(0xFFE88BAF),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please confirm your password";
                          }

                          if (value != passwordController.text) {
                            return "Passwords do not match";
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
                              print("Registration Successful");
                            }
                          },

                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Text("Already have an account?"),

                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },

                        child: Text(
                          "Login Now",
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
