import 'package:animation_app/screens/explicit/animated_builder_screen.dart';
import 'package:animation_app/screens/explicit/positioned_transtion_screen.dart';
import 'package:animation_app/screens/page_transtion/mix_fade_size_transtion.dart';
import 'package:animation_app/screens/page_two.dart';
import 'package:flutter/material.dart';

import 'screens/explicit/fade_transtion_screen.dart';
import 'screens/explicit/indexed_stack_transtion_screen.dart';
import 'screens/explicit/positioned_dirctional_transtion_screen.dart';
import 'screens/explicit/rotation_transtion_screen.dart';
import 'screens/explicit/size_transtion_screen.dart';
import 'screens/explicit/text_style_transtion_screen.dart';
import 'screens/explicit/tween_animation_builder_screen.dart';
import 'screens/implicit/animate_cross_fade_screen.dart';
import 'screens/implicit/animate_switcher_screen.dart';
import 'screens/implicit/animated_align_screen.dart';
import 'screens/implicit/animated_container_screen.dart';
import 'screens/implicit/animated_list_state_screen.dart';
import 'screens/implicit/animated_opacity_screeen.dart';
import 'screens/implicit/animated_padding_screen.dart';
import 'screens/implicit/animated_physical_screen.dart';
import 'screens/implicit/animated_positioned_dirctional_screen.dart';
import 'screens/implicit/animated_positioned_screen.dart';
import 'screens/implicit/animated_text_screen.dart';
import 'screens/page_transtion/fade_transtion.dart';
import 'screens/page_transtion/mix_scale_rotate_transtion.dart';
import 'screens/page_transtion/rotation_transtion.dart';
import 'screens/page_transtion/scale_transtion.dart';
import 'screens/page_transtion/size_transtion.dart';
import 'screens/page_transtion/slide_transtion.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Animation",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 10,
        ),
        children: [
          // implicit animation
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedAlignScreen(),
                ),
              );
            },
            child: const Text(
              "Animated Align",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedContainerScreen(),
                ),
              );
            },
            child: const Text(
              "Animated Container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedTextScreen(),
                ),
              );
            },
            child: const Text(
              "Animated Text",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedOpacityScreen(),
                ),
              );
            },
            child: const Text(
              "Animated Opacity",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedPaddingScreen(),
                ),
              );
            },
            child: const Text(
              "Animated Padding",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedPhisicalScreen(),
                ),
              );
            },
            child: const Text(
              "Animated Physical",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedPositionedScreen(),
                ),
              );
            },
            child: const Text(
              "Animated Positioned",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const AnimatedPositionedDirectionalScreen(),
                ),
              );
            },
            child: const Text(
              "Animated Positioned Dirctional",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimateCrossFadeScreen(),
                ),
              );
            },
            child: const Text(
              "Animate Cross Fade",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimateSwitcherScreen(),
                ),
              );
            },
            child: const Text(
              "Animate Switch",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AniamteListStateScreen(),
                ),
              );
            },
            child: const Text(
              "Animate List state",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),

          // explicit animation
          MaterialButton(
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PositionedTranstionScreen(),
                ),
              );
            },
            child: const Text(
              "Positioned Transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SizeTranstionScreen(),
                ),
              );
            },
            child: const Text(
              "Size Transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RotationTranstionScreen(),
                ),
              );
            },
            child: const Text(
              "Rotation Transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedBuilderScreen(),
                ),
              );
            },
            child: const Text(
              "Animated Builder",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FadeTranstionScreen(),
                ),
              );
            },
            child: const Text(
              "Fade Transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const PositionedDirectionalTranstionScreen(),
                ),
              );
            },
            child: const Text(
              "Positioned Dirctional Transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TweenAnimationBuilderScreen(),
                ),
              );
            },
            child: const Text(
              "Tween Animation Builder",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextStyleTranstionScreen(),
                ),
              );
            },
            child: const Text(
              "Text Style Transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const IndexedStackTranstionScreen(),
                ),
              );
            },
            child: const Text(
              "Indexed Stack Transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          // page transtion
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                FadeTranstion(page: const PageTwo()),
              );
            },
            child: const Text(
              "Fade Page transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(ScaleTranstion(page: const PageTwo()));
            },
            child: const Text(
              "Scale Page transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                RotationTranstion(
                  page: const PageTwo(),
                ),
              );
            },
            child: const Text(
              "Rotation Page transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                SlideTranstion(
                  page: const PageTwo(),
                ),
              );
            },
            child: const Text(
              "Slide Page transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                SizeTranstion(
                  page: const PageTwo(),
                ),
              );
            },
            child: const Text(
              "Size Page transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                MixFadeSizeTranstion(
                  page: const PageTwo(),
                ),
              );
            },
            child: const Text(
              "Mix Fade And Size Page transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                MixScaleRotateTranstion(
                  page: const PageTwo(),
                ),
              );
            },
            child: const Text(
              "Mix Scale And Rotate Page transtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
