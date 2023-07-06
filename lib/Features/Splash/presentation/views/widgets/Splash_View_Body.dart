import 'package:bookly/Features/Splash/presentation/views/widgets/Custom_Splash_Logo.dart';
import 'package:bookly/core/Utils/AppRouter.dart';
import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    Future.delayed(
      const Duration(milliseconds: 2400),
      () => GoRouter.of(context).push(AppRouter.kHomeView),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSplashLogo(slideAnimation: slideAnimation),
        const SizedBox(
          height: 7.0,
        ),
        Text(
          'Read Free Books',
          style: Styles.textStyle20.copyWith(
            fontSize: 17.0,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ],
    );
  }

  void initSlideAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400))
      ..repeat(reverse: true);
    slideAnimation =
        Tween(begin: const Offset(0, 0), end: const Offset(0, -0.4)).animate(
            CurvedAnimation(
                parent: animationController, curve: Curves.easeOutQuint));
    slideAnimation.addListener(() {
      setState(() {});
    });
  }
}
