import 'package:flutter/material.dart';
import 'package:malaikat_apk/model/soal.dart';
import 'package:url_launcher/url_launcher.dart';

class SoalController extends ChangeNotifier {
  List<Soal> soalnya = [
    Soal(
        soal:
            "Malaikat selalu taat dan patuh kepada Allah SWT. Sifat ini disebut dengan ...",
        jawaban1: "kasih sayang",
        jawaban2: "pemurah",
        jawaban3: "patuh",
        jawaban4: "bijaksana",
        jawaban: "patuh"),
    Soal(
        soal: "Malaikat merupakan makhluk yang ...",
        jawaban1: "tidak taat",
        jawaban2: "tidak suci",
        jawaban3: "tidak patuh",
        jawaban4: "tidak makan dan minum",
        jawaban: "tidak makan dan minum"),
    Soal(
        soal:
            "Malaikat selalu mengerjakan tugasnya dengan baik. Perilaku ini disebut dengan ...",
        jawaban1: "taat",
        jawaban2: "suci",
        jawaban3: "abadi",
        jawaban4: "malas",
        jawaban: "taat"),
    Soal(
        soal:
            "Malaikat selalu menjaga kesucian diri. Perilaku ini disebut dengan ...",
        jawaban1: "taat",
        jawaban2: "abadi",
        jawaban3: "suci",
        jawaban4: "patuh",
        jawaban: "suci"),
    Soal(
        soal:
            "Malaikat selalu menghindari perbuatan maksiat. Perilaku ini disebut dengan ...",
        jawaban1: "taat",
        jawaban2: "suci",
        jawaban3: "abadi",
        jawaban4: "jujur",
        jawaban: "taat"),
    Soal(
        soal: "Beriman kepada malaikat dapat membuat kita menjadi ...",
        jawaban1: "taat kepada Allah SWT",
        jawaban2: "takut kepada malaikat",
        jawaban3: "pemarah",
        jawaban4: "rajin mencontek",
        jawaban: "taat kepada Allah SWT"),
    Soal(
        soal: "Beriman kepada malaikat dapat membuat kita menjadi ...",
        jawaban1: "bermalas-malasan",
        jawaban2: "takut kepada setan",
        jawaban3: "bersemangat beribadah",
        jawaban4: "suka mencuri",
        jawaban: "bersemangat beribadah"),
    Soal(
        soal: "Contoh perilaku beriman kepada malaikat adalah ...",
        jawaban1: "tidak mengerjakan tugas",
        jawaban2: "memusuhi orang lain",
        jawaban3: "rajin beribadah",
        jawaban4: "mencontek",
        jawaban: "rajin beribadah"),
    Soal(
        soal: "Contoh perilaku beriman kepada malaikat adalah ...",
        jawaban1: "berkata jujur",
        jawaban2: "mencontek",
        jawaban3: "iri dengan orang lain",
        jawaban4: "marah",
        jawaban: "berkata jujur"),
    Soal(
        soal: "Contoh perilaku beriman kepada malaikat adalah ...",
        jawaban1: "bermain game",
        jawaban2: "rajin shalat",
        jawaban3: "pergi haji",
        jawaban4: "berbohong",
        jawaban: "rajin shalat"),
    Soal(
        soal: "Tanda-tanda orang yang beriman kepada malaikat adalah ...",
        jawaban1: "meyakini keberadaan malaikat",
        jawaban2: "meneladani sifat-sifat malaikat",
        jawaban3: "menghindari perbuatan dosa",
        jawaban4: "semua jawaban benar",
        jawaban: "semua jawaban benar"),
    Soal(
        soal: "Tujuan Allah menciptakan malaikat antara lain untuk ...",
        jawaban1: "mengatur berbagai urusan manusia",
        jawaban2: "menjadi teman manusia dan binatang",
        jawaban3: "menakut-nakuti jin",
        jawaban4: "memusuhi setan dan makhluk halus",
        jawaban: "mengatur berbagai urusan manusia"),
    Soal(
        soal: "Tujuan Allah menciptakan malaikat antara lain untuk ...",
        jawaban1: "mengatur berbagai urusan manusia",
        jawaban2: "menjadi teman manusia dan binatang",
        jawaban3: "menakut-nakuti jin",
        jawaban4: "memusuhi setan dan makhluk halus",
        jawaban: "mengatur berbagai urusan manusia"),
    Soal(
        soal:
            "Malaikat berbeda dengan manusia. Malaikat tidak memiliki ... sehingga mereka tak membutuhkan pasangan hidup",
        jawaban1: "nafkah",
        jawaban2: "tempat tinggal",
        jawaban3: "jenis kelamin",
        jawaban4: "penghasilan",
        jawaban: "jenis kelamin"),
    //==========tugas malaikat
    Soal(
        soal:
            "Malaikat yang bertugas menyampaikan wahyu kepada para nabi dan rasul adalah ...",
        jawaban1: "Malaikat Israfil",
        jawaban2: "Malaikat Jibril",
        jawaban3: "Malaikat Mikail",
        jawaban4: "Malaikat Malik",
        jawaban: "Malaikat Jibril"),
    Soal(
        soal:
            "Malaikat yang bertugas memberikan rezeki kepada semua makhluk hidup adalah ...",
        jawaban1: "Malaikat Israfil",
        jawaban2: "Malaikat Jibril",
        jawaban3: "Malaikat Mikail",
        jawaban4: "Malaikat Malik",
        jawaban: "Malaikat Mikail"),
    Soal(
        soal:
            "Malaikat yang bertugas meniup sangkakala pada hari kiamat adalah ...",
        jawaban1: "Malaikat Jibril",
        jawaban2: "Malaikat Israfil",
        jawaban3: "Malaikat Mikail",
        jawaban4: "Malaikat Malik",
        jawaban: "Malaikat Israfil"),
    Soal(
        soal:
            "Malaikat yang bertugas mencabut nyawa semua makhluk hidup adalah ...",
        jawaban1: "Malaikat Izrail",
        jawaban2: "Malaikat Jibril",
        jawaban3: "Malaikat Mikail",
        jawaban4: "Malaikat Malik",
        jawaban: "Malaikat Izrail"),
    Soal(
        soal: "Malaikat yang bertugas menanyakan manusia di dalam kubur...",
        jawaban1: "Malaikat Malik dan Malaikat Ridwan",
        jawaban2: "Malaikat Raqib dan Malaikat Atid",
        jawaban3: "Malaikat Israfil dan Malaikat Mikail",
        jawaban4: "Malaikat Munkar dan Malaikat Nakir",
        jawaban: "Malaikat Munkar dan Malaikat Nakir"),
    Soal(
        soal:
            "Malaikat yang bertugas menjaga manusia dari kejahatan adalah ...",
        jawaban1: "Malaikat Jibril",
        jawaban2: "Malaikat Israfil",
        jawaban3: "Malaikat Raqib dan Malaikat Atid",
        jawaban4: "Malaikat Malik dan Malaikat Ridwan",
        jawaban: "Malaikat Raqib dan Malaikat Atid"),
    Soal(
        soal: "Malaikat yang bertugas mencatat amal baik manusia adalah ...",
        jawaban1: "Malaikat Jibril",
        jawaban2: "Malaikat Raqib",
        jawaban3: "Malaikat Atid",
        jawaban4: "Malaikat Ridwan",
        jawaban: "Malaikat Raqib"),
    Soal(
        soal: "Malaikat yang bertugas mencatat amal buruk manusia adalah ...",
        jawaban1: "Malaikat Izrail",
        jawaban2: "Malaikat Raqib",
        jawaban3: "Malaikat Atid",
        jawaban4: "Malaikat Ridwan",
        jawaban: "Malaikat Atid"),
    Soal(
        soal: "Malaikat yang bertugas menjaga pintu neraka adalah ...",
        jawaban1: "Malaikat Malik",
        jawaban2: "Malaikat Ridwan",
        jawaban3: "Malaikat Atid",
        jawaban4: "Malaikat Munkar",
        jawaban: "Malaikat Malik"),
    Soal(
        soal: "Malaikat yang bertugas menjaga pintu surga adalah ...",
        jawaban1: "Malaikat Malik",
        jawaban2: "Malaikat Ridwan",
        jawaban3: "Malaikat Atid",
        jawaban4: "Malaikat Munkar",
        jawaban: "Malaikat Ridwan"),
  ];

