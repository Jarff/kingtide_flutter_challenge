// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_item_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MediaItemModel> _$mediaItemModelSerializer =
    _$MediaItemModelSerializer();

class _$MediaItemModelSerializer
    implements StructuredSerializer<MediaItemModel> {
  @override
  final Iterable<Type> types = const [MediaItemModel, _$MediaItemModel];
  @override
  final String wireName = 'MediaItemModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MediaItemModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'Title',
      serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      ),
      'Year',
      serializers.serialize(object.year, specifiedType: const FullType(String)),
      'Rated',
      serializers.serialize(
        object.rated,
        specifiedType: const FullType(String),
      ),
      'Released',
      serializers.serialize(
        object.released,
        specifiedType: const FullType(String),
      ),
      'Runtime',
      serializers.serialize(
        object.runtime,
        specifiedType: const FullType(String),
      ),
      'Genre',
      serializers.serialize(
        object.genre,
        specifiedType: const FullType(String),
      ),
      'Director',
      serializers.serialize(
        object.director,
        specifiedType: const FullType(String),
      ),
      'Writer',
      serializers.serialize(
        object.writer,
        specifiedType: const FullType(String),
      ),
      'Actors',
      serializers.serialize(
        object.actors,
        specifiedType: const FullType(String),
      ),
      'Plot',
      serializers.serialize(object.plot, specifiedType: const FullType(String)),
      'Language',
      serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      ),
      'Country',
      serializers.serialize(
        object.country,
        specifiedType: const FullType(String),
      ),
      'Awards',
      serializers.serialize(
        object.awards,
        specifiedType: const FullType(String),
      ),
      'Poster',
      serializers.serialize(
        object.poster,
        specifiedType: const FullType(String),
      ),
      'totalSeasons',
      serializers.serialize(
        object.totalSeasons,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  MediaItemModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaItemModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Year':
          result.year =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Rated':
          result.rated =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Released':
          result.released =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Runtime':
          result.runtime =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Genre':
          result.genre =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Director':
          result.director =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Writer':
          result.writer =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Actors':
          result.actors =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Plot':
          result.plot =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Language':
          result.language =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Country':
          result.country =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Awards':
          result.awards =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Poster':
          result.poster =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'totalSeasons':
          result.totalSeasons =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MediaItemModel extends MediaItemModel {
  @override
  final String title;
  @override
  final String year;
  @override
  final String rated;
  @override
  final String released;
  @override
  final String runtime;
  @override
  final String genre;
  @override
  final String director;
  @override
  final String writer;
  @override
  final String actors;
  @override
  final String plot;
  @override
  final String language;
  @override
  final String country;
  @override
  final String awards;
  @override
  final String poster;
  @override
  final String totalSeasons;

  factory _$MediaItemModel([void Function(MediaItemModelBuilder)? updates]) =>
      (MediaItemModelBuilder()..update(updates))._build();

  _$MediaItemModel._({
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.language,
    required this.country,
    required this.awards,
    required this.poster,
    required this.totalSeasons,
  }) : super._();
  @override
  MediaItemModel rebuild(void Function(MediaItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaItemModelBuilder toBuilder() => MediaItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaItemModel &&
        title == other.title &&
        year == other.year &&
        rated == other.rated &&
        released == other.released &&
        runtime == other.runtime &&
        genre == other.genre &&
        director == other.director &&
        writer == other.writer &&
        actors == other.actors &&
        plot == other.plot &&
        language == other.language &&
        country == other.country &&
        awards == other.awards &&
        poster == other.poster &&
        totalSeasons == other.totalSeasons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, rated.hashCode);
    _$hash = $jc(_$hash, released.hashCode);
    _$hash = $jc(_$hash, runtime.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jc(_$hash, director.hashCode);
    _$hash = $jc(_$hash, writer.hashCode);
    _$hash = $jc(_$hash, actors.hashCode);
    _$hash = $jc(_$hash, plot.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, awards.hashCode);
    _$hash = $jc(_$hash, poster.hashCode);
    _$hash = $jc(_$hash, totalSeasons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaItemModel')
          ..add('title', title)
          ..add('year', year)
          ..add('rated', rated)
          ..add('released', released)
          ..add('runtime', runtime)
          ..add('genre', genre)
          ..add('director', director)
          ..add('writer', writer)
          ..add('actors', actors)
          ..add('plot', plot)
          ..add('language', language)
          ..add('country', country)
          ..add('awards', awards)
          ..add('poster', poster)
          ..add('totalSeasons', totalSeasons))
        .toString();
  }
}

class MediaItemModelBuilder
    implements Builder<MediaItemModel, MediaItemModelBuilder> {
  _$MediaItemModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _rated;
  String? get rated => _$this._rated;
  set rated(String? rated) => _$this._rated = rated;

  String? _released;
  String? get released => _$this._released;
  set released(String? released) => _$this._released = released;

  String? _runtime;
  String? get runtime => _$this._runtime;
  set runtime(String? runtime) => _$this._runtime = runtime;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  String? _director;
  String? get director => _$this._director;
  set director(String? director) => _$this._director = director;

  String? _writer;
  String? get writer => _$this._writer;
  set writer(String? writer) => _$this._writer = writer;

  String? _actors;
  String? get actors => _$this._actors;
  set actors(String? actors) => _$this._actors = actors;

  String? _plot;
  String? get plot => _$this._plot;
  set plot(String? plot) => _$this._plot = plot;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _awards;
  String? get awards => _$this._awards;
  set awards(String? awards) => _$this._awards = awards;

  String? _poster;
  String? get poster => _$this._poster;
  set poster(String? poster) => _$this._poster = poster;

  String? _totalSeasons;
  String? get totalSeasons => _$this._totalSeasons;
  set totalSeasons(String? totalSeasons) => _$this._totalSeasons = totalSeasons;

  MediaItemModelBuilder();

  MediaItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _year = $v.year;
      _rated = $v.rated;
      _released = $v.released;
      _runtime = $v.runtime;
      _genre = $v.genre;
      _director = $v.director;
      _writer = $v.writer;
      _actors = $v.actors;
      _plot = $v.plot;
      _language = $v.language;
      _country = $v.country;
      _awards = $v.awards;
      _poster = $v.poster;
      _totalSeasons = $v.totalSeasons;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaItemModel other) {
    _$v = other as _$MediaItemModel;
  }

  @override
  void update(void Function(MediaItemModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaItemModel build() => _build();

  _$MediaItemModel _build() {
    final _$result =
        _$v ??
        _$MediaItemModel._(
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'MediaItemModel',
            'title',
          ),
          year: BuiltValueNullFieldError.checkNotNull(
            year,
            r'MediaItemModel',
            'year',
          ),
          rated: BuiltValueNullFieldError.checkNotNull(
            rated,
            r'MediaItemModel',
            'rated',
          ),
          released: BuiltValueNullFieldError.checkNotNull(
            released,
            r'MediaItemModel',
            'released',
          ),
          runtime: BuiltValueNullFieldError.checkNotNull(
            runtime,
            r'MediaItemModel',
            'runtime',
          ),
          genre: BuiltValueNullFieldError.checkNotNull(
            genre,
            r'MediaItemModel',
            'genre',
          ),
          director: BuiltValueNullFieldError.checkNotNull(
            director,
            r'MediaItemModel',
            'director',
          ),
          writer: BuiltValueNullFieldError.checkNotNull(
            writer,
            r'MediaItemModel',
            'writer',
          ),
          actors: BuiltValueNullFieldError.checkNotNull(
            actors,
            r'MediaItemModel',
            'actors',
          ),
          plot: BuiltValueNullFieldError.checkNotNull(
            plot,
            r'MediaItemModel',
            'plot',
          ),
          language: BuiltValueNullFieldError.checkNotNull(
            language,
            r'MediaItemModel',
            'language',
          ),
          country: BuiltValueNullFieldError.checkNotNull(
            country,
            r'MediaItemModel',
            'country',
          ),
          awards: BuiltValueNullFieldError.checkNotNull(
            awards,
            r'MediaItemModel',
            'awards',
          ),
          poster: BuiltValueNullFieldError.checkNotNull(
            poster,
            r'MediaItemModel',
            'poster',
          ),
          totalSeasons: BuiltValueNullFieldError.checkNotNull(
            totalSeasons,
            r'MediaItemModel',
            'totalSeasons',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
