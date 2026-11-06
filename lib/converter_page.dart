import 'package:flutter/material.dart';
import 'package:tawsee77/widget/input_field.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController controller = TextEditingController();
 
  final _formKey = GlobalKey<FormState>();

  double result = 0;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Converter"), backgroundColor: const Color.fromARGB(255, 236, 126, 176)),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Card(
            color: const Color.fromARGB(255, 236, 158, 193),

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("USD"),
                      Icon(Icons.swap_horiz),
                      Text("BDT"),
                    ],
                  ),

                  SizedBox(height: 25),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputField(
                          controller: controller,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          hintText: "Enter Amount",
                          labeltext: "Amount",
                          prefixIcon: Icon(Icons.monetization_on),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Field is Empty!!";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              String input = controller.text;

                              result = double.parse(input) * 124.34;
                              setState(() {});
                            }
                          },
                          child: Text("Convert"),
                        ),
                        SizedBox(height: 20),
                        Text("BDT:$result "),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}