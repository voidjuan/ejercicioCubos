import 'dart:io';

void main(List<String> args) {
  List<double> Sueldos = [];
  int cantEmpleados;
  double salario, totalSalarios = 0, promedio;

  print("Cual es la cantidad de empleados a los que se les tiene que pagar?");
  cantEmpleados = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < cantEmpleados; i++) {
    print("Cual es el sueldo del empleado #${i + 1}?");
    salario = double.parse(stdin.readLineSync()!);
    Sueldos.add(salario);
    totalSalarios += salario;
  }

  print("***********************************************");
  print(Sueldos);
  print("***********************************************");
  print("Cual fue el gasto total en los salarios de nuestros empleados?");
  print("el gasto total fue $totalSalarios");
  print("***********************************************");

  Sueldos.sort();
  print("Los empleados que menos salario obtuvieron fueron:");
  var empleadosPeoresPagos = Sueldos.take(3);
  print("Los empleados mejores pagos fueron $empleadosPeoresPagos");
  print("***********************************************");

  print("Cual es el salario promedio de dichos empleados?");
  promedio = totalSalarios / (Sueldos.length);
  print("El salario promedio de los empleados es de $promedio pesos");
  print("***********************************************");
}
