GymPro K40 Pro Build
====================

Files:
- index.html: deployment entry file for GitHub/Vercel
- GymPro.html: main application
- GymPro_Daily.html: daily launcher copy
- START.bat: local frontend preview only
- START_K40_BACKEND.bat: starts the separate K40 backend sync service
- backend/: K40 Pro sync backend, not deployed to Vercel
- vercel.json: frontend static deployment config
- .vercelignore: prevents backend/Python files from deploying to Vercel
- OWNER_SETUP_GUIDE.txt: simple guide for the gym owner
- FRONTEND_VERCEL_DEPLOY_GUIDE.txt: deployment guide
- BACKEND_SETUP_GUIDE.txt: K40 backend setup guide

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
Upload this folder to GitHub, then import that GitHub repository in Vercel. Set Root Directory to GymPro_K40_PRO_CLEAN if the folder is inside the repo. Vercel deploys frontend only because .vercelignore excludes backend files.

