// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Balance _$BalanceFromJson(Map<String, dynamic> json) {
  return _Balance.fromJson(json);
}

/// @nodoc
mixin _$Balance {
  String get currency => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError; // Asset path to icon
  double get usdPrice => throw _privateConstructorUsedError;
  double get usdValue => throw _privateConstructorUsedError;
  double get priceChange24h => throw _privateConstructorUsedError;

  /// Serializes this Balance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BalanceCopyWith<Balance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceCopyWith<$Res> {
  factory $BalanceCopyWith(Balance value, $Res Function(Balance) then) =
      _$BalanceCopyWithImpl<$Res, Balance>;
  @useResult
  $Res call({
    String currency,
    double amount,
    String symbol,
    double usdPrice,
    double usdValue,
    double priceChange24h,
  });
}

/// @nodoc
class _$BalanceCopyWithImpl<$Res, $Val extends Balance>
    implements $BalanceCopyWith<$Res> {
  _$BalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
    Object? symbol = null,
    Object? usdPrice = null,
    Object? usdValue = null,
    Object? priceChange24h = null,
  }) {
    return _then(
      _value.copyWith(
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            symbol: null == symbol
                ? _value.symbol
                : symbol // ignore: cast_nullable_to_non_nullable
                      as String,
            usdPrice: null == usdPrice
                ? _value.usdPrice
                : usdPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            usdValue: null == usdValue
                ? _value.usdValue
                : usdValue // ignore: cast_nullable_to_non_nullable
                      as double,
            priceChange24h: null == priceChange24h
                ? _value.priceChange24h
                : priceChange24h // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BalanceImplCopyWith<$Res> implements $BalanceCopyWith<$Res> {
  factory _$$BalanceImplCopyWith(
    _$BalanceImpl value,
    $Res Function(_$BalanceImpl) then,
  ) = __$$BalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String currency,
    double amount,
    String symbol,
    double usdPrice,
    double usdValue,
    double priceChange24h,
  });
}

/// @nodoc
class __$$BalanceImplCopyWithImpl<$Res>
    extends _$BalanceCopyWithImpl<$Res, _$BalanceImpl>
    implements _$$BalanceImplCopyWith<$Res> {
  __$$BalanceImplCopyWithImpl(
    _$BalanceImpl _value,
    $Res Function(_$BalanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
    Object? symbol = null,
    Object? usdPrice = null,
    Object? usdValue = null,
    Object? priceChange24h = null,
  }) {
    return _then(
      _$BalanceImpl(
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        symbol: null == symbol
            ? _value.symbol
            : symbol // ignore: cast_nullable_to_non_nullable
                  as String,
        usdPrice: null == usdPrice
            ? _value.usdPrice
            : usdPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        usdValue: null == usdValue
            ? _value.usdValue
            : usdValue // ignore: cast_nullable_to_non_nullable
                  as double,
        priceChange24h: null == priceChange24h
            ? _value.priceChange24h
            : priceChange24h // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceImpl extends _Balance {
  const _$BalanceImpl({
    required this.currency,
    required this.amount,
    required this.symbol,
    this.usdPrice = 0.0,
    this.usdValue = 0.0,
    this.priceChange24h = 0.0,
  }) : super._();

  factory _$BalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceImplFromJson(json);

  @override
  final String currency;
  @override
  final double amount;
  @override
  final String symbol;
  // Asset path to icon
  @override
  @JsonKey()
  final double usdPrice;
  @override
  @JsonKey()
  final double usdValue;
  @override
  @JsonKey()
  final double priceChange24h;

  @override
  String toString() {
    return 'Balance(currency: $currency, amount: $amount, symbol: $symbol, usdPrice: $usdPrice, usdValue: $usdValue, priceChange24h: $priceChange24h)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.usdPrice, usdPrice) ||
                other.usdPrice == usdPrice) &&
            (identical(other.usdValue, usdValue) ||
                other.usdValue == usdValue) &&
            (identical(other.priceChange24h, priceChange24h) ||
                other.priceChange24h == priceChange24h));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currency,
    amount,
    symbol,
    usdPrice,
    usdValue,
    priceChange24h,
  );

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceImplCopyWith<_$BalanceImpl> get copyWith =>
      __$$BalanceImplCopyWithImpl<_$BalanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceImplToJson(this);
  }
}

abstract class _Balance extends Balance {
  const factory _Balance({
    required final String currency,
    required final double amount,
    required final String symbol,
    final double usdPrice,
    final double usdValue,
    final double priceChange24h,
  }) = _$BalanceImpl;
  const _Balance._() : super._();

  factory _Balance.fromJson(Map<String, dynamic> json) = _$BalanceImpl.fromJson;

  @override
  String get currency;
  @override
  double get amount;
  @override
  String get symbol; // Asset path to icon
  @override
  double get usdPrice;
  @override
  double get usdValue;
  @override
  double get priceChange24h;

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BalanceImplCopyWith<_$BalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
