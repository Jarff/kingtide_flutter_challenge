import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kingtide_challenge/core/core.dart';

part 'media_item_model.g.dart';

abstract class MediaItemModel implements MediaItem, Built<MediaItemModel, MediaItemModelBuilder> {
  MediaItemModel._();

  factory MediaItemModel([void Function(MediaItemModelBuilder) updates]) = _$MediaItemModel;

  static Serializer<MediaItemModel> get serializer => _$mediaItemModelSerializer;

  static MediaItemModel fromMap(Map<String, dynamic> map) {
    return coreSerializers.deserializeWith(MediaItemModel.serializer, map) as MediaItemModel;
  }
}
