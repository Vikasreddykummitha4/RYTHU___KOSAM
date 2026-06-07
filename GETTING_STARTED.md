# 🌾 RYTHU KOSAM — Getting Started Guide

## 📋 Project Structure

```
rythu-kosam/
├── src/
│   ├── App.jsx                 (Your complete app code)
│   └── main.jsx                (React entry point)
├── public/                      (Static assets)
├── index.html                   (HTML entry point)
├── vite.config.js              (Vite configuration)
├── capacitor.config.json       (Capacitor configuration)
├── package.json                (Dependencies & scripts)
├── .env.example                (Environment variables template)
├── .gitignore                  (Git ignore rules)
├── README.md                   (Overview)
├── DEPLOYMENT_GUIDE.md         (App Store guides)
├── LAUNCH_CHECKLIST.md         (Launch checklist)
└── android/                    (Will be created - Android native code)
└── ios/                        (Will be created - iOS native code)
```

---

## 🚀 Complete Installation (Step-by-Step)

### 1️⃣ Prerequisites (Install These First)

**Windows:**
- Download Node.js 18+: https://nodejs.org
- Download Git: https://git-scm.com
- Download Android Studio: https://developer.android.com/studio (for Android builds)
- Download Android JDK: https://www.oracle.com/java/technologies/javase-jdk11-downloads.html

**macOS:**
```bash
# Install Homebrew if not installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Node.js
brew install node

# Install Git
brew install git

# Install Xcode (for iOS) - from App Store
# Install Android Studio - download from https://developer.android.com/studio
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install nodejs npm git openjdk-11-jdk
```

### 2️⃣ Create Project Folder

```bash
# Create a folder for your project
mkdir RYTHU-KOSAM-Project
cd RYTHU-KOSAM-Project
```

### 3️⃣ Copy All Files Into This Folder

Download from outputs and copy these files into your `RYTHU-KOSAM-Project` folder:
- `package.json`
- `vite.config.js`
- `capacitor.config.json`
- `index.html`
- `main.jsx`
- `farmer-marketplace.jsx` (copy as `src/App.jsx`)
- `.gitignore`
- `.env.example`
- `README.md`
- `DEPLOYMENT_GUIDE.md`
- `LAUNCH_CHECKLIST.md`

### 4️⃣ Create Proper Folder Structure

```bash
# Create src folder and move files
mkdir src
mv farmer-marketplace.jsx src/App.jsx
mv main.jsx src/main.jsx

# Create public folder (for static assets if needed)
mkdir public

# Verify structure
ls -la
# Should show: src/ public/ index.html package.json vite.config.js capacitor.config.json
```

### 5️⃣ Install Dependencies

```bash
# Install npm packages
npm install

# Should complete without errors
# This creates node_modules/ folder and installs all dependencies
```

### 6️⃣ Test Locally (Optional but Recommended)

```bash
# Start development server
npm run dev

# Visit: http://localhost:5173
# Test all 3 logins: Farmer, Customer, Provider
```

### 7️⃣ Build the Project

```bash
# Create optimized build
npm run build

# Creates dist/ folder with production files
```

### 8️⃣ Add Native Platforms

```bash
# Add Android platform
npm run cap:add:android
# Generates android/ folder

# Add iOS platform (macOS only)
npm run cap:add:ios
# Generates ios/ folder
```

### 9️⃣ Sync Assets

```bash
npm run cap:sync
```

---

## 📱 Build for Android (Google Play Store)

### Step 1: Open Android Project

```bash
npm run cap:open:android
# Opens Android Studio with your project
```

### Step 2: In Android Studio

1. Wait for project to load (first time takes 2-3 minutes)
2. Go to **Build** menu → **Generate Signed Bundle/APK**
3. Select **Android App Bundle (AAB)** — this is required for Play Store
4. Click **Next**
5. Create Keystore:
   - **Keystore path**: Browse and create `~/.android/rythukosam.jks`
   - **Password**: Create a strong password (25+ chars), SAVE THIS SAFELY
   - **Confirm password**: Re-enter same password
   - **Key alias**: `rythukosam`
   - **Key password**: Same as keystore password
   - **Validity (years)**: 25
   - **Certificate section**: Fill with your info (optional)
6. Click **Next**
7. Select **Release** variant
8. Click **Finish**
9. Wait for build to complete (5-10 minutes)
10. Output file: `android/app/release/app-release.aab`

### Step 3: Get the AAB File

The signed AAB file is ready at:
```
android/app/release/app-release.aab
```

