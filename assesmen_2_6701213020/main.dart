import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wireframe Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyWireframeLayout(),
    );
  }
}

class MyWireframeLayout extends StatelessWidget {
  final int nim = 123456; // Ganti dengan NIM Anda

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asessment_2_6701213020'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8.0),
                  labelText: 'Nama barang',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8.0),
                  labelText: 'Deskripsi',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8.0),
                  labelText: 'Harga',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text('Kondisi barang'),
            SizedBox(height: 16.0),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                Text('Baru'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                Text('Bekas'),
              ],
            ),
            SizedBox(height: 16.0),
            Text('Pengiriman dalam kota saja:'),
            SizedBox(height: 8.0),
            nim % 2 != 0
                ? Checkbox(value: false, onChanged: (value) {})
                : Switch(value: false, onChanged: (value) {}),
            SizedBox(height: 16.0),
            Text('Menerima retur:'),
            SizedBox(height: 8.0),
            nim % 2 != 0
                ? Checkbox(value: false, onChanged: (value) {})
                : Switch(value: false, onChanged: (value) {}),    
          ],
        ),
      ),
    );
  }
}
