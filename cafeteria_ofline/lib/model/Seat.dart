class Seat {
  final int? id;
  final String seat;
  final String Product;
  final String Quantity;
  final String Total;
  final String Check;
  final String TIME;
  final String Section;

  Seat({
    this.id,
    required this.seat,
    required this.Product,
    required this.Quantity,
    required this.Total,
    required this.Check,
    required this.TIME,
    required this.Section,
  });

  Map<String, dynamic> toMap() {
    return {
      'seat': seat,
      'Product': Product,
      'Quantity': Quantity,
      'Total': Total,
      'Check': Check,
      'TIME': TIME,
      'Section': Section,
    };
  }

  factory Seat.fromMap(Map<String, dynamic> map) {
    return Seat(
      id: map['id'],
      seat: map['seat'],
      Product: map['Product'],
      Quantity: map['Quantity'],
      Total: map['Total'],
      Check: map['Check'],
      TIME: map['TIME'],
      Section: map['Section'],
    );
  }

  
}
