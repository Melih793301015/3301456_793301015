class Book {
  String kfoto;                                                                 //Bir Kitabın özellikleri
  String kadi;
  String kyazar;
  String aciklama;
  String kisim;
  late bool kbegen;

  Book({                                                                        //kitap özellikleri tanımlandı
    required this.kfoto,
    required this.kadi,
    required this.kyazar,
    required this.kbegen,
    required this.aciklama,
    required this.kisim,
  });
}
/* required this.name,
    required this.publisher,
    required this.image,
    required this.like,*/