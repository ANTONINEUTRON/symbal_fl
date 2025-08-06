class PriceData {
  final double price;
  final double change24h;

  const PriceData({
    required this.price,
    required this.change24h,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceData &&
          runtimeType == other.runtimeType &&
          price == other.price &&
          change24h == other.change24h;

  @override
  int get hashCode => price.hashCode ^ change24h.hashCode;

  @override
  String toString() => 'PriceData(price: $price, change24h: $change24h)';
}
