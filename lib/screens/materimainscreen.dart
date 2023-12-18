import 'package:flutter/material.dart';
import 'package:malaikat_apk/screens/materiascreen.dart';
import 'package:malaikat_apk/screens/materibscreen.dart';
import 'package:malaikat_apk/screens/matericscreen.dart';
import 'package:malaikat_apk/screens/materidscreen.dart';
import 'package:malaikat_apk/screens/materiescreen.dart';

class MateriMainScreen extends StatelessWidget {
  const MateriMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox boxListku(String judulMateri) {
      return SizedBox(
        height: 110.0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 180, 255, 180),
                    Color.fromARGB(255, 190, 225, 190),
                  ],
                )),
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Image.asset(
                  'assets/materi_icon.png',
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
              title: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text(
                    judulMateri,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MateriAscreen())));
                      },
                      child: boxListku("Pengertian Iman Kepada Malaikat")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MateriBscreen())));
                      },
                      child: boxListku("Sifat dan Ciri Malaikat")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MateriCscreen())));
                      },
                      child: boxListku("Nama Malaikat dan Tugasnya")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MateriDscreen())));
                      },
                      child: boxListku(
                          "Manfaat dan Fungsi Beriman Kepada Malaikat")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MateriEscreen())));
                      },
                      child: boxListku("Contoh Perilaku")),
                ],
              )),
        ));
  }
}
