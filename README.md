# Kiril Petrov - Personal CV Website

A modern, responsive personal CV website built with HTML, CSS, and JavaScript. Features a clean design, smooth animations, and mobile-friendly layout.

## 🌟 Features

- **Responsive Design**: Works perfectly on desktop, tablet, and mobile devices
- **Modern UI/UX**: Clean, professional design with smooth animations
- **Interactive Elements**: Smooth scrolling, hover effects, and form validation
- **PDF Integration**: Direct link to download your PDF resume
- **Contact Form**: Functional contact form with validation
- **SEO Optimized**: Proper meta tags and semantic HTML structure
- **Fast Loading**: Optimized assets and efficient code

## 🚀 Quick Start

### Local Development

1. Clone or download this repository
2. Open `index.html` in your web browser
3. That's it! No build process required.

### Customization

1. **Personal Information**: Edit the content in `index.html` to match your details
2. **Styling**: Modify `styles.css` to change colors, fonts, or layout
3. **Functionality**: Update `script.js` to add or modify interactive features
4. **Resume PDF**: Replace `KirilPetrovResume (4) (1).pdf` with your own PDF resume

## 📁 File Structure

```
├── index.html          # Main HTML file
├── styles.css          # CSS styles
├── script.js           # JavaScript functionality
├── netlify.toml        # Netlify deployment config
├── vercel.json         # Vercel deployment config
├── .github/
│   └── workflows/
│       └── deploy.yml  # GitHub Pages deployment
└── KirilPetrovResume (4) (1).pdf  # Your PDF resume
```

## 🌐 Deployment Options

### 1. Netlify (Recommended)

**Easiest option with automatic deployments:**

1. Push your code to GitHub
2. Go to [Netlify](https://netlify.com)
3. Click "New site from Git"
4. Connect your GitHub repository
5. Deploy settings are automatically configured via `netlify.toml`
6. Your site will be live at `https://your-site-name.netlify.app`

**Features:**
- ✅ Free hosting
- ✅ Automatic deployments on git push
- ✅ Custom domain support
- ✅ Form handling for contact form
- ✅ SSL certificate included

### 2. Vercel

**Great for developers:**

1. Push your code to GitHub
2. Go to [Vercel](https://vercel.com)
3. Import your GitHub repository
4. Deploy settings are configured via `vercel.json`
5. Your site will be live at `https://your-project.vercel.app`

**Features:**
- ✅ Free hosting
- ✅ Automatic deployments
- ✅ Custom domain support
- ✅ Edge network (fast global loading)
- ✅ SSL certificate included

### 3. GitHub Pages

**Free hosting with GitHub:**

1. Push your code to GitHub
2. Go to your repository settings
3. Navigate to "Pages" section
4. Select "GitHub Actions" as source
5. The workflow in `.github/workflows/deploy.yml` will handle deployment
6. Your site will be live at `https://yourusername.github.io/repository-name`

**Features:**
- ✅ Free hosting
- ✅ Automatic deployments via GitHub Actions
- ✅ Custom domain support
- ✅ SSL certificate included

### 4. Traditional Web Hosting

**For shared hosting or VPS:**

1. Upload all files to your web server's public directory
2. Ensure your PDF file is accessible
3. Configure your web server (Apache/Nginx) if needed
4. Your site will be live at your domain

## 🛠️ Customization Guide

### Updating Personal Information

Edit the following sections in `index.html`:

1. **Hero Section**: Update name, title, and description
2. **About Section**: Modify the about text and statistics
3. **Experience Section**: Add your work experience
4. **Skills Section**: Update your technical skills
5. **Education Section**: Add your educational background
6. **Contact Section**: Update contact information and social links

### Changing Colors and Styling

Main color variables in `styles.css`:
- Primary color: `#2563eb` (blue)
- Background gradient: `#667eea` to `#764ba2`
- Text colors: `#333`, `#64748b`, `#1e293b`

### Adding New Sections

1. Add HTML structure in `index.html`
2. Add corresponding styles in `styles.css`
3. Update navigation menu if needed
4. Add smooth scrolling functionality in `script.js`

## 📱 Browser Support

- ✅ Chrome (latest)
- ✅ Firefox (latest)
- ✅ Safari (latest)
- ✅ Edge (latest)
- ✅ Mobile browsers

## 🔧 Technical Details

- **No build process required**: Pure HTML, CSS, and JavaScript
- **No dependencies**: Uses only CDN resources for fonts and icons
- **Lightweight**: Fast loading and minimal resource usage
- **Accessible**: Semantic HTML and keyboard navigation support
- **SEO-friendly**: Proper meta tags and structured content

## 📞 Support

If you need help customizing or deploying your CV website:

1. Check the browser console for any JavaScript errors
2. Validate your HTML and CSS
3. Test on different devices and browsers
4. Refer to the deployment platform documentation

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

**Ready to deploy?** Choose one of the deployment options above and get your professional CV website live in minutes!
