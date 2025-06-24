import 'package:flutter/material.dart';
import '../models/country_model.dart';
import '../services/api_service.dart';
import '../widgets/country_detail_widget.dart';
import '../theme.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  Country? _country;
  bool _isLoading = false;

  void _search() async {
    setState(() => _isLoading = true);
    final result = await ApiService.getCountryByName(_controller.text.trim());
    setState(() {
      _country = result;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          // Input TextField
          TextField(
            controller: _controller,
            style: TextStyle(color: AppTheme.textLight),
            decoration: InputDecoration(
              hintText: 'Masukkan nama negara',
              hintStyle: TextStyle(color: Colors.white70),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onSubmitted: (_) => _search(),
          ),
          const SizedBox(height: 12),

          // Tombol
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _search,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.buttonBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Cari',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Hasil
          _isLoading
              ? CircularProgressIndicator(color: Colors.white)
              : _country != null
                  ? CountryDetailWidget(country: _country!)
                  : Container(),
        ],
      ),
    );
  }
}
