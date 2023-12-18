import 'package:flutter/material.dart';
import 'package:malaikat_apk/controller/soalcontroller.dart';
import 'package:malaikat_apk/screens/mainscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SoalController())
      ],
      child: MaterialApp(
        title: 'Senang Membaca dan Bermain',
        theme: ThemeData(
          fontFamily: "Poppins",
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
