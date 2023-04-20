import 'package:benchmark_harness/benchmark_harness.dart';

void main() {
  final builderBench = BuilderPatternBenchmark();
  final constructorBench = ConstructorBenchmark();
  final benmarks = [builderBench, constructorBench];
  for (var benchmark in benmarks) {
    print('${benchmark.name}: ${benchmark.measure()}');
  }

  // This just ensures we don't optimize anything away.
  print(builderBench.a);
  print(constructorBench.a);
}

class BuilderPatternBenchmark extends BenchmarkBase {
  BuilderPatternBenchmark() : super('builder pattern');

  A? a;

  @override
  void run() {
    final builder = ABuilder();
    builder
      ..b = null
      ..c = 'hello';
    a = builder.build();
  }
}

class ConstructorBenchmark extends BenchmarkBase {
  ConstructorBenchmark() : super('regular constructor');

  A? a;

  @override
  void run() {
    final b = null;
    final c = 'hello';
    a = A(b, c);
  }
}

class A {
  final int? b;
  final String c;

  A(this.b, this.c);
}

class ABuilder {
  int? b;
  late String c;

  ABuilder();

  A build() => A(b, c);
}