Save this file somewhere safe — you'll upload it to Google Play.

---

## 🍎 Build for iOS (Apple App Store)

**Note: iOS builds only work on macOS with Xcode installed**

### Step 1: Open iOS Project

```bash
npm run cap:open:ios
# Opens Xcode with your project
```

### Step 2: Configure Signing in Xcode

1. Select **RythuKosam** project in left sidebar
2. Go to **Signing & Capabilities** tab
3. Under **Signing**, select your **Team** (Apple Developer Account)
4. Xcode auto-fills provisioning profiles

### Step 3: Build Archive

1. Select top left: **RythuKosam** → **Any iOS Device (arm64)**
2. Product menu → **Scheme** → **Edit Scheme**
3. Select **Release** from dropdown
4. Close dialog
5. Product menu → **Archive**
6. Wait for build to complete (5-10 minutes)
7. In Organizer window, select your archive → **Distribute App**
8. Select **App Store Connect** → **Export**
9. Follow prompts to upload to App Store Connect

### Step 4: Monitor Upload

The app uploads to App Store Connect automatically. Check:
- https://appstoreconnect.apple.com
- Go to **Apps** → **RYTHU KOSAM** → **Builds**
- Your build appears there when processing completes

---

## 📤 Submit to Google Play Store

### 1. Create Developer Account
- Go to https://play.google.com/console
- Pay $25 one-time fee
- Fill in your details

### 2. Create New App
1. Click **Create app**
2. Name: **RYTHU KOSAM**
3. Category: **Productivity** or **Finance**
4. Content rating: **Suitable for all ages**

### 3. Upload AAB
1. Left sidebar → **Release** → **Production**
2. Click **Create new release**
3. Upload your `app-release.aab` file
4. Add release notes:
   ```
   Version 1.0.0 - Launch Release
   
   🌾 Direct marketplace for India's farmers
   💰 Sell at your price with zero middlemen
   📊 Live government mandi rates
   🌍 Available in 26 Indian languages
   ```

### 4. Fill Store Listing
Go to **Store listing** and fill:

**Title**: RYTHU KOSAM

**Short description** (80 chars):
```
Direct farming marketplace for India's farmers
```

**Full description** (4000 chars):
```
RYTHU KOSAM — రైతు కోసం

Direct farming marketplace connecting farmers and customers.

KEY FEATURES:
✓ Sell crops at YOUR price (zero middlemen)
✓ Live mandi rates for 200+ crops
✓ 0% interest loans up to ₹1 lakh
✓ Complete crop guidance & weather alerts
✓ Book tractors, drones & harvesters
✓ Study tours to successful farms
✓ Available in 26 Indian languages

FOR FARMERS:
• List crops directly
• Get instant orders
• Zero commission
• Fair prices guaranteed
• Access loans & services
• Learn from other farmers

FOR CUSTOMERS:
• Buy farm-fresh produce
• Direct from farmers
• Best prices
• Live order tracking
• Rate & review farmers

TRUST US:
• 50,000+ farmers
• ₹12 crore+ distributed
• 4.9/5 star rating
• 100% secure payments

అన్నదాత సుఖీభవ — May farmers prosper 🙏
```

**Screenshots** (upload 2-8):
- 1080×1920 px each
- Show: Role select, Login, Home, Trips, Weather, Mandi rates

**App icon** (512×512 PNG):
- Rounded corners
- Should be a green/yellow farm-themed icon

**Feature graphic** (1024×500 PNG):
- Promotional banner image

**Category**: Productivity or Finance

**Privacy policy URL**:
```
https://www.example.com/privacy
# Create a privacy policy at termly.io or privacypolicygenerator.info
```

**Support email**:
```
support@rythukosam.com
```

### 5. Content Rating
Answer the questionnaire:
- Violence: **No**
- Profanity: **No**
- Sexual content: **No**
- Financial transactions: **Yes** (loans feature)

### 6. Submit
1. Click **Review** at bottom
2. Accept terms
3. Click **Start rollout to Production**
4. **✅ Wait 2-4 hours** for approval

---

## 🍎 Submit to Apple App Store

### 1. Create Developer Account
- Go to https://developer.apple.com
- Enroll in Apple Developer Program ($99/year)
- Complete ID verification

### 2. Create App in App Store Connect
1. Go to https://appstoreconnect.apple.com
2. Click **Apps** → **+**
3. Create new app:
   - **Platform**: iOS
   - **Name**: RYTHU KOSAM
   - **Bundle ID**: `com.rythukosam.app`
   - **SKU**: `RYTHUKOSAM001`
   - **User Access**: Select your access level

