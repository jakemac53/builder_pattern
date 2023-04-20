Basic benchmarks for the builder pattern versus regular constructors.

**Note**: Before any of the following commands, you will need to run
`dart pub get`.

## Running JIT vm benchmarks

`dart run benchmark/main.dart`

## Running AOT benchmarks

`dart compile exe benchmark/main.dart && benchmark/main.exe`

## Running Web debug mode benchmarks

`dart run build_runner serve benchmark`

Navigate to http://localhost:8080/ and open up the chrome console.

## Running Web release mode benchmarks

`dart run build_runner serve benchmark --release`

Navigate to http://localhost:8080/ and open up the chrome console.

Note that you can tweak the dart2js options in the `build.yaml` file if so
desired.
