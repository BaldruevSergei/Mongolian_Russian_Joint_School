Created: 2023-06-01 · Updated: 2023-08-28 · Author: Sergei Baldruev · Language: English · Document type: Access control system layout

RFID System Layout Description

Mongolian-Russian Joint School
Overview of RFID-based student and staff access system

Purpose:
Track entry/exit of students and staff using RFID cards and integrated door readers.

Hardware Components:
• 4 RFID readers (ZKTeco/Matrix) installed at entry points
• USB-connected RFID reader at security desk for manual override
• Server with PostgreSQL database for log storage and synchronization

System Design:
• Each user is issued an RFID card linked to their student/staff ID
• RFID readers send scan data to central access server in real-time
• Scans are linked to class schedules to determine lateness or absence

Data Flow:
1. RFID card scanned at gate
2. Reader sends UID to access server
3. Server logs timestamp, UID, and gate location
4. Student ID matched using students table
5. Record is forwarded to attendance analytics module

Integration:
• Synced daily with class schedule system
• Integrated with test result and academic performance logs
• Staff use RFID for lab access and teacher room entry

Emergency Access:
• Manual override switch at main gate
• Remote unlock from director’s PC (LAN-based)
• Daily backup of RFID logs to external drive

Maintenance:
• Card stock and UID register maintained in Excel
• Equipment checked monthly for signal quality and response delay

Contacts:
• Telegram group: @mrjs_rfid
• Main server IP: 192.168.10.7
