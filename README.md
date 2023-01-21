## octave_idx
Octave IDX Reader (for MNIST repository)
(c) Abbex 2023
www.abbex.dk

### IDX READER FOR OCTAVE

This repository contains two Octave functions:
1. readIDX
2. showImage

### Function readIDX

This functions read IDX file formats as the ones used by MNIST repository (http://yann.lecun.com/exdb/mnist/)
To load a file just invoke readIDX(filename). The function will return an array with the specific sizes.
Function has been tested using MNIST dataset, which stores both 3 dimensions and 1 dimension arrays for images and labels respectively.

### Function showImage

This function will display an image (2x2 matrix) stored in an array that contains indexes (as the catalog of handwritten images from MNIST dataset).
It is invoked by passing the array where the first index is the image number and the second and third columns are the rows and columns respectively.
The function will invoke imshow function handling the selection of the particular image by index and by the removal of that dimension so imshow uses a 2D array.

### Function Usage example

The following Octave excertp code shows how to load and display MNIST image files.

```
octave:1> images = readIDX('train-images-idx3-ubyte');
octave:2> labels = readIDX('train-labels-idx1-ubyte');
octave:3> size(images)
ans =

   60000      28      28

octave:4> size(labels)
ans =

   60000       1

octave:5> labels(3,:)
ans = 4
octave:6> showImage(images, 3)
```

![Image3](https://raw.githubusercontent.com/marioemmanuel/octave_idx/main/mnist_screenshot.png)
