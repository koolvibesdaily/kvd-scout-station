#!/bin/bash

# KVD Scout Station - Deployment Script
# This script sets up and deploys the Next.js application to GitHub Pages

set -e

echo "🚀 KVD Scout Station - GitHub Pages Deployment"
echo "==============================================="
echo ""

# Step 1: Install dependencies
echo "📦 Step 1: Installing dependencies..."
npm install
echo "✅ Dependencies installed!"
echo ""

# Step 2: Build the project
echo "🔨 Step 2: Building Next.js project..."
npm run build
echo "✅ Build complete! Static files generated in ./out"
echo ""

# Step 3: Verify build output
if [ -d "out" ]; then
  echo "✅ Output directory created successfully"
  echo "📁 Build artifact ready for deployment"
else
  echo "❌ Build failed - output directory not found"
  exit 1
fi
echo ""

# Step 4: Information about GitHub Pages setup
echo "🌐 GitHub Pages Configuration Required"
echo "====================================="
echo ""
echo "To complete deployment, please follow these steps:"
echo ""
echo "1. Go to: https://github.com/koolvibesdaily/kvd-scout-station/settings/pages"
echo ""
echo "2. Under 'Build and deployment':"
echo "   - Source: Select 'Deploy from a branch'"
echo "   - Branch: Select 'gh-pages' (will be created by Actions)"
echo "   - Folder: Select '/ (root)'"
echo ""
echo "3. Click 'Save'"
echo ""
echo "4. GitHub Actions will automatically:"
echo "   - Build your project"
echo "   - Create the gh-pages branch"
echo "   - Deploy to GitHub Pages"
echo ""
echo "✨ Your live site will be available at:"
echo "   https://koolvibesdaily.github.io/kvd-scout-station/"
echo ""
echo "📊 Monitor deployment progress at:"
echo "   https://github.com/koolvibesdaily/kvd-scout-station/actions"
echo ""
echo "🎉 Deployment setup complete!"
