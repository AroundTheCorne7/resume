const puppeteer = require('puppeteer');
const path = require('path');

async function generatePDF() {
    console.log('🚀 Starting PDF generation...');
    
    const browser = await puppeteer.launch({
        headless: true,
        args: ['--no-sandbox', '--disable-setuid-sandbox']
    });
    
    const page = await browser.newPage();
    
    // Set viewport for consistent rendering
    await page.setViewport({
        width: 1200,
        height: 800,
        deviceScaleFactor: 2
    });
    
    console.log('📄 Loading website...');
    
    // Load the local HTML file
    const htmlPath = path.join(__dirname, 'index.html');
    await page.goto(`file://${htmlPath}`, {
        waitUntil: 'networkidle0',
        timeout: 30000
    });
    
    // Wait for any animations or dynamic content to load
    await page.waitForTimeout(2000);
    
    // Hide elements that shouldn't appear in PDF
    await page.addStyleTag({
        content: `
            .navbar { display: none !important; }
            .hero-buttons { display: none !important; }
            .contact-form { display: none !important; }
            .footer { display: none !important; }
            body { padding-top: 0 !important; }
            .hero { padding-top: 20px !important; }
        `
    });
    
    console.log('📋 Generating PDF...');
    
    // Generate PDF with optimized settings
    await page.pdf({
        path: 'Kiril_Petrov_Senior_Java_Engineer_CV.pdf',
        format: 'A4',
        printBackground: true,
        margin: {
            top: '10mm',
            right: '10mm',
            bottom: '10mm',
            left: '10mm'
        },
        displayHeaderFooter: false,
        preferCSSPageSize: true
    });
    
    await browser.close();
    
    console.log('✅ PDF generated successfully: Kiril_Petrov_Senior_Java_Engineer_CV.pdf');
    console.log('📁 File saved in the current directory');
}

// Run the function
generatePDF().catch(console.error);
