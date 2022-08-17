# SPDX-FileCopyrightText: 2022 Alec Delaney, written for Adafruit Industries
#
# SPDX-License-Identifier: MIT

while read filename; do
    if [ "$1" == "install" ]; then
        echo "Copying $filename to evergreen_copyright/"
        ln  ./submodules/adabot/tools/$filename ./evergreen_copyright/$filename;
    elif [ "$1" == "clean" ]; then
        echo "Deleting $filename in evergreen_copyright/"
        rm ./evergreen_copyright/$filename;
    fi
done < tools_reqs.txt
