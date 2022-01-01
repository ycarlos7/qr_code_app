import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, String? title}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.wifi),
            SizedBox(
              width: 8,
            ),
            Text('WIFI QR CODE GENERATOR'),
            SizedBox(
              width: 8,
            ),
            Icon(Icons.qr_code),
          ],
        ),
      ),
      backgroundColor: Colors.blue[900],
      body: Container(
        padding: const EdgeInsets.only(
          top: 20,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              autofocus: true,
              decoration: const InputDecoration(
                labelText: "Nome da rede",
                labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
