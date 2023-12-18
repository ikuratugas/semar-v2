import 'package:flutter/material.dart';

class MateriBscreen extends StatelessWidget {
  const MateriBscreen({super.key});

  @override
  Widget build(BuildContext context) {
    ListTile listku(String judullist, String isilist) {
      return ListTile(
        leading: Image.asset(
          'assets/dot_icon.png',
          width: 15,
          height: 15,
          fit: BoxFit.cover,
        ),
        title: Text(
          judullist,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(isilist),
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
                          "Sifat Dan Ciri Malaikat",
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
                  listku("Mulia dan Berbakti",
                      "Malaikat adalah makhluk yang mulia dan berbakti kepada Allah SWT. Mereka selalu taat dan patuh kepada perintah Allah SWT."),
                  listku("Merupakan Utusan Allah",
                      "Malaikat adalah utusan Allah SWT yang bertugas untuk menjalankan berbagai macam perintah-Nya. Mereka bertugas untuk menyampaikan wahyu kepada para nabi dan rasul, menjaga manusia, dan mencatat amal perbuatan manusia."),
                  listku("Dapat Bergerak Secepat Kilat",
                      "Malaikat memiliki kemampuan untuk bergerak secepat kilat. Mereka dapat berpindah dari satu tempat ke tempat lain dalam waktu yang sangat singkat."),
                  listku("Tidak Memiliki Jenis Kelamin",
                      "Malaikat tidak memiliki jenis kelamin, baik laki-laki maupun perempuan. Mereka adalah makhluk yang suci dan tidak memiliki hawa nafsu."),
                  listku("Bersih dari Sifat-sifat Kemanusiaan",
                      "Malaikat bersih dari sifat-sifat kemanusiaan, seperti makan, minum, tidur, dan menikah. Mereka juga tidak memiliki rasa sakit, lelah, dan emosi."),
                  listku("Selalu Taat kepada Allah",
                      "Malaikat selalu taat kepada Allah SWT. Mereka tidak pernah melanggar perintah Allah SWT dan selalu melaksanakan tugas-tugasnya dengan baik."),
                  listku("Senantiasa Takut kepada Allah SWT",
                      "Malaikat senantiasa takut kepada Allah SWT. Mereka selalu menjaga diri agar tidak melakukan perbuatan yang diharamkan oleh Allah SWT."),
                  listku("Dapat Berubah Wujud",
                      "Malaikat dapat berubah wujud sesuai dengan kebutuhan. Mereka dapat berubah menjadi manusia, binatang, atau makhluk lainnya."),
                  listku("Memiliki sayap",
                      "Dalam Al-Qur'an, disebutkan bahwa malaikat memiliki sayap. Jumlah sayap malaikat berbeda-beda, ada yang memiliki 2 sayap, 3 sayap, dan 4 sayap."),
                  listku("Cahaya",
                      "Malaikat terbuat dari cahaya. Mereka memiliki cahaya yang sangat terang dan tidak dapat dilihat oleh manusia."),
                  listku("Kekuatan",
                      "Malaikat memiliki kekuatan yang sangat besar. Mereka dapat mengangkat benda-benda yang sangat berat dan melakukan berbagai macam mukjizat."),
                ],
              )),
        ));
  }
}
