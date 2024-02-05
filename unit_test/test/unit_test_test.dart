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

import 'package:test/test.dart';
import 'package:unit_test/unit_test.dart';

void main() {
  group(
    'bodyMassIndex() |',
    () {
      group(
        'Error Scenarios |',
        () {
          test(
            'Should throw an exception when calculate body mass index of the person with height is zero',
            () {
              // Arrange
              const expectedMessage = 'Exception: The height and weight must be greater than 0';
              const height = 0.0;
              const weight = 70.0;
              final person = Person(height: height, weight: weight);

              try {
                // Act
                person.bodyMassIndex();
              } on Exception catch (exception) {
                // Assert
                expect(exception.toString(), equals(expectedMessage));
              }
            },
          );

          test(
            'Should throw an exception when calculate body mass index of the person with height is negative',
            () {
              // Arrange
              const expectedMessage = 'Exception: The height and weight must be greater than 0';
              const height = -1.75;
              const weight = 70.0;
              final person = Person(height: height, weight: weight);

              try {
                // Act
                person.bodyMassIndex();
              } on Exception catch (exception) {
                // Assert
                expect(exception.toString(), equals(expectedMessage));
              }
            },
          );

          test(
            'Should throw an exception when calculate body mass index of the person with weight is zero',
            () {
              // Arrange
              const expectedMessage = 'Exception: The height and weight must be greater than 0';
              const height = 1.75;
              const weight = 0.0;
              final person = Person(height: height, weight: weight);

              try {
                // Act
                person.bodyMassIndex();
              } on Exception catch (exception) {
                // Assert
                expect(exception.toString(), equals(expectedMessage));
              }
            },
          );

          test(
            'Should throw an exception when calculate body mass index of the person with weight is negative',
            () {
              // Arrange
              const expectedMessage = 'Exception: The height and weight must be greater than 0';
              const height = 1.75;
              const weight = -70.0;
              final person = Person(height: height, weight: weight);

              try {
                // Act
                person.bodyMassIndex();
              } on Exception catch (exception) {
                // Assert
                expect(exception.toString(), equals(expectedMessage));
              }
            },
          );
        },
      );

      group(
        'Success Scenarios |',
        () {
          test(
            'Should return the body mass index of the person when the height and weight are valid',
            () {
              // Arrange
              const expextedBMI = 22.86;
              const height = 1.75;
              const weight = 70.0;
              final person = Person(height: height, weight: weight);

              // Act
              final result = person.bodyMassIndex();

              // Assert
              expect(result, equals(expextedBMI));
            },
          );
        },
      );
    },
  );

  group(
    'bodyMassIndexClassification() |',
    () {
      group(
        'Error Scenarios |',
        () {
          test(
            'Should throw an exception when calculate body mass index of the person with height is zero',
            () {
              // Arrange
              const expectedMessage = 'Exception: The height and weight must be greater than 0';
              const height = 0.0;
              const weight = 70.0;
              final person = Person(height: height, weight: weight);

              try {
                // Act
                person.bodyMassIndexClassification();
              } on Exception catch (exception) {
                // Assert
                expect(exception.toString(), equals(expectedMessage));
              }
            },
          );

          test(
            'Should throw an exception when calculate body mass index of the person with height is negative',
            () {
              // Arrange
              const expectedMessage = 'Exception: The height and weight must be greater than 0';
              const height = -1.75;
              const weight = 70.0;
              final person = Person(height: height, weight: weight);

              try {
                // Act
                person.bodyMassIndexClassification();
              } on Exception catch (exception) {
                // Assert
                expect(exception.toString(), equals(expectedMessage));
              }
            },
          );

          test(
            'Should throw an exception when calculate body mass index of the person with weight is zero',
            () {
              // Arrange
              const expectedMessage = 'Exception: The height and weight must be greater than 0';
              const height = 1.75;
              const weight = 0.0;
              final person = Person(height: height, weight: weight);

              try {
                // Act
                person.bodyMassIndexClassification();
              } on Exception catch (exception) {
                // Assert
                expect(exception.toString(), equals(expectedMessage));
              }
            },
          );

          test(
            'Should throw an exception when calculate body mass index of the person with weight is negative',
            () {
              // Arrange
              const expectedMessage = 'Exception: The height and weight must be greater than 0';
              const height = 1.75;
              const weight = -70.0;
              final person = Person(height: height, weight: weight);

              try {
                // Act
                person.bodyMassIndexClassification();
              } on Exception catch (exception) {
                // Assert
                expect(exception.toString(), equals(expectedMessage));
              }
            },
          );
        },
      );

      group(
        'Success Scenarios |',
        () {
          test(
            'Should return the body mass index classification of the person when the height and weight are valid',
            () {
              // Arrange
              const expextedBMIClassification = 'Normal weight';
              const height = 1.75;
              const weight = 70.0;
              final person = Person(height: height, weight: weight);

              // Act
              final result = person.bodyMassIndexClassification();

              // Assert
              expect(result, equals(expextedBMIClassification));
            },
          );

          test(
            'Should return "Underweight" when the body mass index is less than 18.5',
            () {
              // Arrange
              const expextedBMIClassification = 'Underweight';
              const height = 1.75;
              const weight = 50.0;
              final person = Person(height: height, weight: weight);

              // Act
              final result = person.bodyMassIndexClassification();

              // Assert
              expect(result, equals(expextedBMIClassification));
            },
          );

          test(
            'Should return "Normal weight" when the body mass index is more than 18.5 and less than 25',
            () {
              // Arrange
              const expextedBMIClassification = 'Normal weight';
              const height = 1.75;
              const weight = 70.0;
              final person = Person(height: height, weight: weight);

              // Act
              final result = person.bodyMassIndexClassification();

              // Assert
              expect(result, equals(expextedBMIClassification));
            },
          );

          test(
            'Should return "Overweight" when the body mass index is more than 25 and less than 30',
            () {
              // Arrange
              const expextedBMIClassification = 'Overweight';
              const height = 1.75;
              const weight = 90.0;
              final person = Person(height: height, weight: weight);

              // Act
              final result = person.bodyMassIndexClassification();

              // Assert
              expect(result, equals(expextedBMIClassification));
            },
          );

          test(
            'Should return "Obesity" when the body mass index is more than 30',
            () {
              // Arrange
              const expextedBMIClassification = 'Obesity';
              const height = 1.75;
              const weight = 110.0;
              final person = Person(height: height, weight: weight);

              // Act
              final result = person.bodyMassIndexClassification();

              // Assert
              expect(result, equals(expextedBMIClassification));
            },
          );
        },
      );
    },
  );

  group(
    'toString() |',
    () {
      group(
        'Error Scenarios |',
        () {
          test(
            'Should throw an exception when generating the String version of a Person',
            () {
              // Arrange
              const expectedMessage = 'Exception: The height and weight must be greater than 0';
              const height = 0.0;
              const weight = 70.0;
              final person = Person(height: height, weight: weight);

              try {
                // Act
                person.toString();
              } on Exception catch (exception) {
                // Assert
                expect(exception.toString(), equals(expectedMessage));
              }
            },
          );
        },
      );

      group(
        'Success Scenarios |',
        () {
          test(
            'Should return the body mass index classification of the person when the height and weight are valid',
            () {
              // Arrange
              const expextedString = 'Height: 1.75, Weight: 70.0, BMI: 22.86, Classification: Normal weight';
              const height = 1.75;
              const weight = 70.0;
              final person = Person(height: height, weight: weight);

              // Act
              final result = person.toString();

              // Assert
              expect(result, equals(expextedString));
            },
          );
        },
      );
    },
  );
}