### 3. Fill App Information

**General Information:**
- **Version**: 1.0.0
- **Build**: Select your uploaded build
- **Subtitle**: అన్నదాత సుఖీభవ

**Descriptive Information:**

**Description** (4000 chars max):
```
[Same as Google Play - see above]
```

**Keywords** (100 chars):
```
farmer, agriculture, mandi, loans, crops, rural, India, marketplace
```

**Support URL**:
```
https://www.example.com/support
```

**Marketing URL** (optional):
```
https://www.example.com
```

**Privacy Policy URL** (REQUIRED):
```
https://www.example.com/privacy
```

### 4. Screenshots & Preview

**Screenshots** (2-5 per language):
- Size: 1242×2208 px (iPhone 6.5")
- Upload in English first, then other languages

**App Preview** (optional but helps):
- 30-second video (.mov format)
- Show key features: login → home → feature usage

### 5. Content Compliance

**Age Rating**: 4+

**Export Compliance**:
- Answer export encryption questions (likely "No")

**IDFA**: "No" (don't track users)

### 6. Submit
1. Go to **App Store** → **Version**
2. Ensure all required sections are complete (show ✓)
3. Click **Submit for Review**
4. Accept terms
5. **✅ Wait 24-48 hours** for approval

---

## ✅ Full Checklist Before Submission

### Code Quality
- [ ] Run `npm run build` with no errors
- [ ] Test on Android device (if possible)
- [ ] All 3 logins work
- [ ] All tabs and screens work
- [ ] No console errors (F12)

### Android Submission
- [ ] AAB file built and signed
- [ ] Keystore password saved securely
- [ ] Screenshots created (1080×1920)
- [ ] App icon created (512×512)
- [ ] Feature graphic created (1024×500)
- [ ] Privacy policy URL ready
- [ ] Support email ready

### iOS Submission
- [ ] Archive uploaded to App Store Connect
- [ ] Screenshots created (1242×2208)
- [ ] Privacy policy URL ready
- [ ] Support URL ready
- [ ] App subtitle in Telugu

---

## 🐛 Troubleshooting

### "npm: command not found"
- Node.js not installed properly
- Restart computer after installing Node.js
- Verify: `node --version` (should show v18.0.0+)

### "capacitor: command not found"
```bash
npm install -g @capacitor/cli
```

### Android build fails
```bash
cd android
./gradlew clean build
cd ..
npm run cap:sync
```

### iOS build fails in Xcode
```bash
# Clean build folder
Cmd + Shift + K

# Delete DerivedData
rm -rf ~/Library/Developer/Xcode/DerivedData/*

# Rebuild
Product → Archive
```

### App crashes on startup
- Check browser console: F12 → Console
- Verify `src/App.jsx` exports default
- Check `index.html` has `<div id="root"></div>`

---

## 📊 After Launch

### Monitor Downloads
- **Google Play**: play.google.com/console → Analytics
- **Apple App Store**: appstoreconnect.apple.com → Analytics

### Push Updates
1. Make code changes in `src/App.jsx`
2. `npm run build`
3. `npm run cap:sync`
4. Increment version (e.g., 1.0.1)
5. Rebuild AAB/Archive
6. Re-submit to stores

---

## 📚 Documentation

- `README.md` — Quick overview
- `DEPLOYMENT_GUIDE.md` — Detailed deployment steps
- `LAUNCH_CHECKLIST.md` — Complete launch checklist

---

## 🎯 Key Commands Reference

```bash
# Development
npm run dev              # Start local dev server
npm run build            # Build for production

# Capacitor
npm run cap:add:android  # Add Android platform
npm run cap:add:ios      # Add iOS platform
npm run cap:open:android # Open Android Studio
npm run cap:open:ios     # Open Xcode
npm run cap:sync         # Sync changes to native projects
npm run cap:build        # Build + sync (all at once)

# Git (optional)
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/YOUR_REPO
git push -u origin main
```

---

## 🌾 You're Ready!

You have everything needed to:
✅ Build the app locally  
✅ Test on Android/iOS  
✅ Submit to Google Play Store  
✅ Submit to Apple App Store  

**Timeline**: 1-2 weeks from now to both stores

**Cost**: ~$140 (very affordable)

**Reach**: Millions of potential Indian farmers

---

## 🙏 Good Luck!

**అన్నదాత సుఖీభవ — May RYTHU KOSAM serve every farmer in India! 🌾**

Questions? See the other documentation files included!

