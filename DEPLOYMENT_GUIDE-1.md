# 🚀 RYTHU KOSAM — App Store Deployment Guide

Deploy your React app to **Google Play Store** & **Apple App Store** using **Capacitor**.

---

## 📋 Prerequisites

### For Both Platforms:
- **Node.js 18+** — [nodejs.org](https://nodejs.org)
- **Git** — [git-scm.com](https://git-scm.com)

### For Android (Google Play):
- **Android Studio** — [developer.android.com](https://developer.android.com/studio)
- **Java JDK 11+**
- **Android SDK** (installed via Android Studio)

### For iOS (App Store):
- **macOS** (only way to build iOS apps)
- **Xcode 13+** — [App Store](https://apps.apple.com/us/app/xcode/id497799835)
- **Apple Developer Account** — $99/year (required for App Store)

---

## 🔧 Step 1: Project Setup

### 1.1 Create a new Vite + React project
```bash
npm create vite@latest rythu-kosam -- --template react
cd rythu-kosam
npm install
```

### 1.2 Copy your app code
```bash
# Copy the farmer-marketplace.jsx into src/App.jsx
cp farmer-marketplace.jsx src/App.jsx
```

### 1.3 Update `src/App.jsx` imports
Add at the very top:
```javascript
import { useState, useEffect } from 'react';
```

### 1.4 Install Capacitor
```bash
npm install @capacitor/core @capacitor/cli @capacitor/android @capacitor/ios
npx cap init
```

When prompted:
```
App name: RYTHU KOSAM
App Package ID: com.rythukosam.app
Directory: .
```

### 1.5 Build your React app
```bash
npm run build
```

---

## 📱 Step 2: Android (Google Play Store)

### 2.1 Add Android platform
```bash
npx cap add android
```

### 2.2 Copy built files to Android
```bash
npx cap copy android
```

### 2.3 Open in Android Studio
```bash
npx cap open android
```

### 2.4 Build APK/AAB in Android Studio
1. Go to **Build → Generate Signed Bundle/APK**
2. Select **Android App Bundle (AAB)** (required for Play Store)
3. Create a keystore:
   - **Key store path**: `~/.android/rythukosam.jks`
   - **Password**: (create a secure one)
   - **Alias**: rythukosam
   - **Validity**: 25+ years
4. Build with **Release** variant

### 2.5 Output location
- **Android App Bundle (AAB)**: `android/app/release/app-release.aab`
- **APK for testing**: `android/app/release/app-release.apk`

---

## 🍎 Step 3: iOS (App Store)

### 3.1 Add iOS platform (macOS only)
```bash
npx cap add ios
```

### 3.2 Copy built files
```bash
npx cap copy ios
```

### 3.3 Open in Xcode
```bash
npx cap open ios
```

### 3.4 Configure signing in Xcode
1. Select **RythuKosam** project
2. Go to **Signing & Capabilities**
3. Select your **Team** (Apple Developer Account)
4. Xcode auto-fills provisioning profiles

### 3.5 Build for App Store
1. **Product → Scheme → Edit Scheme**
2. Select **Release** from dropdown
3. **Product → Archive**
4. In Organizer window → **Distribute App** → **App Store Connect**
5. Xcode will upload to **App Store Connect**

### 3.6 Output location
- **IPA**: `~/Library/Developer/Xcode/Archives/`

---

## 📤 Step 4: Google Play Store Submission

### 4.1 Create Developer Account
- Go to [play.google.com/console](https://play.google.com/console)
- Pay **$25** one-time registration fee
- Verify your Google account

### 4.2 Create New App
1. **Create app** → Enter name: "RYTHU KOSAM"
2. Choose **Category**: Productivity or Finance
3. Content rating: Mark as suitable for all ages

### 4.3 Upload AAB
1. Go to **Release → Production**
2. **Create new release**
3. Upload your `app-release.aab`
4. Fill in release notes

### 4.4 App Store Listing (CRITICAL)
Fill out **ALL** sections:

#### Screenshots (Required)
- Min 2, Max 8 per language
- Size: 1080×1920 px (or 1440×2560)
- Show key screens: Role Select, Farmer Home, Trips, Orders

**Sample screenshots to create:**
1. Role Select screen with real farm photo
2. Farmer Home dashboard
3. Trips & Tours screen
4. Live Weather
5. Mandi Rates
6. Farmer Profile

#### App Description (500 chars max)
```
RYTHU KOSAM — మీ రైతు కోసం 🌾

Direct farming marketplace for India's farmers.
✓ Sell crops at YOUR price (zero middlemen)
✓ Live mandi rates across all states
✓ 0% interest loans up to ₹1 lakh
✓ Crop guidance & weather alerts
✓ Book tractors, drones & harvesters

Available in 26 Indian languages.
Trusted by 50,000+ farmers across India.

అన్నదాత సుఖీభవ — May farmers prosper 🙏
```

#### Privacy Policy
- Create at [termly.io](https://termly.io) or [privacypolicygenerator.info](https://www.privacypolicygenerator.info)
- Host on a website

#### Icon & Banner
- **App icon**: 512×512 PNG (rounded corners)
- **Feature graphic**: 1024×500 PNG

### 4.5 Content Rating Questionnaire
- Answer honestly about app content
- Mark "No" for: violence, profanity, sexual content
- Mark "Yes" for: financial transactions (loans)

### 4.6 Submit for Review
- Click **Review** at bottom
- Accept agreement
- Click **Start rollout to Production**

**Review time**: 2-4 hours typically (Google is fast)

---

## 🍎 Step 5: Apple App Store Submission

### 5.1 Create App ID
1. Go to [appstoreconnect.apple.com](https://appstoreconnect.apple.com)
2. **Apps** → **+** (New App)
3. Platform: **iOS**
4. Name: RYTHU KOSAM
5. Bundle ID: `com.rythukosam.app`
6. SKU: `RYTHUKOSAM001`

### 5.2 Fill App Information

#### Version Info
- **Version number**: 1.0.0
- **Build number**: 1
- **Subtitle**: అన్నదాత సుఖీభవ

#### Description (170 chars max)
```
Direct farming marketplace. Sell crops at your price, 
get loans, live mandi rates & crop guidance. 26 languages.
```

#### Keywords
```
farmer, agriculture, mandi rates, loans, crops, rural, India
```

#### Support URL (REQUIRED)
```
https://www.rythukosam.com/support
```

#### Privacy Policy URL (REQUIRED)
```
https://www.rythukosam.com/privacy
```

### 5.3 Pricing & Availability
- **Free** app
- Available in **All territories** (or choose specific countries)

### 5.4 App Preview & Screenshots (REQUIRED)

**For each language** (start with English):
- **App Preview**: 30-second video walkthrough
  - Show role select → login → home → key feature
  - Upload as `.mov` (max 500 MB)
- **Screenshots**: 2-5 screenshots
  - Size: 1242×2208 px (iPhone 6.5")
  - Add text overlays with key features

**Must-have screenshots:**
1. Role Select with farm photo
2. Farmer login screen
3. Home dashboard
4. Trips/Tours screen
5. Live weather or mandi rates

### 5.5 Build Information
- When Xcode finishes archiving, it shows in **App Store Connect**
- Check under **App Store → Build** tab
- Select your build for **Production**

### 5.6 Content Compliance
- **Age Rating**: 4+ (no mature content)
- **Export Compliance**: Answer export encryption questions (probably "No" for this app)
- **IDFA**: Answer ad tracking (probably "No")

### 5.7 Submit for Review
1. Go to **Version Release**
2. Fill all required fields (all sections must show green ✓)
3. Click **Submit for Review**
4. Agree to terms

**Review time**: 24-48 hours (Apple reviews apps more carefully)

---

## ✅ Pre-Submission Checklist

### Code Quality
- [ ] No console errors or warnings
- [ ] App works on phones with 1GB+ RAM
- [ ] All screens responsive on 4.5" to 6.7" screens
- [ ] Splash screen works
- [ ] All 3 login flows (Farmer/Customer/Provider) work
- [ ] No hardcoded test data

### Content
- [ ] App name: RYTHU KOSAM
- [ ] Logo/icon: 512×512 PNG
- [ ] Screenshots: at least 2 per platform
- [ ] Privacy policy: live on website
- [ ] Support email: working
- [ ] Tagline: "అన్నదాత సుఖీభవ — May farmers prosper"

### Metadata
- [ ] Description under 500 chars
- [ ] Keywords relevant
- [ ] Bundle ID: `com.rythukosam.app`
- [ ] Version: 1.0.0
- [ ] Build number: 1

### Permissions (Android)
- [ ] Internet permission
- [ ] Camera (if using photo upload)
- [ ] Location (if using GPS for farms)
- [ ] Storage (if saving offline data)

---

## 🐛 Troubleshooting

### "Module not found" error
```bash
npm install
npm run build
npx cap sync
```

### Android build fails
```bash
cd android
./gradlew clean build
cd ..
```

### iOS build fails in Xcode
1. **Product → Clean Build Folder** (Cmd+Shift+K)
2. Delete **DerivedData**: `rm -rf ~/Library/Developer/Xcode/DerivedData/*`
3. Rebuild

### App crashes on startup
- Check browser console: **F12 → Console**
- Make sure `src/App.jsx` exports default component
- Verify all imports at top of file

---

## 📊 After Launch

### Monitor Performance
- **Google Play**: [play.google.com/console](https://play.google.com/console) → Analytics
- **Apple App Store**: [appstoreconnect.apple.com](https://appstoreconnect.apple.com) → Analytics

### Update App
1. Make code changes
2. `npm run build`
3. `npx cap sync`
4. Increment version (e.g. 1.0.1)
5. Rebuild APK/AAB or Archive
6. Upload to stores (same process)

### Localization (26 Languages)
- Add language metadata for each Indian language
- Translate store listings on Play Store & App Store
- Screenshots with language overlays

---

## 💰 Costs

| Item | Cost | Notes |
|------|------|-------|
| Google Play Developer | $25 | One-time |
| Apple Developer | $99 | Per year |
| Domain (rythukosam.com) | $12–15 | Per year |
| **TOTAL (Year 1)** | **~$136** | Very affordable |

---

## 🎯 Quick Commands Reference

```bash
# Initial setup
npm create vite@latest rythu-kosam -- --template react
cd rythu-kosam
npm install
npx cap init

# Development
npm run dev

# Build
npm run build

# Android
npx cap add android
npx cap copy android
npx cap open android

# iOS
npx cap add ios
npx cap copy ios
npx cap open ios

# Sync after code changes
npx cap sync
```

---

## 📞 Need Help?

- **Capacitor Docs**: [capacitorjs.com/docs](https://capacitorjs.com/docs)
- **Google Play Help**: [support.google.com/googleplay](https://support.google.com/googleplay)
- **Apple App Review**: [developer.apple.com/app-store/review](https://developer.apple.com/app-store/review)

---

## 🌾 Good Luck! 

**अन्नदाता सुखीभव** — May RYTHU KOSAM serve every farmer in India! 🙏🌾

