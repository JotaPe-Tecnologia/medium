// Copyright 2024 JotapeTecnologia

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Class that represents a person.
final class Person {
  /// The height of the person.
  final double height;

  /// The weight of the person.
  final double weight;

  const Person({
    required this.height,
    required this.weight,
  });

  /// Returns the person's body mass index.
  ///
  /// The body mass index is the person's weight divided by the square of the person's height.
  /// For example, a person with a weight of 70 and a height of 1.75 has a body mass index of 22.86.
  double bodyMassIndex() {
    if (height <= 0 || weight <= 0) {
      throw Exception('The height and weight must be greater than 0');
    }
    
    return ((weight / (height * height)) * 100).ceil() / 100;
  }

  /// Returns the classification of the person's body mass index.
  ///
  /// The body mass index (BMI) is classified as follows:
  ///
  /// - Underweight: BMI < 18.5
  /// - Normal weight: 18.5 <= BMI < 25
  /// - Overweight: 25 <= BMI < 30
  /// - Obesity: 30 <= BMI
  String bodyMassIndexClassification() {
    if (bodyMassIndex() < 18.5) {
      return 'Underweight';
    } else if (bodyMassIndex() < 25) {
      return 'Normal weight';
    } else if (bodyMassIndex() < 30) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  /// Returns a string representation of the person.
  ///
  /// The string representation includes the person's height, weight, body mass index, and body mass index classification.
  @override
  String toString() {
    return 'Height: $height, Weight: $weight, BMI: ${bodyMassIndex()}, Classification: ${bodyMassIndexClassification()}';
  }
}
