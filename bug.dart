```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Incorrectly assuming the response body is always a JSON
      final data = jsonDecode(response.body);
      // ... process data ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // This will catch any exception, including invalid JSON
    print('Error fetching data: $e');
    // Consider more specific error handling
  }
}
```