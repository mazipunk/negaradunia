class Country {
  final String name;
  final String? officialName;
  final String? capital;
  final String? region;
  final String? subregion;
  final String? continent;
  final int? population;
  final List<String>? timezones;
  final String? currencyName;
  final List<String>? languages;
  final String? flagUrl;

  Country({
    required this.name,
    this.officialName,
    this.capital,
    this.region,
    this.subregion,
    this.continent,
    this.population,
    this.timezones,
    this.currencyName,
    this.languages,
    this.flagUrl,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    // Parsing mata uang
    String? currency;
    if (json['currencies'] != null && json['currencies'] is Map) {
      final currencyMap = json['currencies'] as Map;
      if (currencyMap.isNotEmpty) {
        final firstCurrency = currencyMap.entries.first;
        currency = firstCurrency.value['name'];
      }
    }

    // Parsing bahasa
    List<String>? languageList;
    if (json['languages'] != null && json['languages'] is Map) {
      final languageMap = json['languages'] as Map;
      languageList = languageMap.values.map((e) => e.toString()).toList();
    }

    return Country(
      name: json['name']?['common'] ?? 'Tidak diketahui',
      officialName: json['name']?['official'],
      capital: (json['capital'] as List?)?.first,
      region: json['region'],
      subregion: json['subregion'],
      continent: (json['continents'] as List?)?.first,
      population: json['population'],
      timezones: (json['timezones'] as List?)?.map((e) => e.toString()).toList(),
      currencyName: currency,
      languages: languageList,
      flagUrl: json['flags']?['png'],
    );
  }
}
