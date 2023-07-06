% Specify the directory path
directory = 'D:/8th semister/matlab/New folder/image/';

% Get a list of all JPEG files in the directory
jpegFiles = dir(fullfile(directory, '*.jpg'));

% Loop through each JPEG file
for i = 1:numel(jpegFiles)
    % Read the JPEG image
    jpegFilename = fullfile(directory, jpegFiles(i).name);
    jpegImage = imread(jpegFilename);
    
     % Convert the JPEG image to PNG format
    [~, pngFilename, ~] = fileparts(jpegFilename);
    pngFilename = fullfile(directory, [pngFilename '.png']);
    imwrite(jpegImage, pngFilename, 'png');
end

disp('Conversion completed.');
