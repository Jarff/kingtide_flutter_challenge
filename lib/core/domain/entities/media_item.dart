import 'package:built_value/built_value.dart';

abstract class MediaItem {
  @BuiltValueField(wireName: 'Title')
  String get title;
  @BuiltValueField(wireName: 'Year')
  String get year;
  @BuiltValueField(wireName: 'Rated')
  String get rated;
  @BuiltValueField(wireName: 'Released')
  String get released;
  @BuiltValueField(wireName: 'Runtime')
  String get runtime;
  @BuiltValueField(wireName: 'Genre')
  String get genre;
  @BuiltValueField(wireName: 'Director')
  String get director;
  @BuiltValueField(wireName: 'Writer')
  String get writer;
  @BuiltValueField(wireName: 'Actors')
  String get actors;
  @BuiltValueField(wireName: 'Plot')
  String get plot;
  @BuiltValueField(wireName: 'Language')
  String get language;
  @BuiltValueField(wireName: 'Country')
  String get country;
  @BuiltValueField(wireName: 'Awards')
  String get awards;
  @BuiltValueField(wireName: 'Poster')
  String get poster;
  @BuiltValueField(wireName: 'totalSeasons')
  String get totalSeasons;
}
