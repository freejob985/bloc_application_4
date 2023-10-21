class Check {
  final int? id;
  final String vb;

  Check({
    this.id,
    required this.vb,
  });


  Map<String, dynamic> toMap() {
    return {
      'vb': vb,
    };
  }

  factory Check.fromMap(Map<String, dynamic> map) {
    return Check(
      id: map['id'],
      vb: map['vb'],
    );
  }
}
