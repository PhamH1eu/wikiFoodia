import '../StorePage/store.dart';

class Food {
  final String name;
  final String subtitle;
  final String preview;
  final String description;
  final List<Ingredient> ingredients;
  final List<Store> stores;
  final String type;
  // ignore: non_constant_identifier_names
  final String food_type;

  const Food({
    required this.name,
    required this.subtitle,
    required this.preview,
    required this.description,
    required this.ingredients,
    required this.stores,
    required this.type,
    // ignore: non_constant_identifier_names
    required this.food_type,
  });
}

class Ingredient {
  final String name;
  final String icon;

  const Ingredient({
    required this.name,
    required this.icon,
  });
}

List allFoods = [
  Food(
      name: "Bánh chưng",
      subtitle: "Hương vị tết truyền thống, bánh chưng xanh thắm.",
      preview: "assets/images/pic/banhchung.jpg",
      description:
          "Bánh chưng là một loại bánh truyền thống của dân tộc Việt nhằm thể hiện lòng biết ơn của con cháu đối với cha ông với đất trời. Nguyên liệu làm bánh chưng gồm gạo nếp, đậu xanh, thịt lợn, lá dong. Bánh thường được làm vào các dịp Tết của dân tộc Việt, cũng như ngày giỗ tổ Hùng Vương",
      ingredients: [
        Ingredient(name: "Gao Nep", icon: "assets/images/ingredient/rice.png"),
        Ingredient(
            name: "Thit ba chi", icon: "assets/images/ingredient/beef.png"),
        Ingredient(name: "La Dong", icon: "assets/images/ingredient/leaf.png"),
        Ingredient(name: "Dau xanh", icon: "assets/images/ingredient/bean.png"),
      ],
      stores: allStore,
      type: "Chung's Cake",
      food_type: "Chung's Cake"),
  Food(
      name: "Bánh cuốn",
      subtitle: "Cuộn mảnh, nhẹ nhàng, bánh cuốn hấp dẫn hương vị.",
      preview: "assets/images/pic/banhcuon.jpg",
      description:
          "Bánh cuốn là một món ăn truyền thống của Việt Nam, đặc trưng của ẩm thực miền Bắc, nhưng cũng được ưa chuộng và phổ biến trên khắp cả nước. Đây là một món ăn nhẹ, ngon miệng, được yêu thích bởi hương vị thơm ngon, thanh mát, thường được ăn vào bữa sáng hoặc bữa tối. Món ăn này được làm từ bột gạo hấp tráng mỏng, cuộn tròn, bên trong có thể có nhân hành, thịt, mộc nhĩ hoặc không nhân.",
      ingredients: [
        Ingredient(
            name: "Thịt heo", icon: "assets/images/ingredient/pork4.png"),
        Ingredient(name: "Gao", icon: "assets/images/ingredient/rice.png"),
        Ingredient(
            name: "Nuoc mam", icon: "assets/images/ingredient/fish_sauce.png"),
      ],
      stores: [
        Store(
            name: 'Bánh Cuốn Quang Anh',
            address: '22 Ng. 322 Đ. Mỹ Đình',
            image: 'assets/images/restaurants/banhcuonquanganh.jpeg',
            phone: '0968 318 765',
            status: true,
            location: {21.02328394468234, 105.77381979546853},
            type: "Bánh cuốn",
            food_type: "Cuon Cake"),
        Store(
            name: 'Bánh cuốn Gia An',
            address: 'B5 - Mỹ Đình 1, Số 3, Tòa, P. Nguyễn Cơ ',
            image: 'assets/images/restaurants/banhcuonggiaan.jpg',
            phone: '0989 127 512',
            status: false,
            location: {21.037494122439934, 105.7671794063546},
            type: "Bánh cuốn",
            food_type: "Cuon Cake"),
        Store(
            name: 'Bánh cuốn Bà Béo',
            address: '226 Đ. Phú Mỹ',
            image: 'assets/images/restaurants/banhcuonbabeo.jpg',
            phone: '0925 066 886',
            status: true,
            location: {21.02766786814987, 105.77290053779844},
            type: "Bánh cuốn",
            food_type: "Cuon Cake"),
        Store(
            name: 'Bánh Cuốn Phú Lê',
            address: 'C4 P. Nguyễn Cơ Thạch',
            image: 'assets/images/restaurants/banhcuonphule.jpg',
            phone: '0916 086 938',
            status: false,
            location: {21.0312688957702, 105.76433166876679},
            type: "Bánh cuốn",
            food_type: "Cuon Cake")
      ],
      type: "Bánh cuốn",
      food_type: "Cuon Cake"),
  Food(
      name: "Bánh mì",
      subtitle: "Vị ngon tinh tế, bánh mì giòn tan hòa quyện.",
      preview: "assets/images/pic/banhmi.jpg",
      description:
          "Bánh mì là món ăn đường phố phổ biến ở Việt Nam, một biểu tượng của ẩm thực đất nước, kết hợp giữa ảnh hưởng của đồ ăn phương Tây và đặc trưng của ẩm thực Việt Nam. Bánh mì có nguồn gốc từ thời Pháp thuộc, khi người Pháp mang bánh mì baguette đến Việt Nam. Người Việt đã biến tấu món ăn này theo khẩu vị của mình, tạo ra món bánh mì đặc trưng mang đậm hương vị Việt Nam. Bánh mì Việt Nam có nhiều loại khác nhau, tùy thuộc vào địa phương và sở thích của người ăn.",
      ingredients: [
        Ingredient(name: "Banh mi", icon: "assets/images/ingredient/rice.png"),
        Ingredient(
            name: "Thit heo", icon: "assets/images/ingredient/pork4.png"),
        Ingredient(name: "Trung", icon: "assets/images/ingredient/egg.png"),
      ],
      stores: [
        Store(
            name: 'Bánh Mì Hoa Nhiên',
            address: '157 P. Trần Bình',
            image: 'assets/images/restaurants/banhmihoanhien.jpg',
            phone: '0968 318 765',
            status: true,
            location: {21.02328394468234, 105.77381979546853},
            type: "Bánh mì",
            food_type: "Banh Mi"),
        Store(
            name: 'Bánh Mì Que Gia Truyền Hải Phòng',
            address: '15 P. Duy Tân',
            image: 'assets/images/restaurants/banhmiquegiatruyenhaiphong.jpg',
            phone: '0989 127 512',
            status: false,
            location: {21.037494122439934, 105.7671794063546},
            type: "Bánh mì",
            food_type: "Banh Mi"),
        Store(
            name: 'Bánh mì bảo ngọc',
            address: '79 Đ. Mỹ Đình',
            image: 'assets/images/restaurants/banhmibaongoc.jpg',
            phone: '0925 066 886',
            status: true,
            location: {21.02766786814987, 105.77290053779844},
            type: "Bánh mì",
            food_type: "Banh Mi"),
        Store(
            name: 'Bánh Mỳ Nghé',
            address: 'Ng. 75 Đ. Phú Diễn/25 Đ. Hồ Tùng Mậu',
            image: 'assets/images/restaurants/banhminghe.jpg',
            phone: '0916 086 938',
            status: false,
            location: {21.0312688957702, 105.76433166876679},
            type: "Bánh mì",
            food_type: "Banh Mi")
      ],
      type: "Bánh mì",
      food_type: "Banh Mi"),
  Food(
      name: "Bánh xèo",
      subtitle: "Ngoại hình giòn rụm, bánh xèo ẩn sau hương thơm.",
      preview: "assets/images/pic/banhxeo.jpg",
      description:
          "Bánh xèo là món ăn thường  được ăn và bán phổ biến ở Việt Nam. Bởi lẽ vì sự giòn rụm, nóng hổi được vớt từ trong khuôn ra, ăn ngay tại chỗ, dễ khiến cho người ta cảm thấy ấm bụng. Khác với những món ngon đắt tiền, bánh xèo Việt Nam đơn giản nhưng đậm nét ẩm thực riêng. Từ khâu nguyên liệu, cách chế biến cũng như thưởng thức. Mọi thứ đều rất đơn giản và gần gũi. Hòa quyện lại với nhau cho người ta cảm giác bình yên, mộc mạc nhưng vô cùng đậm đà.",
      ingredients: [
        Ingredient(name: "Gao", icon: "assets/images/ingredient/rice.png"),
        Ingredient(
            name: "Thit heo", icon: "assets/images/ingredient/pork4.png"),
        Ingredient(
            name: "Rau thom", icon: "assets/images/ingredient/vegetable.png"),
        Ingredient(name: "Tom", icon: "assets/images/ingredient/shrimp.png"),
      ],
      stores: [
        Store(
            name: 'Bánh Xèo - Đệ Nhất Ba Hưng',
            address: '8A P. Trần Bình',
            image: 'assets/images/restaurants/banhxeodenhatbahung.jpg',
            phone: '0968 318 765',
            status: true,
            location: {21.02328394468234, 105.77381979546853},
            type: "Bánh xèo",
            food_type: "Xeo Cake"),
        Store(
            name: 'Bánh Xèo 53 Quán',
            address: '53 Ng. 66 Đ. Hồ Tùng Mậu',
            image: 'assets/images/restaurants/banhxeo53quan.JPG',
            phone: '0989 127 512',
            status: false,
            location: {21.037494122439934, 105.7671794063546},
            type: "Bánh xèo",
            food_type: "Xeo Cake"),
        Store(
            name: 'Bánh Xèo - Nem Lụi',
            address: '18 Ng. 66 P. Dịch Vọng Hậu',
            image: 'assets/images/restaurants/banhxeonemlui.jpg',
            phone: '0925 066 886',
            status: true,
            location: {21.02766786814987, 105.77290053779844},
            type: "Bánh xèo",
            food_type: "Xeo Cake"),
        Store(
            name: 'Tứ Xèo - Bánh Xèo Tôm Nhảy',
            address: '28 P. Chùa Láng',
            image: 'assets/images/restaurants/banhxeotomnhay.jpg',
            phone: '0916 086 938',
            status: false,
            location: {21.0312688957702, 105.76433166876679},
            type: "Bánh xèo",
            food_type: "Xeo Cake")
      ],
      type: "Bánh xèo",
      food_type: "Xeo Cake"),
  Food(
      name: "Cơm rang",
      subtitle: "Hòa quyện gia vị, cơm rang thơm ngon mê ly.",
      preview: "assets/images/pic/comrang.jpg",
      description:
          "Cơm rang là một món ăn phổ biến ở Việt Nam, được yêu thích bởi hương vị thơm ngon, đậm đà. Cơm rang có nguồn gốc từ Trung Quốc, nhưng đã được du nhập vào Việt Nam từ lâu và trở thành một món ăn quen thuộc trong bữa cơm của người Việt. Cơm rang có thể được chế biến với nhiều loại nguyên liệu khác nhau, tùy thuộc vào sở thích của người ăn. Đây là món ăn ngon miệng và bổ dưỡng, được nhiều người yêu thích. Món ăn này là một nét đẹp trong văn hóa ẩm thực Việt Nam.",
      ingredients: [
        Ingredient(name: "Cơm", icon: "assets/images/ingredient/rice.png"),
        Ingredient(name: "Thịt bò", icon: "assets/images/ingredient/beef.png"),
        Ingredient(
            name: "Rau cu", icon: "assets/images/ingredient/vegetable.png"),
      ],
      stores: [
        Store(
            name: 'Mạnh Thắng: PHỞ BÒ - CƠM RANG',
            address: '6 P. Dương Khuê',
            image: 'assets/images/restaurants/comrangmanhthang.jpg',
            phone: '0968 318 765',
            status: true,
            location: {21.02328394468234, 105.77381979546853},
            type: "Cơm rang",
            food_type: "Fried Rice"),
        Store(
            name: 'Cơm Rang Ngon ( TOM )',
            address: '56 Ng. 63 P. Trần Quốc Vượng',
            image: 'assets/images/restaurants/comrangngontom.jpg',
            phone: '0989 127 512',
            status: false,
            location: {21.037494122439934, 105.7671794063546},
            type: "Cơm rang",
            food_type: "Fried Rice"),
        Store(
            name: 'Cơm rang Vũ Tới',
            address:
                'Tập thể nhà hát Tuồng, Ngõ 169 P. Doãn Kế Thiện, Mai Dịch, Cầu Giấy, Hà Nội',
            image: 'assets/images/restaurants/comrangvutoi.jpg',
            phone: '0925 066 886',
            status: true,
            location: {21.02766786814987, 105.77290053779844},
            type: "Cơm rang",
            food_type: "Fried Rice"),
      ],
      type: "Cơm rang",
      food_type: "Fried Rice"),
  Food(
      name: "Cơm tấm",
      subtitle: "Mềm mại cơm tấm, hòa quyện nước mắm tươi.",
      preview: "assets/images/pic/comtam.jpg",
      description:
          "Cơm tấm là một món ăn đặc trưng của ẩm thực Việt Nam, đặc biệt là ở miền Nam. Món ăn này được làm từ gạo tấm, một loại gạo vỡ trong quá trình xay xát gạo. Gạo tấm được nấu chín thành cơm, sau đó được ăn kèm với nhiều món ăn khác nhau như sườn nướng, bì lợn, chả trứng,.. Cơm tấm là món ăn bình dân nhưng lại rất ngon miệng và đầy đủ chất dinh dưỡng. Món ăn này phù hợp với mọi lứa tuổi và mọi đối tượng. Đây là một trong những món ăn tiêu biểu của ẩm thực Việt Nam, được nhiều du khách nước ngoài yêu thích.",
      ingredients: [
        Ingredient(name: "Gao", icon: "assets/images/ingredient/rice.png"),
        Ingredient(
            name: "Thit heo", icon: "assets/images/ingredient/pork4.png"),
        Ingredient(name: "Trung", icon: "assets/images/ingredient/egg.png"),
        Ingredient(
            name: "Rau cu", icon: "assets/images/ingredient/vegetable.png"),
        Ingredient(name: "Gia vi", icon: "assets/images/ingredient/spices.png"),
      ],
      stores: [
        Store(
            name: 'Cơm Tấm Mẹ Sóc',
            address: '82 P. Dương Khuê',
            image: 'assets/images/restaurants/comtammesoc.jpg',
            phone: '0968 318 765',
            status: true,
            location: {21.02328394468234, 105.77381979546853},
            type: "Cơm tấm",
            food_type: "Tam Rice"),
        Store(
            name: 'Cơm Tấm Neko',
            address: 'Ngách 63/120, Lê Đức Thọ, Mỹ Đình, Nam Từ Liêm, Hà Nội',
            image: 'assets/images/restaurants/comtamneko.jpg',
            phone: '0989 127 512',
            status: false,
            location: {21.037494122439934, 105.7671794063546},
            type: "Cơm tấm",
            food_type: "Tam Rice"),
        Store(
            name: 'Cơm Tấm Quận 1 Takeaway',
            address: 'Ngách 37/2, Dịch Vọng, Cầu Giấy, Hà Nội',
            image: 'assets/images/restaurants/comtamquan1takeaway.jpg',
            phone: '0925 066 886',
            status: true,
            location: {21.02766786814987, 105.77290053779844},
            type: "Cơm tấm",
            food_type: "Tam Rice"),
      ],
      type: "Cơm tấm",
      food_type: "Tam Rice"),
  Food(
      name: "Phở",
      subtitle: "Nồng hương bát phở, ngọt ngào mùi gia vị.",
      preview: "assets/images/pic/pho.jpg",
      description:
          "Phở là một món ăn truyền thống của Việt Nam, được yêu thích bởi hương vị thơm ngon, đậm đà. Món ăn này được làm từ bánh phở, nước dùng, thịt bò hoặc gà, và các loại rau thơm. Phở có nguồn gốc từ Vân Cù, Nam Định. Món ăn này đã trở nên phổ biến ở khắp các vùng miền của Việt Nam và được du nhập sang nhiều quốc gia trên thế giới. Đây là món ăn ngon miệng, bổ dưỡng, được nhiều người yêu thích. Món ăn này là một nét đẹp trong văn hóa ẩm thực Việt Nam.",
      ingredients: [
        Ingredient(name: "Gao", icon: "assets/images/ingredient/rice.png"),
        Ingredient(name: "Thit bo", icon: "assets/images/ingredient/beef.png"),
        Ingredient(name: "Rau thom", icon: "assets/images/ingredient/leaf.png"),
        Ingredient(name: "Gia vi", icon: "assets/images/ingredient/spices.png"),
      ],
      stores: [
        Store(
            name: 'Phở Lý Quốc Sư Mỹ Đình',
            address: 'N4-A10, Đ. Mỹ Đình, Hà Nội',
            image: 'assets/images/restaurants/pholyquocsumydinh.jpg',
            phone: '0968 318 765',
            status: true,
            location: {21.02328394468234, 105.77381979546853},
            type: "Pho Bac",
            food_type: "Pho"),
        Store(
            name: 'Phở bát đá Thuỷ Mộc',
            address: '16 Đ. Lê Đức Thọ, Mỹ Đình, Cầu Giấy, Hà Nội',
            image: 'assets/images/restaurants/phobatdathuymoc.jpg',
            phone: '0989 127 512',
            status: false,
            location: {21.037494122439934, 105.7671794063546},
            type: "Pho Bac",
            food_type: "Pho"),
        Store(
            name: 'Phở Bò Gia Truyền Nam Định',
            address:
                'Chung cư C7, Ki ốt 4, Ngõ, 6 Phố Trần Hữu Dực, Mỹ Đình, Nam Từ Liêm, Hà Nội',
            image: 'assets/images/restaurants/phobophucuong.jpg',
            phone: '0925 066 886',
            status: true,
            location: {21.02766786814987, 105.77290053779844},
            type: "Pho Bac",
            food_type: "Pho"),
        Store(
            name: 'Phở Định 3',
            address: '36 P. Dịch Vọng Hậu, làng Vòng, Cầu Giấy, Hà Nội',
            image: 'assets/images/restaurants/phodinh3.jpg',
            phone: '0916 086 938',
            status: false,
            location: {21.0312688957702, 105.76433166876679},
            type: "Pho Bac",
            food_type: "Pho")
      ],
      type: "Pho Bac",
      food_type: "Pho"),
  Food(
      name: "Gỏi cuốn",
      subtitle: "Mỏng nhẹ, gỏi cuốn tươi ngon bất ngờ.",
      preview: "assets/images/pic/goicuon.jpg",
      description:
          "Gỏi cuốn là một món ăn đặc trưng của ẩm thực Việt Nam, được yêu thích bởi hương vị thơm ngon, thanh mát. Món ăn này được làm từ bánh tráng, thịt luộc, tôm, rau thơm, và bún, sau đó được cuốn thành cuộn tròn và chấm với nước chấm chua ngọt. Gỏi cuốn có nguồn gốc từ miền Nam Việt Nam, nhưng hiện nay món ăn này đã trở nên phổ biến ở khắp các vùng miền của đất nước. Gỏi cuốn có hương vị thơm ngon, đậm đà. Bánh tráng mềm, dai, thịt luộc mềm ngọt, tôm dai giòn, rau thơm thanh mát, và nước chấm chua ngọt giúp món ăn thêm đậm đà.",
      ingredients: [
        Ingredient(name: "Gao", icon: "assets/images/ingredient/rice.png"),
        Ingredient(
            name: "Thit heo", icon: "assets/images/ingredient/pork4.png"),
        Ingredient(name: "Tom", icon: "assets/images/ingredient/shrimp.png"),
        Ingredient(name: "Trung", icon: "assets/images/ingredient/egg.png"),
      ],
      stores: [
        Store(
            name: 'Gỏi Cuốn Top 5 Quán',
            address: '211 P. Tô Hiệu, Dịch Vọng, Cầu Giấy, Hà Nội',
            image: 'assets/images/restaurants/goicuontop5quan.jpg',
            phone: '0968 318 765',
            status: true,
            location: {21.02328394468234, 105.77381979546853},
            type: "Gỏi sống",
            food_type: "Goi Cuon"),
        Store(
            name: 'Gỏi cuốn Mỹ Đình',
            address: '38 Ng. 8 Đ. Lê Quang Đạo, Mễ Trì, Nam Từ Liêm, Hà Nội',
            image: 'assets/images/restaurants/goicuonmydinh.jpg',
            phone: '0989 127 512',
            status: false,
            location: {21.037494122439934, 105.7671794063546},
            type: "Gỏi sống",
            food_type: "Goi Cuon"),
        Store(
            name: 'Gỏi Cuốn Xanh',
            address: '199 Đ. Hồ Tùng Mậu, Cầu Diễn, Hà Nội',
            image: 'assets/images/restaurants/goicuonxanh.jpg',
            phone: '0925 066 886',
            status: true,
            location: {21.02766786814987, 105.77290053779844},
            type: "Gỏi sống",
            food_type: "Goi Cuon"),
        Store(
            name: 'Cuốn Việt',
            address: '40 Ng. 116 P. Nhân Hòa, Nhân Chính, Thanh Xuân, Hà Nội',
            image: 'assets/images/restaurants/goicuonviet.JPG',
            phone: '0916 086 938',
            status: false,
            location: {21.0312688957702, 105.76433166876679},
            type: "Gỏi sống",
            food_type: "Goi Cuon")
      ],
      type: "Gỏi sống",
      food_type: "Goi Cuon"),
  Food(
      name: "Bún đậu mắm tôm",
      subtitle: "Hòa quyện bún, đậu, mắm tôm, ngon khó cưỡng.",
      preview: "assets/images/pic/bundaumamtom.jpg",
      description:
          "Bún đậu mắm tôm là một món ăn dân dã, đặc trưng của ẩm thực miền Bắc Việt Nam. Bún đậu mắm tôm có nguồn gốc từ Hà Nội, nhưng hiện nay món ăn này đã trở nên phổ biến ở khắp các vùng miền của đất nước. Món ăn này thường được ăn vào bữa sáng hoặc bữa phụ. Bún đậu mắm tôm có hương vị thơm ngon, đậm đà. Bún lá mềm, dai, đậu phụ chiên vàng giòn, thịt luộc mềm ngọt, chả cốm thơm ngon, dồi sụn béo ngậy, rau sống thanh mát, và mắm tôm đặc trưng.",
      ingredients: [
        Ingredient(name: "Gao", icon: "assets/images/ingredient/rice.png"),
        Ingredient(name: "Thit", icon: "assets/images/ingredient/pork4.png"),
        Ingredient(name: "Dau phu", icon: "assets/images/ingredient/tofu.png"),
        Ingredient(name: "Tom", icon: "assets/images/ingredient/shrimp2.png"),
      ],
      stores: [
        Store(
            name: 'Bún Đậu Phố',
            address: '88 P. Dịch Vọng Hậu, Dịch Vọng Hậu, Cầu Giấy, Hà Nội',
            image: 'assets/images/restaurants/bundaupho.jpg',
            phone: '0968 318 765',
            status: true,
            location: {21.02328394468234, 105.77381979546853},
            type: "Mắm tôm",
            food_type: "BDMT"),
        Store(
            name: 'Bún đậu mắm tôm',
            address: '107 P. Trần Quốc Vượng, Dịch Vọng Hậu, Cầu Giấy, Hà Nội',
            image: 'assets/images/restaurants/bundaumamtom.jpg',
            phone: '0989 127 512',
            status: false,
            location: {21.037494122439934, 105.7671794063546},
            type: "Mắm tôm",
            food_type: "BDMT"),
        Store(
            name: 'Bún Đậu Cô Thủy',
            address: '2 Ngõ 31 P. Nguyễn Khả Trạc, Mai Dịch, Cầu Giấy, Hà Nội',
            image: 'assets/images/restaurants/bundaucothuy.jpg',
            phone: '0925 066 886',
            status: true,
            location: {21.02766786814987, 105.77290053779844},
            type: "Mắm tôm",
            food_type: "BDMT"),
        Store(
            name: 'Bún đậu mắm tôm Duy Tân',
            address:
                '8 Ngách 2 Ng. 76 P. Duy Tân, Dịch Vọng Hậu, Cầu Giấy, Hà Nội',
            image: 'assets/images/restaurants/bundaumamtom.jpg',
            phone: '0916 086 938',
            status: false,
            location: {21.0312688957702, 105.76433166876679},
            type: "Mắm tôm",
            food_type: "BDMT")
      ],
      type: "Mắm tôm",
      food_type: "BDMT"),
  Food(
    preview: "assets/images/pic/banhchung2.jpg",
    name: "Bánh Chưng Name",
    type: "Chung's Cake",
    food_type: "Chung's Cake",
    subtitle: "Hương vị tết truyền thống, bánh chưng xanh thắm.",
    description:
        "Bánh chưng là một loại bánh truyền thống của dân tộc Việt nhằm thể hiện lòng biết ơn của con cháu đối với cha ông với đất trời. Nguyên liệu làm bánh chưng gồm gạo nếp, đậu xanh, thịt lợn, lá dong. Bánh thường được làm vào các dịp Tết của dân tộc Việt, cũng như ngày giỗ tổ Hùng Vương",
    ingredients: [
      Ingredient(name: "Gao Nep", icon: "assets/images/ingredient/rice.png"),
      Ingredient(
          name: "Thit ba chi", icon: "assets/images/ingredient/beef.png"),
      Ingredient(name: "La Dong", icon: "assets/images/ingredient/leaf.png"),
      Ingredient(name: "Dau xanh", icon: "assets/images/ingredient/bean.png"),
    ],
    stores: allStore,
  ),
  Food(
    preview: "assets/images/pic/banhcuon2.jpg",
    name: "Bánh cuốn vl",
    type: "Bánh cuốn",
    food_type: "Cuon Cake",
    subtitle: "Cuộn mảnh, nhẹ nhàng, bánh cuốn hấp dẫn hương vị.",
    description:
        "Bánh cuốn là một món ăn truyền thống của Việt Nam, đặc trưng của ẩm thực miền Bắc, nhưng cũng được ưa chuộng và phổ biến trên khắp cả nước. Đây là một món ăn nhẹ, ngon miệng, được yêu thích bởi hương vị thơm ngon, thanh mát, thường được ăn vào bữa sáng hoặc bữa tối. Món ăn này được làm từ bột gạo hấp tráng mỏng, cuộn tròn, bên trong có thể có nhân hành, thịt, mộc nhĩ hoặc không nhân.",
    ingredients: [
      Ingredient(name: "Thịt heo", icon: "assets/images/ingredient/pork4.png"),
      Ingredient(name: "Gao", icon: "assets/images/ingredient/rice.png"),
      Ingredient(
          name: "Nuoc mam", icon: "assets/images/ingredient/fish_sauce.png"),
    ],
    stores: [
      Store(
        name: 'Bánh Cuốn Quang Anh',
        address: '22 Ng. 322 Đ. Mỹ Đình',
        image: 'assets/images/restaurants/banhcuonquanganh.jpeg',
        phone: '0968 318 765',
        status: true,
        location: {21.02328394468234, 105.77381979546853},
        type: "Bánh cuốn",
        food_type: "Cuon Cake",
      ),
      Store(
        name: 'Bánh cuốn Gia An',
        address: 'B5 - Mỹ Đình 1, Số 3, Tòa, P. Nguyễn Cơ ',
        image: 'assets/images/restaurants/banhcuonggiaan.jpg',
        phone: '0989 127 512',
        status: false,
        location: {21.037494122439934, 105.7671794063546},
        type: "Bánh cuốn",
        food_type: "Cuon Cake",
      ),
      Store(
        name: 'Bánh cuốn Bà Béo',
        address: '226 Đ. Phú Mỹ',
        image: 'assets/images/restaurants/banhcuonbabeo.jpg',
        phone: '0925 066 886',
        status: true,
        location: {21.02766786814987, 105.77290053779844},
        type: "Bánh cuốn",
        food_type: "Cuon Cake",
      ),
      Store(
        name: 'Bánh Cuốn Phú Lê',
        address: 'C4 P. Nguyễn Cơ Thạch',
        image: 'assets/images/restaurants/banhcuonphule.jpg',
        phone: '0916 086 938',
        status: false,
        location: {21.0312688957702, 105.76433166876679},
        type: "Bánh cuốn",
        food_type: "Cuon Cake",
      )
    ],
  ),
  Food(
    preview: "assets/images/pic/banhmi2.jpg",
    name: "Bánh mì thập cẩm",
    type: "Bánh mì",
    food_type: "Banh Mi",
    subtitle: "Vị ngon tinh tế, bánh mì giòn tan hòa quyện.",
    description:
        "Bánh mì là món ăn đường phố phổ biến ở Việt Nam, một biểu tượng của ẩm thực đất nước, kết hợp giữa ảnh hưởng của đồ ăn phương Tây và đặc trưng của ẩm thực Việt Nam. Bánh mì có nguồn gốc từ thời Pháp thuộc, khi người Pháp mang bánh mì baguette đến Việt Nam. Người Việt đã biến tấu món ăn này theo khẩu vị của mình, tạo ra món bánh mì đặc trưng mang đậm hương vị Việt Nam. Bánh mì Việt Nam có nhiều loại khác nhau, tùy thuộc vào địa phương và sở thích của người ăn.",
    ingredients: [
      Ingredient(name: "Banh mi", icon: "assets/images/ingredient/rice.png"),
      Ingredient(name: "Thit heo", icon: "assets/images/ingredient/pork4.png"),
      Ingredient(name: "Trung", icon: "assets/images/ingredient/egg.png"),
    ],
    stores: [
      Store(
        name: 'Bánh Mì Hoa Nhiên',
        address: '157 P. Trần Bình',
        image: 'assets/images/restaurants/banhmihoanhien.jpg',
        phone: '0968 318 765',
        status: true,
        location: {21.02328394468234, 105.77381979546853},
        type: "Bánh mì",
        food_type: "Banh Mi",
      ),
      Store(
        name: 'Bánh Mì Que Gia Truyền Hải Phòng',
        address: '15 P. Duy Tân',
        image: 'assets/images/restaurants/banhmiquegiatruyenhaiphong.jpg',
        phone: '0989 127 512',
        status: false,
        location: {21.037494122439934, 105.7671794063546},
        type: "Bánh mì",
        food_type: "Banh Mi",
      ),
      Store(
        name: 'Bánh mì bảo ngọc',
        address: '79 Đ. Mỹ Đình',
        image: 'assets/images/restaurants/banhmibaongoc.jpg',
        phone: '0925 066 886',
        status: true,
        location: {21.02766786814987, 105.77290053779844},
        type: "Bánh mì",
        food_type: "Banh Mi",
      ),
      Store(
        name: 'Bánh Mỳ Nghé',
        address: 'Ng. 75 Đ. Phú Diễn/25 Đ. Hồ Tùng Mậu',
        image: 'assets/images/restaurants/banhminghe.jpg',
        phone: '0916 086 938',
        status: false,
        location: {21.0312688957702, 105.76433166876679},
        type: "Bánh mì",
        food_type: "Banh Mi",
      )
    ],
  ),
  Food(
    preview: "assets/images/pic/banhxeo2.jpg",
    name: "Bánh xèo Nam",
    type: "Bánh xèo",
    food_type: "Xeo Cake",
    subtitle: "Ngoại hình giòn rụm, bánh xèo ẩn sau hương thơm.",
    description:
        "Bánh xèo là món ăn thường  được ăn và bán phổ biến ở Việt Nam. Bởi lẽ vì sự giòn rụm, nóng hổi được vớt từ trong khuôn ra, ăn ngay tại chỗ, dễ khiến cho người ta cảm thấy ấm bụng. Khác với những món ngon đắt tiền, bánh xèo Việt Nam đơn giản nhưng đậm nét ẩm thực riêng. Từ khâu nguyên liệu, cách chế biến cũng như thưởng thức. Mọi thứ đều rất đơn giản và gần gũi. Hòa quyện lại với nhau cho người ta cảm giác bình yên, mộc mạc nhưng vô cùng đậm đà.",
    ingredients: [
      Ingredient(name: "Gao", icon: "assets/images/ingredient/rice.png"),
      Ingredient(name: "Thit heo", icon: "assets/images/ingredient/pork4.png"),
      Ingredient(
          name: "Rau thom", icon: "assets/images/ingredient/vegetable.png"),
      Ingredient(name: "Tom", icon: "assets/images/ingredient/shrimp.png"),
    ],
    stores: [
      Store(
        name: 'Bánh Xèo - Đệ Nhất Ba Hưng',
        address: '8A P. Trần Bình',
        image: 'assets/images/restaurants/banhxeodenhatbahung.jpg',
        phone: '0968 318 765',
        status: true,
        location: {21.02328394468234, 105.77381979546853},
        type: "Bánh xèo",
        food_type: "Xeo Cake",
      ),
      Store(
        name: 'Bánh Xèo 53 Quán',
        address: '53 Ng. 66 Đ. Hồ Tùng Mậu',
        image: 'assets/images/restaurants/banhxeo53quan.JPG',
        phone: '0989 127 512',
        status: false,
        location: {21.037494122439934, 105.7671794063546},
        type: "Bánh xèo",
        food_type: "Xeo Cake",
      ),
      Store(
        name: 'Bánh Xèo - Nem Lụi',
        address: '18 Ng. 66 P. Dịch Vọng Hậu',
        image: 'assets/images/restaurants/banhxeonemlui.jpg',
        phone: '0925 066 886',
        status: true,
        location: {21.02766786814987, 105.77290053779844},
        type: "Bánh xèo",
        food_type: "Xeo Cake",
      ),
      Store(
        name: 'Tứ Xèo - Bánh Xèo Tôm Nhảy',
        address: '28 P. Chùa Láng',
        image: 'assets/images/restaurants/banhxeotomnhay.jpg',
        phone: '0916 086 938',
        status: false,
        location: {21.0312688957702, 105.76433166876679},
        type: "Bánh xèo",
        food_type: "Xeo Cake",
      )
    ],
  ),
  Food(
    preview: "assets/images/pic/bundaumamtom2.jpg",
    name: "Bún đậu",
    type: "Nước mắm",
    food_type: "BDMT",
    subtitle: "Hòa quyện gia vị, cơm rang thơm ngon mê ly.",
    description:
        "Cơm rang là một món ăn phổ biến ở Việt Nam, được yêu thích bởi hương vị thơm ngon, đậm đà. Cơm rang có nguồn gốc từ Trung Quốc, nhưng đã được du nhập vào Việt Nam từ lâu và trở thành một món ăn quen thuộc trong bữa cơm của người Việt. Cơm rang có thể được chế biến với nhiều loại nguyên liệu khác nhau, tùy thuộc vào sở thích của người ăn. Đây là món ăn ngon miệng và bổ dưỡng, được nhiều người yêu thích. Món ăn này là một nét đẹp trong văn hóa ẩm thực Việt Nam.",
    ingredients: [
      Ingredient(name: "Cơm", icon: "assets/images/ingredient/rice.png"),
      Ingredient(name: "Thịt bò", icon: "assets/images/ingredient/beef.png"),
      Ingredient(
          name: "Rau cu", icon: "assets/images/ingredient/vegetable.png"),
    ],
    stores: [
      Store(
        name: 'Mạnh Thắng: PHỞ BÒ - CƠM RANG',
        address: '6 P. Dương Khuê',
        image: 'assets/images/restaurants/comrangmanhthang.jpg',
        phone: '0968 318 765',
        status: true,
        location: {21.02328394468234, 105.77381979546853},
        type: "Nước mắm",
        food_type: "BDMT",
      ),
      Store(
        name: 'Cơm Rang Ngon ( TOM )',
        address: '56 Ng. 63 P. Trần Quốc Vượng',
        image: 'assets/images/restaurants/comrangngontom.jpg',
        phone: '0989 127 512',
        status: false,
        location: {21.037494122439934, 105.7671794063546},
        type: "Nước mắm",
        food_type: "BDMT",
      ),
      Store(
        name: 'Cơm rang Vũ Tới',
        address:
            'Tập thể nhà hát Tuồng, Ngõ 169 P. Doãn Kế Thiện, Mai Dịch, Cầu Giấy, Hà Nội',
        image: 'assets/images/restaurants/comrangvutoi.jpg',
        phone: '0925 066 886',
        status: true,
        location: {21.02766786814987, 105.77290053779844},
        type: "Nước mắm",
        food_type: "BDMT",
      ),
    ],
  ),
  Food(
    preview: "assets/images/pic/goi-cuon2.jpg",
    name: "Gỏi cuốn",
    type: "Gỏi sống",
    food_type: "Goi Cuon",
    subtitle: "Mỏng nhẹ, gỏi cuốn tươi ngon bất ngờ.",
    description:
        "Gỏi cuốn là một món ăn đặc trưng của ẩm thực Việt Nam, được yêu thích bởi hương vị thơm ngon, thanh mát. Món ăn này được làm từ bánh tráng, thịt luộc, tôm, rau thơm, và bún, sau đó được cuốn thành cuộn tròn và chấm với nước chấm chua ngọt. Gỏi cuốn có nguồn gốc từ miền Nam Việt Nam, nhưng hiện nay món ăn này đã trở nên phổ biến ở khắp các vùng miền của đất nước. Gỏi cuốn có hương vị thơm ngon, đậm đà. Bánh tráng mềm, dai, thịt luộc mềm ngọt, tôm dai giòn, rau thơm thanh mát, và nước chấm chua ngọt giúp món ăn thêm đậm đà.",
    ingredients: [
      Ingredient(name: "Gao", icon: "assets/images/ingredient/rice.png"),
      Ingredient(name: "Thit heo", icon: "assets/images/ingredient/pork4.png"),
      Ingredient(name: "Tom", icon: "assets/images/ingredient/shrimp.png"),
      Ingredient(name: "Trung", icon: "assets/images/ingredient/egg.png"),
    ],
    stores: [
      Store(
        name: 'Gỏi Cuốn Top 5 Quán',
        address: '211 P. Tô Hiệu, Dịch Vọng, Cầu Giấy, Hà Nội',
        image: 'assets/images/restaurants/goicuontop5quan.jpg',
        phone: '0968 318 765',
        status: true,
        location: {21.02328394468234, 105.77381979546853},
        type: "Gỏi sống",
        food_type: "Goi Cuon",
      ),
      Store(
        name: 'Gỏi cuốn Mỹ Đình',
        address: '38 Ng. 8 Đ. Lê Quang Đạo, Mễ Trì, Nam Từ Liêm, Hà Nội',
        image: 'assets/images/restaurants/goicuonmydinh.jpg',
        phone: '0989 127 512',
        status: false,
        location: {21.037494122439934, 105.7671794063546},
        type: "Gỏi sống",
        food_type: "Goi Cuon",
      ),
      Store(
        name: 'Gỏi Cuốn Xanh',
        address: '199 Đ. Hồ Tùng Mậu, Cầu Diễn, Hà Nội',
        image: 'assets/images/restaurants/goicuonxanh.jpg',
        phone: '0925 066 886',
        status: true,
        location: {21.02766786814987, 105.77290053779844},
        type: "Gỏi sống",
        food_type: "Goi Cuon",
      ),
      Store(
        name: 'Cuốn Việt',
        address: '40 Ng. 116 P. Nhân Hòa, Nhân Chính, Thanh Xuân, Hà Nội',
        image: 'assets/images/restaurants/goicuonviet.JPG',
        phone: '0916 086 938',
        status: false,
        location: {21.0312688957702, 105.76433166876679},
        type: "Gỏi sống",
        food_type: "Goi Cuon",
      )
    ],
  ),
  Food(
      preview: "assets/images/pic/douong.jpg",
      name: "Cafe phin",
      subtitle: "Nắng sáng cùng cà phê đen",
      description:
          "Khám phá hương vị đích thực của ngày mới với cafe phin - một tách cà phê truyền thống đến từ trái tim Việt Nam. Đắm chìm trong mùi hương thơm nồng của cà phê phin, bạn sẽ trải nghiệm hành trình hương vị từ những hạt cà phê tinh tế được pha chế bằng phương pháp truyền thống này.",
      ingredients: [
        Ingredient(
            name: "Hạt cà phê", icon: "assets/images/ingredient/coffe_bean.jpg")
      ],
      stores: [],
      type: "Cao Nguyên",
      food_type: "Drink")
];
