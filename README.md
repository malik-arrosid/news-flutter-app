# News Flutter App

A Flutter application to provide users with the latest news articles. This project demonstrates the use of Flutter for building a responsive and dynamic news application.

## Features

- Fetches news articles from a remote API.
- Displays news in a clean and user-friendly interface.
- Supports both light and dark modes.
- Allows users to read full articles within the app.
- Refresh functionality to get the latest news updates.

## Getting Started

### Prerequisites

Ensure you have Flutter installed on your machine. For installation instructions, visit [Flutter's official documentation](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/malik-arrosid/news-flutter-app.git
    ```

2. Navigate to the project directory:

    ```bash
    cd news-flutter-app
    ```
    
3. Install dependencies:

    ```bash
    flutter pub get
    ```
    
4. **Set up News API Key**
    - Get an API Key from [News API](https://newsapi.org/).
    - Add the API Key in `lib/client.dart`:
        ```
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
        ```

5. Run the app:

    ```bash
    flutter run
    ```
