break > concat.txt
mkdir timelapse_cut
for %%x in (timelapse/*.mp4) do (
    ffmpeg -i timelapse/%%x -ss 00.12 -an timelapse_cut/%%x
    echo file 'timelapse_cut/%%x' >> concat.txt
)