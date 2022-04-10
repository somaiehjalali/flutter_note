import 'package:flutter/material.dart';
import 'package:flutter_note/controllers/providers/splash_provider.dart';
import 'package:flutter_note/ui/pages/splash/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const _Providers());
}

class _Providers extends StatelessWidget {
  const _Providers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashProvider(context))
      ],
      child: const MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
    );
  }
}