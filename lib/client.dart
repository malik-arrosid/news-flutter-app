import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/response_articles.dart';

class Client {
  static Future<List<Article>> fetchArticle() async {
    const url =
        "https://newsapi.org/v2/everything?q=Indonesia&sources?country=id&apiKey=YOUR_API_KEY";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      ResponseArticles responseArticles = ResponseArticles.fromJson(responseBody);
      return responseArticles.articles;
    } else {
      throw Exception("Failed to Loading Article");
    }
  }
}
