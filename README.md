https://roadmap.sh/projects/server-stats
Server Performance Stats

This repository provides a shell script to monitor server performance metrics, helping administrators keep track of CPU, memory, and disk usage.

Project URL

https://github.com/Ylli831/Server-Performance-Stats

Usage

To run the script, make sure it has execute permissions, then run it as follows:

chmod +x server-stats.sh
./server-stats.sh

Replace server_performance.sh with the actual name of your script file if it’s different.

Requirements

	•	Unix-based operating system (e.g., Linux, macOS)
	•	Basic command-line utilities like top, df, and free, which are typically pre-installed.

Features

	•	Monitors CPU, memory, and disk usage in real-time.
	•	Provides alerts if usage exceeds specified thresholds (if implemented in the script).
	•	Logs data to help analyze performance over time (if implemented in the script).

Project Structure

Server-Performance-Stats/
├── server_performance.sh   # Main script to monitor performance
└── README.md               # Project documentation

License

This project is licensed under the MIT License - see the LICENSE file for details.