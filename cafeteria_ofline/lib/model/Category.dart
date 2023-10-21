class Categoryx {
  final int? id;
  final String Category;
  final String price;
  final String ranking;
  final String ty;

  Categoryx({
    this.id,
    required this.Category,
    required this.price,
    required this.ranking,
    required this.ty,
  });

  Map<String, dynamic> toMap() {
    return {
      'Category': Category,
      'price': price,
      'ranking': ranking,
      'ty': ty,
    };
  }

  factory Categoryx.fromMap(Map<String, dynamic> map) {
    return Categoryx(
      id: map['id'],
      Category: map['Category'],
      price: map['price'],
      ranking: map['ranking'],
      ty: map['ty'],
    );
  }
}