  void acakSoal() {
    soalnya.shuffle();
    notifyListeners();
  }

// untuk merubah nilai index soal, jadi yang digunakan hanya satu screen saja tanpa harus membuat screen baru
  int _soalke = 0;
  int get soalke => _soalke;
  void setSoalkeTambah() => _soalke += 1;
  void setSoalkeReset() => _soalke = 0;
  void setSoalkeKurang() => _soalke -= 1;

  bool _isHasil = false;
  bool get isHasil => _isHasil;
  void setIsHasilTrue() => _isHasil = true;
  void setIsHasilFalse() => _isHasil = false;

  int _scoreBenar = 0;
  int get scoreBenar => _scoreBenar;
  setScoreBenar() => _scoreBenar += 10;
  setScoreBenarReset() => _scoreBenar = 0;

  // check jawaban
  void checkJawaban(String jawabannya) {
    if (soalnya[soalke].jawaban == jawabannya) {
      setScoreBenar();
    }
  }

  // jumlah soal yang akan tampil di app
  final totalsoal = 10;

  String pesanScore = "";
  void hasilPesanScore() {
    if (scoreBenar == 0) {
      pesanScore = "Kamu sudah mencoba yang terbaik. Jangan menyerah!";
    } else if (scoreBenar == 10) {
      pesanScore = "Kamu sudah mencoba yang terbaik. Jangan menyerah!";
    } else if (scoreBenar == 20) {
      pesanScore =
          "Kamu bisa lebih baik lagi. Jangan takut untuk mencoba lagi.";
    } else if (scoreBenar == 30) {
      pesanScore = "Kamu bisa lebih baik lagi. Jangan menyerah!";
    } else if (scoreBenar == 40) {
      pesanScore = "Kamu sudah mencoba yang terbaik. Lanjutkan usahamu!";
    } else if (scoreBenar == 50) {
      pesanScore =
          "Kamu sudah menjawab beberapa soal dengan benar. Kamu bisa lebih baik lagi.";
    } else if (scoreBenar == 60) {
      pesanScore = "Kamu sudah belajar dengan baik. Lanjutkan usahamu!";
    } else if (scoreBenar == 70) {
      pesanScore =
          "Kamu sudah menjawab banyak soal dengan benar. Kamu bisa lebih baik lagi.";
    } else if (scoreBenar == 80) {
      pesanScore = "Kamu sudah belajar dengan baik. Lanjutkan usahamu!";
    } else if (scoreBenar == 90) {
      pesanScore = "Hebat! Kamu sudah menjawab banyak soal dengan benar.";
    } else if (scoreBenar == 100) {
      pesanScore = "Wah, nilai kamu sempurna! Kamu pintar sekali.";
    } else {
      pesanScore = "";
    }
  }

  void pindahSoal(String jawaban) {
    setSoalkeTambah();

    if (_soalke != 0) {
      setSoalkeKurang();
      checkJawaban(jawaban);
      setSoalkeTambah();
    }

    // if (soalke > soalnya.length - 1) { // bila ingin menampilkan semua soalnya *uncomment this, and comment in below
    if (soalke > totalsoal - 1) {
      setSoalkeReset();
      setIsHasilTrue();
      hasilPesanScore();
    }
    notifyListeners();
  }

  final Uri url = Uri.parse(
      'https://www.youtube.com/results?search_query=lagu+malaikat+dan+tugasnya');
  Future<void> keYoutubeLagu() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  final Uri url2 = Uri.parse('https://www.baamboozle.com/game/1992718');
  Future<void> keGameLain() async {
    if (!await launchUrl(url2)) {
      throw Exception('Could not launch $url');
    }
  }
}
