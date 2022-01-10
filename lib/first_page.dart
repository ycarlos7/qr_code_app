import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share/share.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required String title}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController textController = TextEditingController();
  String data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              autofocus: true,
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Nome da rede",
                labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              autofocus: true,
              controller: textController,
              decoration: const InputDecoration(
                labelText: "Senha da rede",
                labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  data =
                      "Nome da rede: ${nameController.text} Senha da rede: ${textController.text}";
                });
              },
              child: const Icon(Icons.qr_code_rounded),
            ),
            const SizedBox(
              height: 20,
            ),
            QrImage(
              data: data,
              version: QrVersions.auto,
              size: 140,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Share.share(
                  data =
                      "Nome da rede: ${nameController.text} Senha da rede: ${textController.text}",
                );
              },
              child: const Icon(Icons.share),
            ),
          ],
        ),
      ),
    );
  }
}
