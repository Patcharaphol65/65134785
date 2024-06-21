import 'dart:math';
double calculateTriangleArea(double sideA, double sideB, double sideC) {
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    throw ArgumentError("All side lengths must be positive numbers.");
  }
  if ((sideA + sideB <= sideC) || (sideA + sideC <= sideB) || (sideB + sideC <= sideA)) {
    throw ArgumentError("The given sides do not form a triangle.");
  }
  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC));
  
  return area;
}
void main() {
  try {
    double sideA = 3;
    double sideB = 4;
    double sideC = 5;
    double area = calculateTriangleArea(sideA, sideB, sideC);
    print("The area of the triangle is: $area");
  } catch (e) {
    print(e);
  }
}
