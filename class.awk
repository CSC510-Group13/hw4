#!/usr/bin/awk -F, -f  # -F, ensures AWK treats commas as field separators

BEGIN {
    print "Passenger Count per Class"
}

NR > 1 {  # Skip header row
    class_count[$3]++  # Assuming Pclass is in column 2
}

END {
    for (class in class_count) {
        print "Class " class ": " class_count[class] " passengers"
    }
}

