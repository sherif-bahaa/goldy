class SilverModel {
  final String name;
  final double price;
  final String symbol;
  final DateTime updatedAt;
  final String updatedAtReadable;

  SilverModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  /// fromJson
  factory SilverModel.fromJson(Map<String, dynamic> json) {
    return SilverModel(
      name: json['name'],
      price: (json['price'] as num).toDouble(),
      symbol: json['symbol'],
      updatedAt: DateTime.parse(json['updatedAt']),
      updatedAtReadable: json['updatedAtReadable'],
    );
  }

  /// toJson
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'symbol': symbol,
      'updatedAt': updatedAt.toIso8601String(),
      'updatedAtReadable': updatedAtReadable,
    };
  }

  /// copyWith (مفيد مع Bloc/State management)
  SilverModel copyWith({
    String? name,
    double? price,
    String? symbol,
    DateTime? updatedAt,
    String? updatedAtReadable,
  }) {
    return SilverModel(
      name: name ?? this.name,
      price: price ?? this.price,
      symbol: symbol ?? this.symbol,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedAtReadable: updatedAtReadable ?? this.updatedAtReadable,
    );
  }
}
