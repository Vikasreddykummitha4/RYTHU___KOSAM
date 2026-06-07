@echo off
REM 🌾 RYTHU KOSAM — Automated Setup Script (Windows)

echo 🌾 RYTHU KOSAM — App Store Setup
echo ==================================
echo.

REM Step 1: Create Vite project
echo 📦 Creating Vite + React project...
call npm create vite@latest rythu-kosam -- --template react
cd rythu-kosam

REM Step 2: Install dependencies
echo 📥 Installing dependencies...
call npm install

REM Step 3: Copy app code
echo 📋 Copying your app code...
copy ..\farmer-marketplace.jsx src\App.jsx

REM Step 4: Install Capacitor
echo ⚙️  Installing Capacitor...
call npm install @capacitor/core @capacitor/cli @capacitor/android @capacitor/ios

REM Step 5: Initialize Capacitor
echo 🔧 Initializing Capacitor...
call npx cap init

REM Step 6: Build React app
echo 🔨 Building React app...
call npm run build

REM Step 7: Add platforms
echo 📱 Adding Android & iOS platforms...
call npx cap add android
call npx cap add ios

REM Step 8: Copy assets
echo 📋 Copying assets...
call npx cap copy

echo.
echo ✅ Setup complete! Next steps:
echo.
echo 📱 For Android (Google Play):
echo    1. npx cap open android
echo    2. Build ^> Generate Signed Bundle/APK
echo    3. Select AAB format
echo    4. Upload to Google Play Console
echo.
echo 🍎 For iOS (App Store):
echo    1. npx cap open ios
echo    2. Configure signing in Xcode
echo    3. Product ^> Archive
echo    4. Submit to App Store Connect
echo.
echo 📚 See DEPLOYMENT_GUIDE.md for detailed instructions
echo.
pause
