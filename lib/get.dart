import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'main.dart';

void main()
{
  runApp(GetMaterialApp(home: MaterialApp(home: getss()),));
}

class getss extends StatefulWidget {
  const getss({Key? key}) : super(key: key);

  @override
  State<getss> createState() => _getssState();
}

class _getssState extends State<getss> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          TextField(
            controller: t2,
          ),
          ElevatedButton(onPressed: () {

          }, child: Text("SUBMIT")),
        ],
      ),
    );
  }
}
