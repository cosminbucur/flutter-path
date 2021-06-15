// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    colors: (json['colors'] as List<dynamic>)
        .map((e) => const ColorConverter().fromJson(e as String))
        .toList(),
    rating: (json['rating'] as num).toDouble(),
    price: (json['price'] as num).toDouble(),
    isFavorite: json['isFavorite'] as bool,
    isPopular: json['isPopular'] as bool,
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'colors': instance.colors.map(const ColorConverter().toJson).toList(),
      'rating': instance.rating,
      'price': instance.price,
      'isFavorite': instance.isFavorite,
      'isPopular': instance.isPopular,
    };
