import 'package:flutter/material.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      debugShowCheckedModeBanner: false,

    );
  }
}
