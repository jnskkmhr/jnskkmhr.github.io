#!/bin/zsh

# Usage: ./mp4_to_gif.sh input.mp4 output.gif [fps] [width]
# Example: ./mp4_to_gif.sh video.mp4 output.gif 10 480

INPUT_FILE="$1"
OUTPUT_FILE="$2"
FPS="${3:-10}"  # Default 10 fps
WIDTH="${4:-480}"  # Default width 480px (height auto-scales)

if [ -z "$INPUT_FILE" ] || [ -z "$OUTPUT_FILE" ]; then
    echo "Usage: $0 input.mp4 output.gif [fps] [width]"
    echo "Example: $0 video.mp4 output.gif 10 480"
    exit 1
fi

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found!"
    exit 1
fi

echo "Converting $INPUT_FILE to $OUTPUT_FILE"
echo "Settings: ${FPS}fps, width=${WIDTH}px"

# Two-pass approach for better quality and smaller file size
# Pass 1: Generate color palette
ffmpeg -i "$INPUT_FILE" -vf "fps=$FPS,scale=${WIDTH}:-1:flags=lanczos,palettegen=stats_mode=diff" -y /tmp/palette.png

# Pass 2: Use palette to create optimized GIF
ffmpeg -i "$INPUT_FILE" -i /tmp/palette.png -lavfi "fps=$FPS,scale=${WIDTH}:-1:flags=lanczos [x]; [x][1:v] paletteuse=dither=bayer:bayer_scale=5:diff_mode=rectangle" -y "$OUTPUT_FILE"

# Clean up
rm -f /tmp/palette.png

echo "Conversion complete!"
echo "Output: $OUTPUT_FILE"
ls -lh "$OUTPUT_FILE;1"
