## Project URL
[Server Performance Stats Project](https://github.com/Ylli831/Server-Performance-Stats)

# Server Performance Stats

This project contains a shell script, `server-stats.sh`, to analyze basic server performance stats. The script provides insights into CPU usage, memory usage, disk usage, and displays the top processes by CPU and memory usage.

## Project URL

You can view the repository here: [https://github.com/Ylli831/Server-Performance-Stats](https://github.com/Ylli831/Server-Performance-Stats)
Script: [https://github.com/Ylli831/Server-Performance-Stats/blob/main/server-stats.sh](https://github.com/Ylli831/Server-Performance-Stats/blob/main/server-stats.sh)

## Instructions to Run the Project

### Prerequisites
- This script is intended to be run on a Linux server with `bash` installed.

### Running the Script

**Clone the Repository**  
Open a terminal and clone the repository using:
git clone https://github.com/Ylli831/Server-Performance-Stats.git

Navigate to the Project Directory
Move into the directory:

cd Server-Performance-Stats
Ensure the script has execute permissions:

chmod +x server-stats.sh

Execute the script to display server performance stats:

./server-stats.sh

The script will display:

Total CPU Usage: Shows the percentage of CPU currently in use.
Total Memory Usage: Displays free and used memory with percentages.
Total Disk Usage: Shows free and used disk space with percentages.
Top 5 Processes by CPU Usage: Lists the five processes using the most CPU.
Top 5 Processes by Memory Usage: Lists the five processes using the most memory.
