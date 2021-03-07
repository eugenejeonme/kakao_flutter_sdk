// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalEnvelope<T, U> _$LocalEnvelopeFromJson<T extends Object, U extends Object>(
    Map<String, dynamic> json) {
  return LocalEnvelope<T, U>(
    GenericsConverter<T>().fromJson(json['meta'] as Object),
    (json['documents'] as List<dynamic>?)
        ?.map((e) => GenericsConverter<U>().fromJson(e as Object))
        .toList(),
  );
}

Map<String, dynamic> _$LocalEnvelopeToJson<T extends Object, U extends Object>(
        LocalEnvelope<T, U> instance) =>
    <String, dynamic>{
      'meta': GenericsConverter<T>().toJson(instance.meta),
      'documents':
          instance.documents?.map(GenericsConverter<U>().toJson).toList(),
    };
