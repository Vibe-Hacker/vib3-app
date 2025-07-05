# VIB3 Mobile App Deployment Guide

## Prerequisites

1. Flutter SDK installed
2. Android Studio (for Android)
3. Xcode (for iOS - Mac only)
4. Your Digital Ocean backend URL

## Step 1: Update Backend URL

Edit `lib/config/app_config.dart` and replace the first URL with your Digital Ocean app URL:
```dart
static const List<String> backendUrls = [
  'https://vib3-web-YOUR-ID.ondigitalocean.app',  // <-- Your actual DO URL
  ...
];
```

## Step 2: Build Android APK

### Debug APK (for testing):
```bash
cd /mnt/c/Users/VIBE/Desktop/vib3-app
flutter clean
flutter pub get
flutter build apk --debug
```

### Release APK (for distribution):
```bash
flutter build apk --release
```

The APK will be at: `build/app/outputs/flutter-apk/app-release.apk`

## Step 3: Install on Android Device

### Option 1: Direct Install
1. Connect Android device via USB
2. Enable Developer Mode and USB Debugging
3. Run: `flutter install`

### Option 2: Transfer APK
1. Copy APK to device
2. Open file manager on device
3. Tap APK to install

### Option 3: Use ADB
```bash
adb install build/app/outputs/flutter-apk/app-release.apk
```

## Step 4: Build for iOS (Mac only)

```bash
flutter build ios --release
```

Then use Xcode to deploy to device or App Store.

## Step 5: Test the App

1. Open the app
2. Try to sign up/login
3. Upload a video
4. Check if videos play

## Troubleshooting

### App can't connect to backend:
- Check if DO backend URL is correct in app_config.dart
- Ensure backend allows CORS from mobile apps
- Check network permissions in AndroidManifest.xml

### Build fails:
- Run `flutter doctor` to check setup
- Update Flutter: `flutter upgrade`
- Clean and rebuild: `flutter clean && flutter pub get`

## Publishing to Stores

### Google Play Store:
1. Build app bundle: `flutter build appbundle`
2. Create Play Console account ($25 one-time)
3. Upload `.aab` file
4. Fill store listing
5. Submit for review

### Apple App Store:
1. Build with Xcode
2. Create App Store Connect account ($99/year)
3. Upload with Xcode
4. Fill store listing
5. Submit for review

## Quick Test Commands

```bash
# Run on connected device
flutter run

# Run on specific device
flutter run -d device_id

# List devices
flutter devices

# Run in release mode
flutter run --release
```