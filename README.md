# Drag2HapQ
Simple drag-and-drop batch converter for creating HapQ videos. Convert your videos to HapQ alpha format with a simple drag operation.

## Requirements
- Windows
- FFmpeg with Hap codec support installed (requires full FFmpeg build, not just essentials)
  - Download from: https://www.gyan.dev/ffmpeg/builds/ (Select "full" build)
  - Add FFmpeg to your system PATH

## How to Use
1. Install FFmpeg (full version) if you haven't already
2. Download the .bat script
3. **Drag and drop** your video file(s) onto the script
   - Do NOT double-click the script - it only works via drag-and-drop
4. Your converted file(s) will appear in the same folder with "_hapq" suffix

## Notes
- The script will automatically handle scaling to ensure video dimensions are multiples of 4
- Output files are saved in the same location as input files
- Multiple files can be converted at once by dragging them together
