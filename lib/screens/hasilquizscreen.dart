import 'package:flutter/material.dart';
import 'package:malaikat_apk/controller/soalcontroller.dart';
import 'package:malaikat_apk/screens/mainscreen.dart';
import 'package:provider/provider.dart';

class HasilQuizScreen extends StatelessWidget {
  const HasilQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SoalController>(
      builder: (context, s, child) => Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Nilai Anda", style: TextStyle(fontSize: 30.0)),
              ),
              Text(s.scoreBenar.toString(),
                  style: const TextStyle(fontSize: 80.0)),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0.0, bottom: 80.0, left: 20.0, right: 20.0),
                child: Text(
                  s.pesanScore,
                  textAlign: TextAlign.center,
                  style: const TextStyle(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()),
                    );
                    s.setIsHasilFalse();
                    s.setScoreBenarReset();
                  },
                  child: const Text("kembali"))
            ],
          ),
        ),
      ),
    );
  }
}
