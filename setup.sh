#!/bin/bash

# 🌾 RYTHU KOSAM — Automated Setup Script
# This script sets up your React app for App Store deployment

echo "🌾 RYTHU KOSAM — App Store Setup"
echo "=================================="
echo ""

# Step 1: Create Vite project
echo "📦 Creating Vite + React project..."
npm create vite@latest rythu-kosam -- --template react
cd rythu-kosam

# Step 2: Install dependencies
echo "📥 Installing dependencies..."
npm install

# Step 3: Copy app code
echo "📋 Copying your app code..."
cp ../farmer-marketplace.jsx src/App.jsx

# Step 4: Install Capacitor
echo "⚙️  Installing Capacitor..."
npm install @capacitor/core @capacitor/cli @capacitor/android @capacitor/ios

# Step 5: Initialize Capacitor
echo "🔧 Initializing Capacitor..."
npx cap init <<EOF
RYTHU KOSAM
com.rythukosam.app
.
