import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:marshaalexislikorawung_flutterwidget/mission.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final _bookingKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlFullname = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Page"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Form(
            key: _bookingKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: ctrlFullname,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Fullname',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      final nameRegExp = RegExp(r'^[a-zA-Z ]+$');
                      return !nameRegExp.hasMatch(value.toString())
                          ? 'Please enter a valid name'
                          : null;
                    },
                  ),
                  SizedBox(height: 24),
                  TextFormField(
                    controller: ctrlEmail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return !EmailValidator.validate(value.toString())
                          ? 'Email tidak valid!'
                          : null;
                    },
                  ),
                  SizedBox(height: 24),
                  TextFormField(
                    controller: ctrlPhone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      final phoneRegExp = RegExp(r'^\+?0\d{9,}$');
                      return !phoneRegExp.hasMatch(value.toString())
                          ? 'Please enter a valid phone number'
                          : null;
                    },
                  ),
                  SizedBox(height: 24),
                  TextFormField(
                    controller: ctrlCity,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                      labelText: 'City',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.location_city),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      final cityRegExp = RegExp(r'^[a-zA-Z ]+$');
                      return !cityRegExp.hasMatch(value.toString())
                          ? 'Please enter a valid city name'
                          : null;
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (ctrlFullname.text.isEmpty ||
                          ctrlEmail.text.isEmpty ||
                          ctrlPhone.text.isEmpty ||
                          ctrlCity.text.isEmpty) {
                        // Show dialog if any field is empty
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Error'),
                              content: Text('Please fill in all fields.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        // Show booking confirmation dialog
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Booking Confirmation"),
                              content: Text(
                                  "Name: ${ctrlFullname.text} \n\n Email: ${ctrlEmail.text} \n\n Phone: ${ctrlPhone.text} \n\n City: ${ctrlCity.text}"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return MissionPage();
                                    }));
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    icon: Icon(Icons.save),
                    label: Text("Book Now"),
                    style: ElevatedButton.styleFrom(
                        elevation: 2,
                        padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                        backgroundColor: Colors.blue[700],
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
