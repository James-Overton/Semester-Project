#About this project
This project was inspired by my inability to cope with the trasition from Processing to HTML/CSS/JavaScript. I decided I should find a way to implement Processing into HTML so I wouldn't have to deal with change. I ended up succeeding, at the expense of learning useful things in HTML like finding CSS classes and uploading sites to the web.
How I got Processing to work in HTML was I downloaded a document called Processing.js, then I got the code for a frame for Processing to go into. The Processing.js document allows PDE files to work in HTML. The code for the Processing screen, "<canvas...></canvas>" creates a space where HTML knows there is going to be other code. The canvas has a bunch of variables determining the size, border width and color, and which file it's pulling from.