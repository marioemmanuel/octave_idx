% FUNCTION readIDX
% READS A IDX FORMAT FILE, SUCH AS THE ONE USED BY MNIST
% (C) ABBEX 2023. ALL RIGHTS RESERVED.
% www.abbex.dk

% FUNCTION readIDX 
function data = readIDX(filename)

    % OPEN THE FILE
    fid = fopen(filename, 'r');
    
    % SKIP FIRST TWO BYTES FROM MAGIC NUMBER
    fread(fid, 1, 'uint8', 0, 'ieee-be');
    fread(fid, 1, 'uint8', 0, 'ieee-be');
    
    % READ THE DATA TYPE
    datatype = fread(fid, 1, 'uint8', 0, 'ieee-be');

    % READ THE NUMBER OF DIMENSIONS
    ndims = fread(fid, 1, 'uint8', 0, 'ieee-be');

    % READ EACH DIMENSION SIZE
    dims = fread(fid, ndims, 'int32', 0, 'ieee-be');

    % DETERMINE THE BASIC DATA TYPE OF THE DATA
    switch datatype
        case 8
            datatype = 'uint8';
        case 9
            datatype = 'int8';
        case 11
            datatype = 'int16';
        case 12
            datatype = 'int32';
        case 13
            datatype = 'single';
        case 14
            datatype = 'double';
        otherwise
            error('INVALID DATA TYPE');
    end

    % READ THE DATA
    data = fread(fid, prod(dims), datatype); 
    if length(dims)>1
      data = reshape(data, flip(dims));
      data = permute(data, length(dims):-1:1);
    end

    % CLOSE THE FILE
    fclose(fid);

end
