import 'package:flutter/material.dart';

class MateriDscreen extends StatelessWidget {
  const MateriDscreen({super.key});

  @override
  Widget build(BuildContext context) {
    ListTile listku(String isilist) {
      return ListTile(
        leading: Image.asset(
          'assets/dot_icon.png',
          width: 15,
          height: 15,
          fit: BoxFit.cover,
        ),
        title: Text(isilist),
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
                  const SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "Manfaat & Fungsi Beriman Kepada Malaikat",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  listku(
                      "Senantiasa patuh menjalankan perintah Allah SWT, dan menjauhi laranganya."),
                  listku(
                      "Senantiasa menolong, menjaga, optimis, penuh semangat dan tidak putus asa."),
                  listku(
                      "Senantiasa melakukan hal yang terbaik dalam rangka meningkatkan ketakwaan."),
                  listku("Senantiasa berlomba-lomba dalam kebaikan."),
                  listku(
                      "Senantiasa mensyukuri rezeki berapapun yang diperolehnya."),
                  listku(
                      "Senantiasa berhati-hati dalam berbicara dan bertindak."),
                  listku(
                      "Mengetahui keagungan Allah SWT yang telah menciptakan makhluk-makhluk mulia seperti malaikat."),
                  listku(
                      "Kencintaan kepada malaikat karena ibadah-ibadah yang mereka lakukan."),
                ],
              )),
        ));
  }
}
