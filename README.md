ASM Compile and Run Script
A bash script to assemble, link, and run x86_64 assembly code on Debian-based systems.
Prerequisites
bashCopysudo apt-get update
sudo apt-get install build-essential
Setup

Save the script as asm-compile-run.sh
Make it executable:
bashCopychmod +x asm-compile-run.sh


Usage
bashCopy./asm-compile-run.sh filename
(Omit the .s extension when running the script)
What it does

Assembles the .s file into an object file
Links the object file into an executable
Runs the executable
Displays the exit status
Cleans up temporary files

Note: Designed for x86_64 assembly
