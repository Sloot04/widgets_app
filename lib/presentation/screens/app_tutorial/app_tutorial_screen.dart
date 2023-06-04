import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final List<SlideInfo> slides = [
  SlideInfo(
      'Busca la comida',
      'Tempor nostrud esse officia consequat cupidatat amet nisi voluptate anim.',
      'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'Cillum tempor eiusmod fugiat anim.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Laborum cillum occaecat voluptate ullamco nulla consequat excepteur nulla nisi non.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map((slideData) =>
                _Slide(slideData.title, slideData.caption, slideData.caption))
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(this.title, this.caption, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
