import 'package:json_annotation/json_annotation.dart';
import 'package:kakao_flutter_sdk/src/search/model/thumbnail_result.dart';

part 'book.g.dart';

/// Book searched with K
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Book extends ThumbnailResult {
  Book(
      String title,
      String contents,
      Uri url,
      DateTime datetime,
      Uri thumbnail,
      this.isbn,
      this.authors,
      this.publisher,
      this.translators,
      this.price,
      this.salePrice,
      this.status)
      : super(title, contents, url, datetime, thumbnail);

  String isbn;
  List<String> authors;
  String publisher;
  List<String> translators;

  /// regular price
  int price;

  /// actual sale price
  int salePrice;

  /// Sales status (such as normal, sold out, discontinued)
  /// Use this only for display purpose, not as an enum.
  String status;

  /// <nodoc>
  //factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  factory Book.fromJson(Map<String, dynamic> json) {
    try {
      return Book(
        json['title'] as String,
        json['contents'] as String,
        Uri.parse(json['url'] as String),
        DateTime.parse(json['datetime'] as String),
        Uri.parse(json['thumbnail'] as String),
        json['isbn'] as String,
        (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
        json['publisher'] as String,
        (json['translators'] as List<dynamic>).map((e) => e as String).toList(),
        json['price'] as int,
        json['sale_price'] as int,
        json['status'] as String,
      );
    } on FormatException catch (_) {
      return Book(
        json['title'] as String,
        json['contents'] as String,
        Uri.parse(json['url'] as String),
        DateTime.parse('1970-01-01'),
        Uri.parse(json['thumbnail'] as String),
        json['isbn'] as String,
        (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
        json['publisher'] as String,
        (json['translators'] as List<dynamic>).map((e) => e as String).toList(),
        json['price'] as int,
        json['sale_price'] as int,
        json['status'] as String,
      );
    }
  }

  /// <nodoc>
  Map<String, dynamic> toJson() => _$BookToJson(this);

  @override
  String toString() => toJson().toString();
}
