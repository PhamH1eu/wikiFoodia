// ignore_for_file: non_constant_identifier_names

class Store {
  final String name;
  final String address;
  final String phone;
  final String image;
  final bool status;
  final String type;
  final String food_type;
  final Set<double> location;

  Store({
    required this.name,
    required this.address,
    required this.phone,
    required this.image,
    required this.status,
    required this.location,
    required this.type, 
    required this.food_type, 
  });
}
