::@echo off
mkdir timelapse
for %%x in (movie/*.mp4) do (
    ffmpeg -i movie/%%x -vf "setpts=0.05*PTS" -an timelapse/%%x
)
