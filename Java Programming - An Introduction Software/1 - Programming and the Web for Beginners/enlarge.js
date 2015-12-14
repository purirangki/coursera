var inImage = new SimpleImage("skyline.jpg");
var outImage = new SimpleImage(inImage.getWidth() * 2, inImage.getHeight() * 2);

for(var pixel of outImage.values()) {
    var x = Math.floor(pixel.getX() / 2);
    var y = Math.floor(pixel.getY() / 2);

    var inPixel = inImage.getPixel(x, y);
    pixel.setRed(inPixel.getRed());
    pixel.setGreen(inPixel.getGreen());
    pixel.setBlue(inPixel.getBlue());
}

print(inImage);
print(outImage);