import 'package:flutter/material.dart';

class MateriEscreen extends StatelessWidget {
  const MateriEscreen({super.key});

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
                          "Contoh Perilaku",
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
                      "Selalu berperilaku jujur dan menjauhi dusta sebab di hatinya tertanam keyakinan bahwa malaikat akan mengawasi dan mencatat amalnya."),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/pic_jujur.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      )),
                  listku(
                      "Berusaha dengan maksimal untuk mencari rizki yang baik dan halal."),
                  listku(
                      "Selalu memohon kepada Allah atas segala perlindungan dari segala musibah."),
                  listku(
                      "Berusaha mempersiapkan diri untuk menghadapi kematin."),
                  listku("Selalu mencari dan memohon hidayah serta bersyukur."),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/pic_syukur.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      )),
                  listku(
                      "Selalu memohon kepada Allah agar dilapangkan di alam kubur dan di ringankan dari siksa kubur."),
                  listku(
                      "Selalu memiliki niat baik dalam segala perbuatan, baik ucapan maupun perbuatan."),
                  listku(
                      "Menjauhi niat buruk, perkataan yang kotor, perbuatan yang jelek dan menjauhi perilaku tercela."),
                  listku(
                      "Selalu memohon kepada Allah agar masuk surga dengan ridhoNya."),
                  listku(
                      "Selalu berusaha beramal saleh dan menjauhi perbuatan dosa"),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/pic_amal.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      )),
                  listku(
                      "Selalu memohon kepada Allah agar terhindar dari siksa api neraka.")
                ],
              )),
        ));
  }
}
