# nutrition_scanner

A Flutter app to capture a food image and quickly display estimated nutritional values for common foods.

Features:
- Take a photo from the camera
- Quick food suggestions based on common items
- Nutrition summary including calories, protein, carbs, fat, fiber, sugar, and sodium
- Ready for future integration with a cloud image recognition API or USDA/FoodData Central backend

Getting started:

1. Install Flutter SDK: https://docs.flutter.dev/get-started/install
2. Run:
   ```bash
   flutter pub get
   flutter run
   ```
3. Use the camera button to capture an image and analyze the food.

Current behavior:
- This version uses a fast local nutrition catalog for common foods, making the result quick and dependable.
- It can later be upgraded with TensorFlow Lite or a nutrition API for more advanced recognition.
