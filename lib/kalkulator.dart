import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({Key? key}) : super(key: key);

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  TextEditingController bilanganSatu = TextEditingController();
  TextEditingController bilanganDua = TextEditingController();

  double hasil = 0;

  tambah(double a, var b) {
    setState(() {
      hasil = a + b;
    });
  }

  kurang(var a, var b) {
    setState(() {
      hasil = a - b;
    });
  }

  bagi(var a, var b) {
    setState(() {
      hasil = a / b;
    });
  }

  kali(var a, var b) {
    setState(() {
      hasil = a * b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Sederhana'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 5),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: bilanganSatu,
                decoration: InputDecoration(
                  labelText: "Bilangan Satu",
                  hintText: "Masukan Bilangan",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 5),
              child: TextFormField(
                controller: bilanganDua,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Bilangan Dua",
                  hintText: "Masukan Bilangan",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    tambah(
                      double.parse(bilanganSatu.text),
                      double.parse(bilanganDua.text),
                    );
                  },
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    kurang(
                      double.parse(bilanganSatu.text),
                      double.parse(bilanganDua.text),
                    );
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    bagi(
                      double.parse(bilanganSatu.text),
                      double.parse(bilanganDua.text),
                    );
                  },
                  child: Text("/"),
                ),
                ElevatedButton(
                  onPressed: () {
                    kali(
                      double.parse(bilanganSatu.text),
                      double.parse(bilanganDua.text),
                    );
                  },
                  child: Text("*"),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Hasilnya adalah : ${hasil}",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
