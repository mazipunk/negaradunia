import 'package:flutter/material.dart';
import '../models/country_model.dart';
import '../services/api_service.dart';
import '../services/location_service.dart'; // ✅ Sudah diimpor dengan benar
import '../widgets/country_detail_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Country? _country;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadCountry();
  }

  Future<void> _loadCountry() async {
    final countryName = await LocationService.getMyCountryName();
    if (countryName != null) {
      final country = await ApiService.getCountryByName(countryName);
      setState(() {
        _country = country;
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Negara Saya')),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _country != null
              ? CountryDetailWidget(country: _country!)
              : Center(child: Text('Data tidak ditemukan')),
    );
  }
}
