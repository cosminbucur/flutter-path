# flutterpath

A learning project for Flutter.

## generate code
flutter pub run build_runner build
flutter pub run build_runner watch

## start

- start json server
json-server lib/domain/mocks/mocks.json

- kill port 3000
sudo kill -9 $(sudo lsof -t -i:3000)

http://localhost:3000/products
