GymPro K40 Pro Build
====================

Files:
- index.html: deployment entry file for GitHub/Vercel
- GymPro.html: main application
- GymPro_Daily.html: daily launcher copy
- START.bat: double-click launcher
- gympro_server.py: local static server only
- vercel.json: Vercel rewrite config
- OWNER_SETUP_GUIDE.txt: simple guide for the gym owner

Biometric workflow:
1. Add a member or staff person in GymPro.
2. GymPro generates a device user ID such as M1001 or S2001.
3. Enroll the fingerprint directly on the ZKTeco K40 Pro using that exact ID.
4. In GymPro, open Biometric and mark the person as Enrollment Pending or Enrolled.
5. Sync/import K40 punch logs in the Biometric page.
6. GymPro saves raw logs, prevents duplicates, processes member/staff attendance, flags unmatched logs, checks expired memberships, and updates staff shift status.

Important:
- No old browser biometric service is required.
- No USB browser biometric capture is used.
- The K40 Pro device handles fingerprint enrollment and matching.
- GymPro handles Firebase records, attendance, salary, expiry, receipts, WhatsApp links, reports, and manual backup attendance.

Daily use:
1. Double-click START.bat.
2. Open Biometric.
3. Use Sync Logs to import/process K40 logs.
4. Check Unmatched Logs for device IDs that do not match any member or staff.

Deploy:
Upload this folder to GitHub, then import that GitHub repository in Vercel. Vercel should use index.html automatically.

