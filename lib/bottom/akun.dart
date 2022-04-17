import 'package:flutter/material.dart';

class TampilanAkun extends StatelessWidget {
  const TampilanAkun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: unnecessary_new
      appBar: new AppBar(
        title: const Text('My Account'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.lightBlueAccent,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage('images/profil.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                const Text(
                  'MOH. INDI STEFANI',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '362055401047',
                      style: TextStyle(
                          fontSize: 15, color: Colors.amber.withOpacity(0.8)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30, right: 50, left: 50),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: const <Widget>[
                              Icon(Icons.home, color: Colors.grey, size: 58),
                              Text(
                                'Banyuning',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: const <Widget>[
                              Icon(Icons.phone_android,
                                  color: Colors.grey, size: 58),
                              Text(
                                'My Wa',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
