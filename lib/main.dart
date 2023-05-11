import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main()
{
  runApp(GetMaterialApp(home: MaterialApp(home: gets()),));
}
class gets extends StatefulWidget  {
  const gets({Key? key}) : super(key: key);
  @override
  State<gets> createState() => _getsState();
}
class _getsState extends State<gets> with TickerProviderStateMixin {
  AnimationController? animationController;
  late Animation animation;
  late Animation coloranimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 5));
    animation=Tween<double>(begin: 0.0,end: 200.0).animate(animationController!);

    coloranimation=ColorTween(begin:Colors.orange,end: Colors.black).animate(animationController!);
   animationController!.forward();
    animationController!.addListener(() {
      setState(() {
        print("======${animation.value}");
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color:coloranimation.value,
          height: animation.value,
          width: animation.value,
        ),
      ),
    );
  }
}
