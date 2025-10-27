import 'package:kingtide_challenge/core/core.dart';

class ApiFilter {
  final GenderEnum? gender;
  final StatusEnum? status;
  final SpeciesEnum? species;
  final String? query;
  final int page;

  const ApiFilter({this.gender, this.status, this.species, this.query, this.page = 1});

  /// Creates a copy of this ApiFilter with the given fields replaced
  ApiFilter copyWith({GenderEnum? gender, StatusEnum? status, SpeciesEnum? species, String? query, int? page}) {
    return ApiFilter(
      gender: gender ?? this.gender,
      status: status ?? this.status,
      species: species ?? this.species,
      query: query,
      page: page ?? this.page,
    );
  }

  /// Converts the filter to a query string for API requests
  String toQueryString() {
    final List<String> queryParams = [];

    if (gender != null) {
      queryParams.add('gender=${Uri.encodeComponent(gender!.name)}');
    }

    if (status != null) {
      queryParams.add('status=${Uri.encodeComponent(status!.name)}');
    }

    if (species != null) {
      queryParams.add('species=${Uri.encodeComponent(species!.name)}');
    }

    if (query != null && query!.isNotEmpty) {
      queryParams.add('query=${Uri.encodeComponent(query!)}');
    }

    queryParams.add('page=$page');

    return queryParams.isEmpty ? '' : '?${queryParams.join('&')}';
  }

  /// Checks if any filter is applied
  bool get hasFilters => gender != null || status != null || species != null || query != null || page != 1;

  /// Checks if the filter is empty (no filters applied)
  bool get isEmpty => !hasFilters;

  /// Creates an empty filter
  static const ApiFilter empty = ApiFilter();
}
