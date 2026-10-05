class NutritionService {
  final Map<String, Map<String, dynamic>> _foodCatalog = {
    'banana': {
      'servingSize': '1 medium',
      'calories': 105,
      'protein': 1.3,
      'carbs': 27,
      'fat': 0.3,
      'fiber': 3.1,
      'sugar': 14,
      'sodium': 1,
    },
    'apple': {
      'servingSize': '1 medium',
      'calories': 95,
      'protein': 0.5,
      'carbs': 25,
      'fat': 0.3,
      'fiber': 4.4,
      'sugar': 19,
      'sodium': 2,
    },
    'salad': {
      'servingSize': '1 bowl',
      'calories': 180,
      'protein': 6,
      'carbs': 18,
      'fat': 10,
      'fiber': 5,
      'sugar': 4,
      'sodium': 240,
    },
    'grilled chicken sandwich': {
      'servingSize': '1 sandwich',
      'calories': 420,
      'protein': 35,
      'carbs': 30,
      'fat': 18,
      'fiber': 4,
      'sugar': 6,
      'sodium': 780,
    },
    'oatmeal': {
      'servingSize': '1 bowl',
      'calories': 150,
      'protein': 5,
      'carbs': 27,
      'fat': 3,
      'fiber': 4,
      'sugar': 0,
      'sodium': 5,
    },
    'burger': {
      'servingSize': '1 burger',
      'calories': 520,
      'protein': 30,
      'carbs': 38,
      'fat': 28,
      'fiber': 3,
      'sugar': 8,
      'sodium': 840,
    },
    'rice bowl': {
      'servingSize': '1 bowl',
      'calories': 360,
      'protein': 12,
      'carbs': 62,
      'fat': 7,
      'fiber': 4,
      'sugar': 2,
      'sodium': 520,
    },
  };

  List<String> getQuickSuggestions() {
    return _foodCatalog.keys.toList();
  }

  Future<NutritionResult?> getNutrition(String name) async {
    final normalizedName = normalize(name);
    final selected = _foodCatalog[normalizedName];

    if (selected == null) {
      return null;
    }

    return NutritionResult.fromMap(normalizedName, selected);
  }

  String normalize(String value) {
    final trimmed = value.trim().toLowerCase();
    return trimmed.replaceAll(RegExp(r'[^a-z\s]'), '');
  }
}
