# 🌾 RYTHU KOSAM — For The Farmer

**Direct farming marketplace for India's 140 million farmers**

✓ Sell crops at YOUR price (zero middlemen)  
✓ Live mandi rates across all states  
✓ 0% interest loans up to ₹1 lakh  
✓ Complete crop guidance & weather alerts  
✓ Book tractors, drones & harvesters  
✓ Available in 26 Indian languages  

**అన్నదాత సుఖీభవ** — May farmers prosper 🙏

---

## 📱 App Platforms

- **Web**: React + Vite
- **Android**: Google Play Store (Capacitor)
- **iOS**: Apple App Store (Capacitor)
- **Keypad Phones**: Support added for basic feature access (SMS alerts, voice IVR)

---

## 📦 Files in This Package

### Core App
- **`farmer-marketplace.jsx`** — Complete React app (233KB)
  - 3 role systems: Farmer, Customer, Service Provider
  - Full authentication with OTP
  - Farmer trips, weather, loans, crop guidance
  - Customer orders, shop, reviews
  - Provider dashboard with earnings & bookings

### Deployment
- **`DEPLOYMENT_GUIDE.md`** — Complete 50+ page guide
  - Step-by-step Android deployment (Google Play)
  - Step-by-step iOS deployment (Apple App Store)
  - Content submission checklist
  - Screenshots, metadata, pricing
  - Troubleshooting & common errors

### Setup Scripts
- **`setup.sh`** — Automated setup (macOS/Linux)
- **`setup.bat`** — Automated setup (Windows)
- **`package.json`** — npm dependencies template

---

## 🚀 Quick Start (5 minutes)

### Option 1: Automated Setup (Recommended)

**On macOS/Linux:**
```bash
chmod +x setup.sh
./setup.sh
```

**On Windows:**
```cmd
setup.bat
```

This will:
1. Create Vite + React project
2. Install all dependencies
3. Copy your app code
4. Install Capacitor
5. Add Android & iOS platforms
6. Build the app

### Option 2: Manual Setup

```bash
# Create project
npm create vite@latest rythu-kosam -- --template react
cd rythu-kosam
npm install

# Copy app
cp farmer-marketplace.jsx src/App.jsx

# Install Capacitor
npm install @capacitor/core @capacitor/cli @capacitor/android @capacitor/ios
npx cap init

# Build
npm run build

# Add platforms
npx cap add android
npx cap add ios
```

---

## 📱 Deploy to Google Play Store (Android)

### 1. **Build APK/AAB**
```bash
npx cap open android
# In Android Studio: Build → Generate Signed Bundle/APK → AAB format
```

