@echo off
echo.
echo ========================================
echo   CV PDF Generation Helper
echo ========================================
echo.
echo This script will help you generate a PDF from your CV website.
echo.
echo Step 1: Opening your CV website...
start https://lambent-praline-0de0d7.netlify.app/
echo.
echo Step 2: Follow these instructions when the website opens:
echo   1. Press Ctrl+P (Print)
echo   2. Select "Save as PDF" as destination
echo   3. Set Paper size to A4
echo   4. Set Margins to Minimum
echo   5. ENABLE "Background graphics" (IMPORTANT!)
echo   6. Save as: Kiril_Petrov_CV.pdf
echo.
echo Step 3: Save the PDF in this folder and it will automatically
echo         be used as the download link on your website!
echo.
echo ========================================
echo   Alternative: PDF-Optimized Version
echo ========================================
echo.
choice /C YN /M "Would you like to open the PDF-optimized version instead"
if errorlevel 2 goto end
if errorlevel 1 goto pdf_version

:pdf_version
echo Opening PDF-optimized version...
start pdf-version.html
echo.
echo This version is specially designed for PDF generation.
echo Follow the same print instructions above.
goto end

:end
echo.
echo Done! Your CV website is ready for PDF generation.
echo.
pause
