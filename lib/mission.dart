import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marshaalexislikorawung_flutterwidget/booking.dart';

class MissionPage extends StatefulWidget {
  const MissionPage({super.key});

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  bool shouldChangeColor = false;

  void toggleColor() {
    setState(() {
      shouldChangeColor = !shouldChangeColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color fabColor = shouldChangeColor ? Colors.red : Colors.grey;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mission 1"),
          centerTitle: false,
        ), //appbar
        floatingActionButton: Stack(
          children: [
            Positioned(
              top: 16.0, // Adjust as needed
              right: 0.0, // Adjust as needed
              child: Container(
                margin:
                    EdgeInsets.only(top: 160, right: 0), // Add margin to the FAB
                child: FloatingActionButton(
                  onPressed: () {
                    toggleColor();
                  },
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite, color: fabColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    
                  ),
                  
                ),
              ),
            ),
            Positioned(
              top: 16.0, // Adjust as needed
              right: 0.0, // Adjust as needed
             child: Container(
                margin:
                    EdgeInsets.only(top: 770, right: 0), // Add margin to the FAB
                    child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blue[200]!, Colors.blue[50]!],
                  ),
                   borderRadius: BorderRadius.circular(20.0)// Makes it circular
                ),
                child: FloatingActionButton.extended(
                  onPressed: () {
                     Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return BookingPage();
                        }));
                  },
                  label: Text('Book Now'),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  foregroundColor: Colors.black, // Remove elevation to match design
                  
                )
              ),
            ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue[100]!, Colors.white],
            ),
          ),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    'images/cat.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Row(
                          children: [
                            Flexible(
                                child: Container(
                                    margin: EdgeInsets.all(4),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset('images/cat1.jpeg',
                                            fit: BoxFit.fill)))),
                            Flexible(
                                child: Container(
                                    margin: EdgeInsets.all(4),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset('images/cat2.jpeg',
                                            fit: BoxFit.fill)))),
                            Flexible(
                                child: Container(
                                    margin: EdgeInsets.all(4),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset('images/cat3.jpeg',
                                            fit: BoxFit.fill)))),
                            Flexible(
                                child: Container(
                                    margin: EdgeInsets.all(4),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset('images/cat4.jpeg',
                                            fit: BoxFit.fill))))
                          ],
                        )),
                  ),
                ]),
              ),
              Flexible(
                flex: 4,
                child: Column(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Center(
                            child: Text(
                              "Welcome To The Cat Veteranian",
                              style: TextStyle(
                                fontSize: 20.0, // Increased font size
                                fontWeight: FontWeight.bold, // Bold
                              ),
                            ),
                          ),
                        )),
                    Flexible(
                      flex: 11,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: SingleChildScrollView(
                          child: Text(
                            "A dedicated cat veterinarian plays a crucial role in ensuring the well-being of our feline companions. These specialized professionals undergo rigorous training to understand the unique physiology and behavior of cats. From routine check-ups to complex surgeries, they provide a wide range of services to keep our furry friends in optimal health. Their compassion and expertise make them invaluable members of any pet owner's support system. \n \nOne of the key responsibilities of a cat veterinarian is preventative care. They advise on vaccinations, nutrition, and exercise routines tailored to a cat's specific needs. Through regular examinations, they can catch and address potential health issues before they escalate. This proactive approach helps to extend the lifespan of our beloved pets and ensures they lead happy, fulfilling lives. \n \nIn addition to general care, cat veterinarians are adept at diagnosing and treating a variety of medical conditions. They utilize cutting-edge technology and their extensive knowledge of feline medicine to provide accurate assessments. Whether it's managing chronic illnesses, performing surgeries, or administering specialized treatments, they work tirelessly to alleviate any discomfort our cats may experience. \n \nBeyond their medical expertise, cat veterinarians are often a source of comfort and support for pet owners. They offer guidance on behavior training, offer advice on providing a stimulating environment, and are there to lend a sympathetic ear during difficult times. Their commitment to the well-being of cats and their dedication to fostering strong bonds between pets and their owners make them invaluable members of the veterinary community.",
                            style: TextStyle(
                              fontSize: 15.0, // Increased font size
                            ),
                          ),
                        ),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
