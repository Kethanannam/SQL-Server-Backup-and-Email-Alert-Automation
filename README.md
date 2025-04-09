# SQL Server Automated Backup with Email Alerts (Gmail)

This project automates SQL Server database backups on a weekly schedule (3 days a week) and sends email alerts via Gmail using Database Mail.

## ✅ Features
- Automated backups via SQL Server Agent Job
- Dynamic backup file naming
- Email alerts on job success/failure using Gmail SMTP
- Tested on SQL Server 2019 Developer Edition

## 🛠 Prerequisites
- SQL Server 2017 or later
- SSMS (SQL Server Management Studio)
- Gmail account with 2-Step Verification enabled
- Gmail App Password (required)

## 📦 Files
- `backup-script.sql`: T-SQL for creating backups with timestamped filenames
- `setup-database-mail.sql`: Optional script to enable Database Mail and configure Gmail SMTP
- `job-setup-instructions.md`: Step-by-step guide to create a SQL Server Agent Job with scheduling and email alerts

## 📨 Gmail SMTP Settings
- SMTP Server: `smtp.gmail.com`
- Port: `587`
- SSL: Enabled
- Username: `your-email@gmail.com`
- Password: Use [Gmail App Password](https://myaccount.google.com/apppasswords)

## 📅 Scheduling
Backups are scheduled to run on:
- Monday
- Wednesday
- Friday
- At your specified time

## 🔐 Security Note
Never commit your real Gmail credentials or App Passwords to a public repository!
