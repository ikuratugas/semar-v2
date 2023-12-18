import 'package:flutter/material.dart';

class MateriCscreen extends StatelessWidget {
  const MateriCscreen({super.key});

  @override
  Widget build(BuildContext context) {
    ListTile listku(String gambar, String isilist, String deksripsi) {
      return ListTile(
        leading: Image.asset(
          'assets/$gambar',
          width: 30,
          height: 30,
          fit: BoxFit.cover,
        ),
        title: Text(isilist),
        subtitle: Text(deksripsi),
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
                        "Nama Malaikat dan Tugasnya",
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
                listku("1_icon.png", "Malaikat Jibril", "Menyampaikan Wahyu"),
                listku("2_icon.png", "Malaikat Mikail", "Membagikan Rezeki"),
                listku("3_icon.png", "Malaikat Israfil", "Meniup Sangkalala"),
                listku("4_icon.png", "Malaikat Izrail", "Mencabut Nyawa"),
                listku(
                    "5_icon.png", "Malaikat Munkar", "Menanyakan Dalam Kubur"),
                listku(
                    "6_icon.png", "Malaikat Nakir", "Menanyakan Dalam Kubur"),
                listku("7_icon.png", "Malaikat Raqib", "Mencatat Amal Baik"),
                listku("8_icon.png", "Malaikat Atid", "Mencatat Amal Buruk"),
                listku("9_icon.png", "Malaikat Malik", "Menjaga Pintu Neraka"),
                Container(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/10_icon.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    title: const Text("Malaikat Ridwan"),
                    subtitle: const Text("Menjaga pintu surga"),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
