import 'package:flutter/material.dart';
import 'package:malaikat_apk/controller/soalcontroller.dart';
import 'package:malaikat_apk/screens/hasilquizscreen.dart';
import 'package:provider/provider.dart';

class SoalScreen extends StatelessWidget {
  const SoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SoalController>(builder: (context, s, child) {
      Padding soalStyle(String pilihan) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: double.infinity,
              height: 60.0,
              child: ElevatedButton(
                  onPressed: () {
                    s.pindahSoal(pilihan);
                  },
                  child: Text(
                    pilihan,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16.0),
                  )),
            ));
      }

      return Scaffold(
        body: s.isHasil
            ? const HasilQuizScreen()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        s.soalnya[s.soalke].soal.toString(),
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                    soalStyle(s.soalnya[s.soalke].jawaban1.toString()),
                    soalStyle(s.soalnya[s.soalke].jawaban2.toString()),
                    soalStyle(s.soalnya[s.soalke].jawaban3.toString()),
                    soalStyle(s.soalnya[s.soalke].jawaban4.toString()),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       s.pindahSoal(s.soalnya[s.soalke].jawaban2.toString());
                    //     },
                    //     child: Text(s.soalnya[s.soalke].jawaban2.toString())),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       s.pindahSoal(s.soalnya[s.soalke].jawaban3.toString());
                    //     },
                    //     child: Text(s.soalnya[s.soalke].jawaban3.toString())),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       s.pindahSoal(s.soalnya[s.soalke].jawaban4.toString());
                    //     },
                    //     child: Text(s.soalnya[s.soalke].jawaban4.toString()))
                  ],
                ),
              ),
      );
    });
  }
}
