# HW04: Data Wrangling

[![GitHub Action Status](https://github.com/CSC510-Group13/hw01/workflows/unit-tests/badge.svg)](https://github.com/CSC510-Group13/hw01/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Data wrangling homework for CSC510 Software Engineering.

## Tasks Overview

1. `task1.sh` - Script to kill an infinite process
2. `task2.sh` - Text processing with grep and uniq
3. `5.awk` - Titanic data analysis script
4. `class.awk` - Passenger class analysis
5. `age.awk` - Average age calculation
6. `live.awk` - Survival rates analysis

## Setup

1. Clone this repository
2. Download the [Titanic dataset](https://raw.githubusercontent.com/datasciencedojo/datasets/refs/heads/master/titanic.csv)

## Running the Scripts

Each script can be executed independently:

```bash
# Task 1: Kill infinite script
sh task1.sh

# Task 2: Text processing
sh task2.sh

# Tasks 3-6: Titanic analysis
awk -f class.awk titanic.csv
awk -f age.awk titanic.csv
awk -f live.awk titanic.csv
```