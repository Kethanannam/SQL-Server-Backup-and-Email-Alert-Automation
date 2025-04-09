# SQL Server Agent Job: Weekly Backup

## Steps:
1. Enable SQL Server Agent
2. Right-click Jobs → New Job
3. Name: Weekly_Backup_Job
4. Step:
   - Name: Backup_Database
   - Type: T-SQL Script
   - Command: Use `backup-script.sql`
5. Schedule:
   - Type: Recurring
   - Frequency: Weekly
   - Days: Monday, Wednesday, Friday
   - Time: Choose your preferred time
6. Notifications:
   - Enable email alerts (requires Database Mail and Operator)
