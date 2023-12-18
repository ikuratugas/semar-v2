import 'package:flutter/material.dart';
import 'package:malaikat_apk/controller/soalcontroller.dart';
import 'package:malaikat_apk/screens/materimainscreen.dart';
import 'package:malaikat_apk/screens/soalscreen.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SoalController>(
        builder: (context, s, child) => Scaffold(
              body: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40.0,
                        ),
                        Wrap(spacing: 20.0, children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/judul_icon.png',
                                width: 180,
                                height: 180,
                                fit: BoxFit.cover,
                              )),
                        ]),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            "Mari Menyakini Malaikat Allah",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              // color: Colors.green[300]
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        //------------------------
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MateriMainScreen()));
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(40.0),
                              decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 180, 255, 180),
                                    Color.fromARGB(255, 190, 225, 190),
                                  ],
                                ),
                              ),
                              child: Wrap(
                                children: [
                                  Image.asset(
                                    'assets/materi_icon.png',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
                                    "Materi",
                                    style: TextStyle(fontSize: 22.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        //-----------------------------------
                        const SizedBox(
                          height: 20.0,
                        ),
                        //------------------------
                        GestureDetector(
                          onTap: () {
                            s.acakSoal();
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SoalScreen()));
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(40.0),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 190, 225, 190),
                                    Color.fromARGB(255, 180, 255, 180),
                                  ],
                                ),
                              ),
                              child: Wrap(
                                children: [
                                  Image.asset(
                                    'assets/kuis_icon.png',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
                                    "Kuis",
                                    style: TextStyle(fontSize: 22.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        //-----------------------------------
                        const SizedBox(
                          height: 20.0,
                        ),
                        //------------------------
                        GestureDetector(
                          onTap: () {
                            s.keYoutubeLagu();
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(40.0),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 180, 255, 180),
                                    Color.fromARGB(255, 190, 225, 190),
                                  ],
                                ),
                              ),
                              child: Wrap(
                                children: [
                                  Image.asset(
                                    'assets/song_icon.png',
                                    width: 35,
                                    height: 35,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
                                    "Lagu",
                                    style: TextStyle(fontSize: 22.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        //------------------------
                        const SizedBox(
                          height: 20.0,
                        ),
                        // ---------------------
                        GestureDetector(
                          onTap: () {
                            s.keGameLain();
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(40.0),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 190, 225, 190),
                                    Color.fromARGB(255, 180, 255, 180),
                                  ],
                                ),
                              ),
                              child: Wrap(
                                children: [
                                  Image.asset(
                                    'assets/game_icon.png',
                                    width: 35,
                                    height: 35,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
                                    "Game",
                                    style: TextStyle(fontSize: 22.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        // ---------
                        const SizedBox(
                          height: 40.0,
                        ),
                        // -----------------------------------------------------
                      ]),
                ),
              ),
            ));
  }
}
