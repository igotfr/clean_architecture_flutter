import 'package:cleanarch/core/inject/inject_example.dart';
import 'package:cleanarch/modules/example/presentation/ui/pages/carro_page.dart';
import 'package:cleanarch/core/inject/inject_movie.dart';
import 'package:cleanarch/modules/movie/presentation/ui/pages/home_page.dart';
//import 'package:cleanarch_getit/modules/core/inject/inject_core.dart';
import 'package:flutter/material.dart';

void main() {
  //InjectCore.init();
  //InjectExample.init();
  InjectMovie.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const HomePage(), //CarroPage()
    );
  }
}
