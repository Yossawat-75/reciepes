class Recipe {
  String imgLabel;
  String imageUrl;
  String description;
  int price;

  Recipe(this.imageUrl, this.imgLabel, this.description, this.price);

  static List<Recipe> samples = [
    Recipe(
      'assets/images/uniqlo1.webp',
      'เสื้อโปโล ผ้าคอตตอน ลายทาง',
      'เสื้อโปโล ผ้าคอตตอน ลายทาง ผ้าคอตตอน 100% ผ่านกรรมวิธีฟอกเพื่อให้สัมผัสสบายในลุคแคชชวล ลายทางกว้าง',
      790,
    ),
    Recipe(
      'assets/images/uniqlo2.webp',
      'เสื้อโปโลสเวตเตอร์ | แขนสั้น, ลายทาง',
      'เสื้อโปโลสเวตเตอร์ | แขนสั้น, ลายทาง ทำจากผ้าคอตตอนเรยอนสัมผัสเรียบลื่น',
      990,
    ),
    Recipe(
      'assets/images/uniqlo3.webp',
      'เสื้อโปโลสเวตเตอร์ | แขนสั้น',
      'เสื้อโปโลสเวตเตอร์ | แขนสั้น ทำจากผ้าคอตตอนเรยอนสัมผัสเรียบลื่น ซักเครื่องได้',
      890,
    ),
    Recipe(
      'assets/images/uniqlo4.webp',
      'เสื้อสเวตเตอร์ โปโล ผ้าถักลายนูน (Ribbed) แบบซักได้',
      'เสื้อสเวตเตอร์ โปโล ผ้าถักลายนูน (Ribbed) แบบซักได้ สัมผัสนุ่มไม่ระคายผิว',
      1290,
    ),
    Recipe(
      'assets/images/uniqlo5.webp',
      'เสื้อโปโล สเวตเตอร์ ผ้าถักลายนูน (Ribbed) แบบซักได้ | ลายทาง',
      'เสื้อโปโล สเวตเตอร์ ผ้าถักลายนูน (Ribbed) แบบซักได้ ดีไซน์สกิปเปอร์หรูหรา',
      1190,
    ),
  ];
}
