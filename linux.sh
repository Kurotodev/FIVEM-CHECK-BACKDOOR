#!/bin/bash

read -p "Enter the directory to scan: " scan_dir

if [ ! -d "$scan_dir" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

malwarefound=0
found_files=()

echo "You must put this in your resources directory!"
echo "[MalScanner] Welcome. Press enter to begin scanning."
read -r

declare -A malwares
malwares=(
    ["Malware A"]="random_char"
    ["Malware B"]="Enchanced_Tabs"
    ["Malware C"]="helpCode"
    ["Malware D"]="assert(load("
    ["Malware E"]=$'\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74'
    ["Malware F"]="helperServer"
    ["Malware G"]="eGlAnDJByGaVAuyZDaXRzNwsCziWWqkhxierAdUuVyguVhqKsulbKUHiETOTsQTNuVsoCG"
)

declare -A js_malwares
js_malwares=(
    ["Malware H"]="aHR0cHM6Ly8xbHMyLm9yZy91c2Vycy9qcy90ZXN0cy5qcw=="
)

echo "[MalScanner] Scanning started..."

for malware in "${!malwares[@]}"; do
    echo "Checking: $malware"
    files=$(grep -rIl "${malwares[$malware]}" --include=*.lua "$scan_dir")
    if [ $? -eq 0 ] && [ -n "$files" ]; then
        malwarefound=1
        found_files+=("$malware: $files")
    fi
    echo "------------------------------------"
done

for malware in "${!js_malwares[@]}"; do
    echo "Checking: $malware"
    files=$(grep -rIl "${js_malwares[$malware]}" --include=*.js "$scan_dir")
    if [ $? -eq 0 ] && [ -n "$files" ]; then
        malwarefound=1
        found_files+=("$malware: $files")
    fi
    echo "------------------------------------"
done

if [ $malwarefound -eq 1 ]; then
    echo "[MalScanner] Malware found! Check the details below:"
    for entry in "${found_files[@]}"; do
        echo "$entry"
    done
else
    echo "[MalScanner] No malware found."
fi

read -p "Press enter to exit..."
