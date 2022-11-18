imagenames=$(paste -sd ';' metadata/filesubset.txt)

echo "files to be downloaded:"
echo $imagenames

#download
azcopy/azcopy.exe/ cp \
    "https://lilablobssc.blob.core.windows.net/wellington-unzipped/images/" \
    test_data/ \
    --include-path "$imagenames"
