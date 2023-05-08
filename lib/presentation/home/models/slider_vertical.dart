class SliderVertical {
  SliderVertical({
    required this.race,
    required this.age,
    required this.description,
    required this.sex,
    required this.img,
    required this.name,
    required this.find,
  });

  final String img, name, race, age, description, sex, find;

  static List<SliderVertical> data = [
    SliderVertical(
      img: 'assets/img/fondo2.png',
      name: 'Rabito',
      description:
          'es mi lindo perrito muy curioso y divertido, muebe su cola siempre cada vez que lo saludas. Ademas, siempre te dara amor',
      find: 'Girlfriend',
      age: '3',
      race: 'Horgones',
      sex: 'Male',
    ),
    SliderVertical(
      img: 'assets/img/fondo.png',
      name: 'Fluffy',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet, turpis vel porta aliquam, ex elit efficitur',
      find: 'Friends, Girlfriend',
      age: '2',
      race: 'Husky Americano',
      sex: 'Male',
    ),
  ];
}
