import 'package:bookapp/contant.dart';
import 'package:bookapp/core/assetsimages.dart';
import 'package:bookapp/features/splashview/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  late Animation<Offset> photoanimation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidinganimation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    photoanimation = Tween<Offset>(
      begin: Offset(0, -10),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: photoanimation,
          builder: (context, _) {
            return SlideTransition(
              position: photoanimation,
              child: SvgPicture.asset(
                Assetsimages.logo,
                width: 200,
                color: kLogoColor,
              ),
            );
          },
        ),
        SlidingText(slidinganimation: slidinganimation),
      ],
    );
  }
}
