Thing_Mover
Overview

This batch script uses Windows robocopy to recursively copy files from one drive to another while ensuring the script is executed with Administrator privileges.

It is designed for bulk data transfer, drive migration, or backup preparation scenarios.



The script:

Verifies admin rights before running

Copies all subdirectories

Skips junction points to prevent recursive loops

Shows transfer progress with ETA

Does not retry failed files


Requirements:

Windows OS

Administrator privileges

Source and destination drives defined in the script


How It Works:

The script checks for administrative privileges using:

net session >nul 2>&1

If the script is not run as Administrator, it exits.
If it is, it executes:

robocopy "F:\\" "E:\\" /E /ETA /xj /r:0 /w:0

By default, this copies all files and folders from F:\ to E:\.

How To Change the Source or Destination Drive

Open the .bat file in Notepad and locate this line:

robocopy "F:\\" "E:\\" /E /ETA /xj /r:0 /w:0

Change:

"F:\\" → to your source drive

"E:\\" → to your destination drive

Example:

robocopy "D:\\" "G:\\" /E /ETA /xj /r:0 /w:0

Save the file and run again as Administrator.

How To Copy Only a Specific File Type

Right now, the script copies everything.

To copy only specific file types, add the file extension after the destination path.

Example: Copy Only .txt Files

Change this:

robocopy "F:\\" "E:\\" /E /ETA /xj /r:0 /w:0

To this:

robocopy "F:\\" "E:\\" *.txt /E /ETA /xj /r:0 /w:0

Example: Copy Only Images
robocopy "F:\\" "E:\\" *.jpg *.png /E /ETA /xj /r:0 /w:0

You can specify multiple file types separated by spaces.
