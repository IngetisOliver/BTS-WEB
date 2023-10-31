function test(){
    var image = document.getElementById('image');
    var source = image.src;
    window.open(source);
}

function changeBackgroundColor() {
    const background = document.body;
    const newColor = getRandomColor();
    background.style.backgroundColor = newColor;
}

// Change the background color every 2 seconds (2000 milliseconds)
setInterval(changeBackgroundColor, 2000);