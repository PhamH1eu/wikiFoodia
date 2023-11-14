class Food {
  final String name;
  final String subtitle;
  final String preview;
  final String description;
  final List<Ingredient> ingredients;

  const Food({
    required this.name,
    required this.subtitle,
    required this.preview,
    required this.description,
    required this.ingredients,
  });
}

const allFoods = [
  Food(
      name: "Banh Chung",
      subtitle: "Dac san Tet",
      preview: "assets/images/banhchung.jpg",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      ingredients: [
        Ingredient(name: "Gao Nep", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "Thit", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "La Chuoi", icon: "assets/images/icon/pho.png"),
      ]),
  Food(
      name: "Banh Cuon",
      subtitle: "Dac san Tet",
      preview: "assets/images/banhcuon.jpg",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      ingredients: [
        Ingredient(name: "Gao Nep", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "Thit", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "La Chuoi", icon: "assets/images/icon/pho.png"),
      ]),
  Food(
      name: "Banh Mi",
      subtitle: "Dac san Tet",
      preview: "assets/images/banhmi.jpg",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      ingredients: [
        Ingredient(name: "Gao Nep", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "Thit", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "La Chuoi", icon: "assets/images/icon/pho.png"),
      ]),
  Food(
      name: "Banh xeo",
      subtitle: "Dac san Tet",
      preview: "assets/images/banhxeo.jpg",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      ingredients: [
        Ingredient(name: "Gao Nep", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "Thit", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "La Chuoi", icon: "assets/images/icon/pho.png"),
      ]),
  Food(
      name: "Com rang",
      subtitle: "Dac san Tet",
      preview: "assets/images/comrang.jpg",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      ingredients: [
        Ingredient(name: "Cơm", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "Thịt bò", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "Hành", icon: "assets/images/icon/pho.png"),
      ]),
  Food(
      name: "com tam",
      subtitle: "Dac san Tet",
      preview: "assets/images/comtam.jpg",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      ingredients: [
        Ingredient(name: "Gao Nep", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "Thit", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "La Chuoi", icon: "assets/images/icon/pho.png"),
      ]),
  Food(
      name: "Pho",
      subtitle: "Dac san Tet",
      preview: "assets/images/pho.png",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      ingredients: [
        Ingredient(name: "Gao Nep", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "Thit", icon: "assets/images/icon/pho.png"),
        Ingredient(name: "La Chuoi", icon: "assets/images/icon/pho.png"),
      ]),
];

class Ingredient {
  final String name;
  final String icon;

  const Ingredient({
    required this.name,
    required this.icon,
  });
}
