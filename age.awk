#!/usr/bin/awk -f

BEGIN {
    FS = ","  # Set field separator for CSV
    total_age = 0
    count = 0
}

NR > 1 {
    gsub(/ /, "", $7)  # Remove spaces
    if ($7 ~ /^[0-9.]+$/) {  # Match numeric values
        total_age += $7
        count++
    }
}

END {
    if (count > 0) {
        print "Average Age of Passengers:", total_age / count
    } else {
        print "No valid age data found!"
    }
}
