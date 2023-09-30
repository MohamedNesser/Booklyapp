import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontrol;
  late Animation<Offset> sliedanimation;

  @override
  void initState() {
    super.initState();
    slideanimation();
    navegationhome();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationcontrol.dispose();
  }

  void navegationhome() {
    Future.delayed(Duration(seconds: 1), () {
      //Get.to(()=>Homepage(),transition:Transition.fade,duration: Duration(milliseconds: 250));
      GoRouter.of(context).push('/Homepage');
    });
  }

  void slideanimation() {
    animationcontrol =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    sliedanimation = Tween<Offset>(
      begin: Offset(0, 0),
      
      end: Offset.zero,
    ).animate(animationcontrol);
    animationcontrol.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo-.png'),
          AnimatedBuilder(
            animation: sliedanimation,
            builder: (context, _) {
              return SlideTransition(
                position: sliedanimation,
                child: const Text(
                  "Read free book",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
