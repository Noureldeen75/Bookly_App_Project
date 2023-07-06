import 'package:flutter/material.dart';
import 'package:bookly/constants.dart';

class CustomSplashLogo extends StatelessWidget {
  const CustomSplashLogo({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Image.asset(kprelogo),
        Column(
          children: [
            AnimatedBuilder(
              animation: slideAnimation,
              builder: (context, _) => SlideTransition(
                position: slideAnimation,
                child: const CircleAvatar(
                  radius: 27,
                  backgroundColor: Color.fromARGB(255, 241, 240, 240),
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Container(
              height: 4.0,
              width: 50.0,
              color: const Color.fromARGB(255, 241, 240, 240),
            )
          ],
        ),
        Image.asset(kcomplogo),
        const Spacer(),
      ],
    );
  }
}
