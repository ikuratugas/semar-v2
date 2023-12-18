import 'package:flutter/material.dart';

class MateriAscreen extends StatelessWidget {
  const MateriAscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "Pengertian Iman Kepada Malaikat",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Iman kepada malaikat adalah mempercayai dan meyakini bahwa Allah SWT telah menciptakan malaikat yang diberi tugas untuk mengatur alam dan mengurus perjalanan alam semesta dan tugas tertentu lainnya. Keberadaan malaikat sebagai makhluk gaib wajib diyakini oleh setiap mulsim. Meyakini keberadaanya merupakan pokok-pokok keimanan (rukum iman). Iman kepada malaikat adalah rukun iman yang kedua.",
                    textAlign: TextAlign.justify,
                  )
                ],
              )),
        ));
  }
}
