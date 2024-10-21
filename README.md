About

This script, file_cleanup.sh, helps you organize your files by sorting them based on their extensions. It's designed for use on macOS and Linux systems.

Features

Sorts files within a directory by their extensions.
Creates subdirectories for each unique extension (e.g., .txt, .jpg).
Moves files into their respective extension subdirectories.
Requirements

macOS or Linux operating system
Bash shell (default on most systems)
Setup

1. Download Script

Download file_cleanup.sh to your desired directory.
You can download it directly from a website, copy-paste the script code into a file editor, or use a tool like curl or wget (if downloaded remotely).
2. Make Script Executable

Open a terminal window and navigate to the directory where you saved file_cleanup.sh.
Use the chmod +x file_cleanup.sh command to grant the script execution permission:
Bash
chmod +x file_cleanup.sh
Use code with caution.

Usage

1. Run the Script

Navigate to the directory containing the files you want to sort.
Run the script using the following syntax:
Bash
./file_cleanup.sh
Use code with caution.

2. (Optional) Specify Directory (Advanced)

If you want to sort files in a different directory from your current location, provide the directory path as an argument:
Bash
./file_cleanup.sh /path/to/your/directory
Use code with caution.

Notes

The script will create subdirectories within the provided directory (or the current directory if no argument is given).
Existing subdirectories with the same names as extensions will be used, unless you specify the -f (force) option (explained below).
By default, the script will move files. If you prefer to only create subdirectories without moving files, use the -n (no move) option.
Advanced Options

-f (force): Overwrite existing subdirectories with the same names as extensions.
-n (no move): Only create subdirectories; do not move files.
Example Usage with Options

Bash
./file_cleanup.sh -fn /path/to/your/directory   # Create subdirectories (no move), overwrite existing
Use code with caution.

Disclaimer

It's recommended to back up your data before running the script in case of unforeseen circumstances.
Consider using the -n (no move) option for a trial run to see how the script will organize your files before actually moving them.
