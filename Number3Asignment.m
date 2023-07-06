
K=imfinfo('2.jpg');
image_byte=K.Width*K.Height*K.BitDepth/8;
compressed_byte=K.FileSize;

compression_ratio=image_byte/compressed_byte;

fprintf('Compression ratio is %.2f\n', compression_ratio);
