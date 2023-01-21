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
    
    % SHOW IT
    imshow(image2d);
    
end
