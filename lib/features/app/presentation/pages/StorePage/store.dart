class Store {
  final String name;
  final String address;
  final String phone;
  final String image;

  const Store({
    required this.name,
    required this.address,
    required this.phone,
    required this.image,
  });
}

const allStore = [
  Store(
    name: 'Cửa hàng Bánh Chưng Ngon',
    address: '28 Ng. 580 Đ.Trường Chinh',
    image: 'assets/images/restaurants/banhchungngon.jpg',
    phone: '0968 318 765',
  ),
  Store(
    name: 'Banh Chung Vietnam',
    address: 'P. Thiên Hiền',
    image: 'assets/images/restaurants/banhchungvietnam.jpg',
    phone: '0989 127 512',
  ),
  Store(
    name: 'Bánh chưng ngon Hà Nội',
    address: '90 Đ. Vũ Trọng Phụng',
    image: 'assets/images/restaurants/banhchungngonhanoi.jpg',
    phone: '0925 066 886',
  ),
  Store(
    name: 'Bánh chưng tiến Vua Phong Châu',
    address: '57 ngách 1 Ngõ 178 Thái Hà',
    image: 'assets/images/restaurants/tienvuaphongchau.png',
    phone: '0916 086 938',
  )
];
