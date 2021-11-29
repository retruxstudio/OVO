class PromoBanner {
  final int id;
  final String imgPath;

  const PromoBanner({
    required this.id,
    required this.imgPath,
  });

  static List<PromoBanner> promoBanners = [
    const PromoBanner(
      id: 0,
      imgPath: "assets/images/banner.png",
    ),
    const PromoBanner(
      id: 1,
      imgPath: "assets/images/banner2.jpg",
    ),
    const PromoBanner(
      id: 2,
      imgPath: "assets/images/banner3.png",
    )
  ];
}
