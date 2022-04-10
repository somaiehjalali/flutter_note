import 'package:flutter/material.dart';
import 'package:flutter_note/controllers/providers/splash_provider.dart';
import 'package:flutter_note/ui/pages/home/home_page.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    SplashProvider splashProvider = Provider.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TODO : add image insted of below widget
            Icon(Icons.note),
            Text("Flutter note"),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
