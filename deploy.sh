#!/bin/bash

# CV Website Deployment Script
# This script helps you deploy your CV website to various platforms

echo "🚀 CV Website Deployment Helper"
echo "================================"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "⚠️  Git repository not found. Initializing..."
    git init
    git add .
    git commit -m "Initial commit: CV website"
    echo "✅ Git repository initialized"
    echo ""
fi

echo "Choose your deployment platform:"
echo "1) Netlify (Recommended)"
echo "2) Vercel"
echo "3) GitHub Pages"
echo "4) All platforms"
echo "5) Local development server"
echo ""

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo "🌐 Deploying to Netlify..."
        echo ""
        echo "Steps to deploy to Netlify:"
        echo "1. Push your code to GitHub:"
        echo "   git remote add origin https://github.com/yourusername/cv.git"
        echo "   git push -u origin main"
        echo ""
        echo "2. Go to https://netlify.com"
        echo "3. Click 'New site from Git'"
        echo "4. Connect your GitHub repository"
        echo "5. Netlify will automatically detect the settings from netlify.toml"
        echo "6. Click 'Deploy site'"
        echo ""
        echo "Your site will be live at: https://your-site-name.netlify.app"
        ;;
    2)
        echo "⚡ Deploying to Vercel..."
        echo ""
        echo "Steps to deploy to Vercel:"
        echo "1. Push your code to GitHub:"
        echo "   git remote add origin https://github.com/yourusername/cv.git"
        echo "   git push -u origin main"
        echo ""
        echo "2. Go to https://vercel.com"
        echo "3. Click 'Import Project'"
        echo "4. Import your GitHub repository"
        echo "5. Vercel will automatically detect the settings from vercel.json"
        echo "6. Click 'Deploy'"
        echo ""
        echo "Your site will be live at: https://your-project.vercel.app"
        ;;
    3)
        echo "📄 Deploying to GitHub Pages..."
        echo ""
        echo "Steps to deploy to GitHub Pages:"
        echo "1. Push your code to GitHub:"
        echo "   git remote add origin https://github.com/yourusername/cv.git"
        echo "   git push -u origin main"
        echo ""
        echo "2. Go to your repository settings on GitHub"
        echo "3. Navigate to 'Pages' section"
        echo "4. Select 'GitHub Actions' as source"
        echo "5. The workflow will automatically deploy your site"
        echo ""
        echo "Your site will be live at: https://yourusername.github.io/cv"
        ;;
    4)
        echo "🌍 Setting up for all platforms..."
        echo ""
        echo "1. First, push your code to GitHub:"
        echo "   git remote add origin https://github.com/yourusername/cv.git"
        echo "   git push -u origin main"
        echo ""
        echo "2. Then follow the individual platform instructions above"
        echo "3. You can deploy to multiple platforms simultaneously!"
        ;;
    5)
        echo "💻 Starting local development server..."
        echo ""
        if command -v python3 &> /dev/null; then
            echo "Starting Python server on http://localhost:8000"
            python3 -m http.server 8000
        elif command -v python &> /dev/null; then
            echo "Starting Python server on http://localhost:8000"
            python -m http.server 8000
        elif command -v node &> /dev/null; then
            echo "Installing and starting live-server..."
            npx live-server .
        else
            echo "❌ No suitable server found. Please install Python or Node.js"
            echo "Or simply open index.html in your browser"
        fi
        ;;
    *)
        echo "❌ Invalid choice. Please run the script again."
        ;;
esac

echo ""
echo "📝 Don't forget to:"
echo "- Update your personal information in index.html"
echo "- Replace the PDF file with your actual resume"
echo "- Customize colors and styling in styles.css"
echo "- Test your website on different devices"
echo ""
echo "🎉 Happy deploying!"