### 2. **Create Play Store Account**
- Go to [play.google.com/console](https://play.google.com/console)
- Pay $25 one-time fee
- Create new app: "RYTHU KOSAM"

### 3. **Upload & Fill Metadata**
- Upload your AAB file
- Add 2+ screenshots (1080×1920 px)
- Write description (500 chars max)
- Add privacy policy URL
- Set price: FREE

### 4. **Submit for Review**
- Click "Review" at bottom
- Accept terms
- Click "Start rollout to Production"
- ✅ **Review time: 2-4 hours**

---

## 🍎 Deploy to Apple App Store (iOS)

### 1. **Build Archive**
```bash
npx cap open ios
# In Xcode: Product → Archive
```

### 2. **Create App Store Account**
- Go to [appstoreconnect.apple.com](https://appstoreconnect.apple.com)
- Pay $99/year
- Create new app: "RYTHU KOSAM"
- Bundle ID: `com.rythukosam.app`

### 3. **Upload & Fill Metadata**
- Select your archive in App Store Connect
- Add 2+ screenshots (1242×2208 px)
- Write description (170 chars max)
- Add privacy policy & support URLs
- Set price: FREE

### 4. **Submit for Review**
- Fill all required sections (must show all ✓)
- Click "Submit for Review"
- ✅ **Review time: 24-48 hours**

---

## 💰 Costs (Year 1)

| Item | Cost | Notes |
|------|------|-------|
| Google Play Dev Account | $25 | One-time |
| Apple Developer Account | $99 | Annual renewal |
| Domain (optional) | $15 | Annual renewal |
| **TOTAL** | **$139** | Very affordable |

---

## 🎯 Features by Role

### 👨‍🌾 Farmer (Green)
- **Home Dashboard** — Sales stats, wallet, quick actions
- **Sell Crops** — 3-step listing wizard
- **Live Services** — Book tractors, drones, harvesters, labour
- **Weather** — 5-day forecast, farming advisories
- **Loans** — Interest-free up to ₹1 lakh with slider calculator
- **Crop Guidance** — Sowing, irrigation, pest control, harvesting
- **Mandi Rates** — Live government price data for 200+ crops
- **Trips & Tours** — Study tours to successful farms + international delegations
- **Messages** — Chat with customers, providers, support

### 🛒 Customer (Orange)
- **Browse Marketplace** — Filter by crop, rating, price
- **Direct Purchase** — Buy directly from farmers
- **My Orders** — Track status with delivery timeline
- **Rate Farmers** — Reviews & ratings system
- **Messages** — Contact farmers directly

### 🚜 Service Provider (Blue)
- **Dashboard** — Today's bookings, pending requests, earnings
- **Bookings Management** — Accept/decline jobs, contact farmers
- **My Services** — List & manage equipment/labour
- **Earnings** — Track payments, withdraw to bank
- **Profile & Documents** — KYC, bank account, ratings

---

## 🌍 26 Indian Language Support

The app supports all major Indian languages:

**North India:** हिंदी, ਪੰਜਾਬੀ, اردو

**East India:** বাংলা, অসমীয়া, ওড়িয়া

**South India:** తెలుగు, కన్నడ, தமிழ், മലയാളം

**West India:** मराठी, गुजराती

**Others:** Santali, Maithili, Nepali, Kashmiri, Sindhi, Sanskrit, etc.

---

## 📸 Real Farm Photo

The app includes your uploaded farm photo embedded as base64:
- Farmer with two bulls (brown + white)
- Plowing dark soil
- Tall green crops in background
- Bright hazy sky
- Used in splash, role select, and login screens

No internet needed — photo loads instantly on any device.

---

## 🔐 App Store Screenshots Needed

You'll need these 6 screenshots (1080×1920 px for Android):

1. **Role Select Screen** — Farm photo with "Who are you?" roles
2. **Farmer Login** — OTP flow with farm background
3. **Farmer Home** — Dashboard with sales stats
4. **Trips & Tours** — Study tour listing cards
5. **Live Weather** — 5-day forecast
6. **Live Mandi Rates** — Crop prices across states

**Pro tip:** Use [figma.com](https://figma.com) or [canva.com](https://canva.com) to add text overlays & make them look professional.

---

## ✅ Pre-Submission Checklist

- [ ] App runs on low-end phones (1GB RAM)
- [ ] All 3 login flows work (Farmer/Customer/Provider)
- [ ] Screenshots created (minimum 2 per platform)
- [ ] Privacy policy written & hosted
- [ ] Support email set up & working
- [ ] App icon created (512×512 PNG)
- [ ] Version set to 1.0.0
- [ ] Bundle ID: com.rythukosam.app
- [ ] Android AAB built & tested
- [ ] iOS Archive built & tested

---

## 🐛 Troubleshooting

**"Module not found" error**
```bash
npm install
npm run build
npx cap sync
```

**Android build fails**
```bash
cd android
./gradlew clean build
cd ..
npx cap sync android
```

**iOS build fails in Xcode**
1. Product → Clean Build Folder (Cmd+Shift+K)
2. Delete DerivedData: `rm -rf ~/Library/Developer/Xcode/DerivedData/*`
3. Rebuild

**App crashes on startup**
- Check browser console: F12 → Console
- Verify imports in `src/App.jsx`
- Make sure `export default function App()` exists

---

## 📊 After Launch

### Monitor Downloads & Ratings
- **Google Play**: [play.google.com/console](https://play.google.com/console) → Analytics
- **Apple App Store**: [appstoreconnect.apple.com](https://appstoreconnect.apple.com) → Analytics

### Update App (e.g., 1.0.1)
1. Make code changes
2. `npm run build`
3. `npx cap sync`
4. Increment version in Android/iOS project settings
5. Rebuild AAB/Archive
6. Re-submit to stores

### Add More Languages
- Translate app strings (messages, buttons, labels)
- Add language toggle in settings
- Translate store listings for each language
- Create localized screenshots

---

## 📞 Support Resources

- **Capacitor Docs**: [capacitorjs.com/docs](https://capacitorjs.com/docs)
- **Google Play Help**: [support.google.com/googleplay](https://support.google.com/googleplay)
- **Apple Review Guidelines**: [developer.apple.com/app-store/review](https://developer.apple.com/app-store/review)
- **Vite Docs**: [vitejs.dev](https://vitejs.dev)

---

## 🌾 About This App

**RYTHU KOSAM** (రైతు కోసం — "For the Farmer") is built with ❤️ for India's farmers.

Every feature is designed to:
- 💰 Increase farmer income (zero middlemen)
- 📊 Empower with knowledge (live rates, guidance)
- 🔒 Protect their interests (secure payments)
- 🌐 Serve all states & languages
- 📱 Work on any phone (smart or keypad)

**Mission:** Make farming profitable, dignified, and sustainable for every Indian farmer.

**Vision:** A future where farmers earn what they deserve, directly from the market.

---

## 📄 License

This app is free to use, deploy, and modify for serving Indian farmers.

---

**🙏 అన్నదాత సుఖీభవ — May every farmer prosper! 🌾**

Good luck launching RYTHU KOSAM to millions of farmers across India!

Questions? See `DEPLOYMENT_GUIDE.md` for detailed step-by-step instructions.

