import 'package:flutter/material.dart';
import '../models/country_model.dart';
import '../theme.dart';

class CountryDetailWidget extends StatelessWidget {
  final Country country;

  const CountryDetailWidget({required this.country});

  Widget buildDetailItem(String label, String? value) {
    return value == null || value.isEmpty
        ? SizedBox()
        : Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.oliveBrown,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '$label: $value',
                style: TextStyle(color: AppTheme.textLight, fontSize: 16),
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bendera
          if (country.flagUrl != null)
            Center(
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppTheme.cardDark,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Image.network(country.flagUrl!, height: 80),
              ),
            ),
          const SizedBox(height: 20),

          buildDetailItem('Nama', country.name),
          buildDetailItem('Nama Resmi', country.officialName),
          buildDetailItem('Ibu Kota', country.capital),
          buildDetailItem('Wilayah', country.region),
          buildDetailItem('Subwilayah', country.subregion),
          buildDetailItem('Benua', country.continent),
          buildDetailItem('Populasi', country.population?.toString()),
          buildDetailItem('Zona Waktu', country.timezones?.join(', ')),
          buildDetailItem('Mata Uang', country.currencyName),
          buildDetailItem('Bahasa', country.languages?.join(', ')),
        ],
      ),
    );
  }
}
