import 'package:stub_guys/ATTANDEE_APP/A_Screens/Splashes/SplashWelcome.dart';
import 'package:flutter/material.dart';

class SplashWelcome0 extends StatefulWidget {
  const SplashWelcome0({Key? key}) : super(key: key);

  @override
  State<SplashWelcome0> createState() => _SplashWelcome0State();
}

class _SplashWelcome0State extends State<SplashWelcome0>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => SplashWelcome(),
            transitionsBuilder: (_, animation, __, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            transitionDuration: Duration(seconds: 1),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Hero(
            tag: 'splashHero',
            child: Image.asset( 
              'Assets/Images/welcome2.jpg', // replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
