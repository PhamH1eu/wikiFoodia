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

final allStore = [
  Store(
    name: 'Cửa hàng Bánh Chưng Ngon',
    address: '28 Ng. 580 Đ.Trường Chinh',
    image: 'assets/images/restaurants/banhchungngon.jpg',
    phone: '0968 318 765',
    status: true,
    location: {21.003362300811865, 105.8228507377978},
    type: 'Bánh chưng',
    food_type: 'Tet\'s food',
  ),
  Store(
      name: 'Banh Chung Vietnam',
      address: 'P. Thiên Hiền',
      image: 'assets/images/restaurants/banhchungvietnam.jpg',
      phone: '0989 127 512',
      status: false,
      location: {21.0226001749629, 105.77639019731424},
      type: 'Bánh chưng',
    food_type: 'Tet\'s food',),
      
  Store(
      name: 'Bánh chưng ngon Hà Nội',
      address: '90 Đ. Vũ Trọng Phụng',
      image: 'assets/images/restaurants/banhchungngonhanoi.jpg',
      phone: '0925 066 886',
      status: true,
      location: {21.000689417806335, 105.80754580896277},
      type: 'Bánh chưng',
    food_type: 'Tet\'s food',),
  Store(
    name: 'Bánh chưng tiến Vua Phong Châu',
    address: '57 ngách 1 Ngõ 178 Thái Hà',
    image: 'assets/images/restaurants/tienvuaphongchau.png',
    phone: '0916 086 938',
    status: false,
    location: {21.014487108065232, 105.82022338012801},
    type: 'Bánh chưng',
    food_type: 'Tet\'s food',
  )
];
