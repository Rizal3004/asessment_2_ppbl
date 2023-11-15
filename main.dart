import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Ojek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Ojek"),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(label: Text("Nama")),
            DataColumn(label: Text("Jumlah Order")),
            DataColumn(label: Text("Omzet")),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Jepri")),
                DataCell(Text("6")),
                DataCell(Text("115.00")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Sulaiman")),
                DataCell(Text("8")),
                DataCell(Text("140.000")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Icang")),
                DataCell(Text("4")),
                DataCell(Text("60.000")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}