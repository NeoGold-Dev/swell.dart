<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

This is an non official swell api for swell.is

## Features

- [ ] Products
- [ ] Categories
- [ ] Attributes
- [ ] Accounts
- [ ] Carts
- [ ] Payments
- [ ] Currencies
- [ ] Localization
- [ ] Settings
- [ ] Subscriptions

## Getting started

### init swell

## Usage

swell.products.get()

```dart
final client = SwellApi(dio, baseUrl: Swell.instance.url.toString());

  client.getProducts({}).then((it) => print(it.results));
```

## Additional information

Still work in progress
