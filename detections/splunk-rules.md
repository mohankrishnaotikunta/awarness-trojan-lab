# Splunk Detection Rules

## Attack 1 — Brute Force (Event ID 4625)
Triggers when failed login attempts are detected.

index=main EventCode=4625 earliest=-1h

## Attack 2 — New User Created (Event ID 4720)
Triggers when a new user account is created on the system.

index=main EventCode=4720 earliest=-1h

## Attack 3 — Reconnaissance (Event ID 4688)
Triggers when common reconnaissance commands are executed.

index=main EventCode=4688 earliest=-1h | search Message="*whoami*" 
OR Message="*ipconfig*" OR Message="*netstat*" 
OR Message="*systeminfo*" OR Message="*tasklist*"