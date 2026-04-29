import 'dart:convert';
import 'package:http/http.dart' as http;
import 'surat.dart';

class ApiService {
  final String baseUrl = 'https://api.myquran.com/v2/quran/surat/all';
  Future<List<Surat>> fetchSurat() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body)['data'];
      return data.map((item) => Surat.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load surat');
    }
  }
}
