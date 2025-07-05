# VIB3 App Deployment Guide

## Important: Flutter Apps Cannot Deploy to Railway

Railway is for web applications. Flutter mobile apps need to be built and deployed differently:

### For Android (Google Play Store):

1. **Build APK for Testing:**
   ```bash
   flutter build apk --release
   ```
   The APK will be at: `build/app/outputs/flutter-apk/app-release.apk`

2. **Build App Bundle for Play Store:**
   ```bash
   flutter build appbundle --release
   ```
   The bundle will be at: `build/app/outputs/bundle/release/app-release.aab`

3. **Deploy to Play Store:**
   - Create Google Play Console account
   - Upload the .aab file
   - Fill in app details
   - Submit for review

### For iOS (Apple App Store):

1. **Build iOS App:**
   ```bash
   flutter build ios --release
   ```

2. **Deploy to App Store:**
   - Need Mac with Xcode
   - Create Apple Developer account
   - Use Xcode to archive and upload
   - Submit for review

### For Web Version (if needed):

1. **Build Web Version:**
   ```bash
   flutter build web
   ```

2. **Deploy Web Build:**
   - The web files will be in `build/web/`
   - Can deploy these to any static hosting (Netlify, Vercel, etc.)

## Quick Local Testing:

1. **Run on Connected Android Device:**
   ```bash
   flutter run
   ```

2. **Run on iOS Simulator (Mac only):**
   ```bash
   flutter run
   ```

3. **Run as Web App:**
   ```bash
   flutter run -d chrome
   ```

## Note:
The VIB3 mobile app is a Flutter application meant for mobile devices. It cannot be deployed to Railway which is for web servers. Use the vib3-web repository for the web version that can be deployed to Railway.