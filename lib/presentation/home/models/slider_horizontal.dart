class SliderHorizontal {
  SliderHorizontal({
    required this.img,
    required this.name,
  });

  final String img, name;

  static List<SliderHorizontal> data = [
    SliderHorizontal(img: 'assets/img/s1.png', name: 'Jackey'),
    SliderHorizontal(img: 'assets/img/s2.png', name: 'Snoppy'),
    SliderHorizontal(img: 'assets/img/s3.png', name: 'Pancho'),
    SliderHorizontal(img: 'assets/img/s4.png', name: 'Hachiko'),
    SliderHorizontal(img: 'assets/img/s5.png', name: 'Arcady'),
  ];
}
