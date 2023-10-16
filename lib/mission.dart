import 'package:flutter/material.dart';

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
          children: <Widget>[
            Positioned(
              top: 180.0,
              right: 0.0,
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
                              "sebagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.vSatu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat. Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, \n \n tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat. sebagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.vSatu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat. Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.\n \n Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat. sebagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan \n \n resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.vSatu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat. Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat. sebagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.vSatu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat. Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan \n \n resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat.Satu aplikasi untuk berbagai kebutuhan – periksa dokter, tes lab hingga penebusan resep obat."),
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
