% FUNCTION showImage
% SHOWS AN IMAGE STORED IN AN ARRAY BY PASSING THE ARRAY AND THE INDEX
% (C) ABBEX 2023. ALL RIGHTS RESERVED.
% www.abbex.dk

% FUNCTION showImage
function showImage(imageArray, index)

    % SELECT THE IMAGE
    image = imageArray(index, :, :);
    imageDims = size(image);

    % RESHAPE TO A 2D IMAGE AND SHOW IT
    image2d = reshape(image, [imageDims(2) imageDims(3)]);
    
    % CONVERT TO DOUBLE AND SCALE TO 0.0-1.0
    image2d = double(image2d) / 256.0;

    % SHOW IT
    imshow(image2d);
    
end
