#!/bin/bash

# Remove any existing .gitkeep files
find . -name ".gitkeep" -type f -delete

# Create directories (if they don't exist)
mkdir -p styles scripts pages assets

# Create initial files
echo "/* Main styles for the bibliography site */
body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    color: #333;
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
}
header {
    background-color: #f4f4f4;
    padding: 1rem;
    text-align: center;
}
nav {
    margin-top: 1rem;
}
nav a {
    margin-right: 1rem;
}
" > styles/main.css

echo "// Main JavaScript file for the bibliography site
document.addEventListener('DOMContentLoaded', (event) => {
    console.log('Bibliography site loaded');
});
" > scripts/main.js

echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>My Bibliography</title>
    <link rel=\"stylesheet\" href=\"../styles/main.css\">
</head>
<body>
    <header>
        <h1>My Bibliography</h1>
        <nav>
            <a href=\"index.html\">Home</a>
            <a href=\"books.html\">Books</a>
            <a href=\"articles.html\">Articles</a>
            <a href=\"websites.html\">Websites</a>
        </nav>
    </header>
    <main>
        <h2>Welcome to my Bibliography</h2>
        <p>This site contains a collection of sources I've used in my research.</p>
    </main>
    <script src=\"../scripts/main.js\"></script>
</body>
</html>
" > index.html

echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>Books - My Bibliography</title>
    <link rel=\"stylesheet\" href=\"../styles/main.css\">
</head>
<body>
    <header>
        <h1>Books</h1>
        <nav>
            <a href=\"../index.html\">Home</a>
            <a href=\"books.html\">Books</a>
            <a href=\"articles.html\">Articles</a>
            <a href=\"websites.html\">Websites</a>
        </nav>
    </header>
    <main>
        <h2>Book Sources</h2>
        <ul>
            <li>Author, A. (Year). Title of the book. Publisher.</li>
            <!-- Add more book entries here -->
        </ul>
    </main>
    <script src=\"../scripts/main.js\"></script>
</body>
</html>
" > pages/books.html

# Create similar files for articles.html and websites.html

echo "This is a placeholder file for the assets directory. 
You can store images or other media files here." > assets/placeholder.txt

# Add all new files to git
git add .

# Commit changes
git commit -m "Set up project structure with minimal starter files"

# Push to GitHub
git push origin main

echo "Project structure has been set up with minimal starter files and pushed to GitHub."
