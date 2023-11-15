import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wireframe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController viewPertamaController = TextEditingController();
  TextEditingController viewKeduaController = TextEditingController();
  TextEditingController viewKetigaController = TextEditingController();
  bool switchValue = false;

  String Nama = '';
  String Nopolisi = '';

  void publishData() {
    setState(() {
      Nama = viewPertamaController.text;
      Nopolisi = viewKeduaController.text;

      // NIM dan Nama dapat ditambahkan sesuai dengan informasi pribadi Anda
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondPage(
          Nama: Nama,
          Nopolisi: Nopolisi,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Ojek'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: viewPertamaController,
              decoration: InputDecoration(
                labelText: 'Nama',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: viewKeduaController,
              decoration: InputDecoration(
                labelText: 'Nopolisi',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: publishData,
              child: Text('PUBLIKASIKAN'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String Nama;
  final String Nopolisi;

  SecondPage({
    required this.Nama,
    required this.Nopolisi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tukang Ojek'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $Nama'),
            SizedBox(height: 8.0),
            Text('Nopolisi: $Nopolisi'),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}