# Rally Trivia Rumble

This repository now runs as a standard Flutter project maintained in VS Code (no FlutterFlow export workflow required).

## Prerequisites

- Flutter SDK (stable channel)
- Dart SDK (bundled with Flutter)
- Android Studio/Xcode if building mobile targets

## Run locally

```bash
flutter pub get
flutter run
```

## Web

```bash
flutter run -d chrome
```

## Project notes

- App-specific shared framework code now lives under `lib/app/`.
- Routing is defined in `lib/app/nav/nav.dart`.
- Firebase and Supabase startup configuration is initialized in `lib/main.dart`.
