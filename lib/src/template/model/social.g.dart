// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Social _$SocialFromJson(Map<String, dynamic> json) {
  return Social(
    likeCount: json['like_count'] as int,
    commentCount: json['comment_count'] as int,
    sharedCount: json['shared_count'] as int,
    viewCount: json['view_count'] as int,
    subscriberCount: json['subscriber_count'] as int,
  );
}

Map<String, dynamic> _$SocialToJson(Social instance) => <String, dynamic>{
      'like_count': instance.likeCount,
      'comment_count': instance.commentCount,
      'shared_count': instance.sharedCount,
      'view_count': instance.viewCount,
      'subscriber_count': instance.subscriberCount,
    };
