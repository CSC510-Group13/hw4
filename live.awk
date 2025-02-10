#!/usr/bin/awk -F, -f

BEGIN {
    FS = ","  # Set field separator for CSV
    print "Survival Rates by Passenger Class\n"
    # Initialize arrays to store counts
    for (i = 1; i <= 3; i++) {
        total_class[i] = 0
        survived_class[i] = 0
    }
}

NR > 1 {  # Skip header row
    pclass = $3  # Passenger Class is in column 3
    survived = $2  # Survival status is in column 2
    sub(/\r$/, "", survived)  # Remove carriage return if present
    
    # Count totals and survivors for each class
    total_class[pclass]++
    if (survived == "1") {
        survived_class[pclass]++
    }
}

END {
    # Calculate and display survival rates for each class
    printf "%-10s %-12s %-12s %-12s\n", "Class", "Total", "Survived", "Rate (%)"
    printf "----------------------------------------\n"
    
    for (class = 1; class <= 3; class++) {
        if (total_class[class] > 0) {
            rate = (survived_class[class] / total_class[class]) * 100
            printf "%-10s %-12d %-12d %.2f%%\n", 
                   class, 
                   total_class[class], 
                   survived_class[class], 
                   rate
        }
    }
}