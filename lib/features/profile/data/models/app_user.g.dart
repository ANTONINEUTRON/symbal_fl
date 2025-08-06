// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatar_url'] as String?,
      walletAddress: json['wallet_address'] as String?,
      bio: json['bio'] as String? ?? 'Hi there!',
      followersCount: (json['followers_count'] as num?)?.toInt() ?? 0,
      followingCount: (json['following_count'] as num?)?.toInt() ?? 0,
      plays: (json['plays'] as num?)?.toInt() ?? 0,
      symBalance: (json['sym_balance'] as num?)?.toInt() ?? 0,
      gamesCreated: (json['games_created'] as num?)?.toInt() ?? 0,
      status:
          $enumDecodeNullable(_$UserStatusEnumMap, json['status']) ??
          UserStatus.active,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
      'wallet_address': instance.walletAddress,
      'bio': instance.bio,
      'followers_count': instance.followersCount,
      'following_count': instance.followingCount,
      'plays': instance.plays,
      'sym_balance': instance.symBalance,
      'games_created': instance.gamesCreated,
      'status': _$UserStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$UserStatusEnumMap = {
  UserStatus.active: 'active',
  UserStatus.inactive: 'inactive',
  UserStatus.suspended: 'suspended',
  UserStatus.banned: 'banned',
};
