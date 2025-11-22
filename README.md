Tool After Format (By geekfromgreece) - ReadME!

---------------------------------------------------------------
🧰 Toolkit After Format — Τι είναι και τι κάνει;(Στα Ελληνικά)
--------------------------------------------------------------

Το “Toolkit After Format (by geekfromgreece)” είναι ένα ολοκληρωμένο, αυτοματοποιημένο εργαλείο για Windows, σχεδιασμένο να εκτελεί όλες τις βασικές και προχωρημένες ρυθμίσεις μετά από ένα format, χωρίς να χρειάζεται ο χρήστης να ψάχνει, να κατεβάζει ή να εκτελεί δεκάδες διαφορετικά scripts.

<img width="1535" height="936" alt="1  Main Menu" src="https://github.com/user-attachments/assets/a59c6a30-9310-4b79-b2b9-b3494955d7bf" />

Από το Main Menu, βλέπεις ότι το πρόγραμμα προσφέρει:

✔ 1. Admin Rights

Αυτόματος έλεγχος και απόκτηση administrator δικαιωμάτων με ασφαλή UAC elevation.

✔ 2. Windows Activation Script

Εργαλεία ενεργοποίησης όλων των εκδόσεων Windows με επιλογή KMS ή κανονικού product key.

✔ 3. Export/Install Drivers

Εξαγωγή όλων των drivers του συστήματος + επιλογή για επανεγκατάσταση από backup.

✔ 4. Personalization

Αλλαγή system name, θέματα, desktop icons, privacy, bloatware removal, power management κ.λπ.

✔ 5. Internet Toolkit

WiFi tools, DNS presets, speedtest, network troubleshooting, browser cleanup.

✔ 6. System Cleaner

Καθαρισμός temp/log files, Windows Update leftovers, WER dumps, Disk Cleanup, SFC.

✔ 7. Power Control

Restart, shutdown, reboot to BIOS — όλα σε ένα απλό μενού.

✔ 8. Others

Extra εργαλεία όπως το Edge Reset Toolkit, backup & reset των Edge profiles.

Επιλογή 1 — Admin Rights (Δικαιώματα Διαχειριστή)
-------------------------------------------------
<img width="1526" height="949" alt="1  Admin Rights" src="https://github.com/user-attachments/assets/6d4b5c7e-9c3a-4e29-b29b-75b7c99888d5" />

Είναι ένα εργαλείο ελέγχου και απόκτησης δικαιωμάτων διαχειριστή (administrator privileges) μέσα στο Toolkit After Format.
Ουσιαστικά είναι ο “φύλακας” του υπολοίπου toolkit, γιατί πολλές λειτουργίες δεν μπορούν να τρέξουν χωρίς elevated privileges.

Η επιλογή Admin Rights εκτελεί τρεις βασικές ενέργειες:

1️⃣ Ελέγχει αν ο χρήστης έχει ήδη δικαιώματα admin

Αν ο χρήστης ήδη τρέχει το .BAT ως Administrator, τότε το script εμφανίζει το μήνυμα:
“Command cannot proceed user have already admin rights”

Δηλαδή δεν χρειάζεται ξανά elevation.

2️⃣ Αν δεν έχει admin, ζητά UAC Elevation (Run as Administrator)

Το script δημιουργεί ένα προσωρινό .vbs αρχείο που τρέχει:

cmd.exe /c <το script>  ως runas

Έτσι εμφανίζεται το κλασικό παράθυρο UAC των Windows
👉 “Do you want to allow this app to make changes to your device?”
|

3️⃣ Αφού ολοκληρωθεί η διαδικασία, σε επιστρέφει πίσω στο μενού

Στο τέλος εμφανίζει:
Press “R” to return to Main Menu

Και πηγαίνεις πίσω στο κεντρικό μενού.

Επιλογή 2 — Windows Activation Script
--------------------------------------
<img width="1524" height="936" alt="2  Windows Activation Script" src="https://github.com/user-attachments/assets/15f1a11b-41f8-4d20-86f2-d2ac424bfac5" />

Είναι ένα πλήρες, οργανωμένο activation toolkit που σου επιτρέπει να ενεργοποιήσεις όλες τις εκδόσεις των Windows, από Windows Vista μέχρι Windows 11, χρησιμοποιώντας νόμιμες γενικές (GVLK) άδειες και KMS activation servers.
Με απλά λόγια:
➡️ Είναι το “κέντρο ενεργοποίησης” του Toolkit.

Η επιλογή Windows Activation Script προσφέρει:
Πριν κάνει οτιδήποτε, το script ελέγχει αν τρέχει με admin δικαιώματα — απαραίτητο για activation.
Αν δεν έχει admin rights → εμφανίζει μήνυμα και επιστρέφει στο Main Menu.

2️⃣ Σου εμφανίζει ένα υπομενού με όλες τις εκδόσεις Windows

Μπορείς να διαλέξεις ποιο OS θέλεις να ενεργοποιήσεις:

Windows 11 / 10 (Semi-Annual Channel)

Windows 10 LTSC / LTSB

Windows 8.1

Windows 8

Windows 7

Windows Vista

Επιπλέον επιλογές:

License Details

Activate License from Original Product Key (OA3 BIOS Key)

Κάθε κατηγορία έχει τα δικά της activation keys.

3️⃣ Το script εισάγει αυτόματα το σωστό GVLK key

Ανάλογα με την επιλογή σου, κάνει:

slmgr /ipk <προτεινόμενο key>
slmgr /skms <kms server>
slmgr /ato

Δηλαδή:

1. Βάζει το σωστό προϊόν-κλειδί (GVLK key)

2. Συνδέεται σε αξιόπιστο KMS server

3. Ενεργοποιεί το Windows σου

4️⃣ Εμφανίζει λεπτομέρειες άδειας

Στην επιλογή License Tools μπορείς να δεις:

-Το Original BIOS Product Key

-Την τρέχουσα άδεια

-Αναλυτικές πληροφορίες ενεργοποίησης

-Ημερομηνία λήξης KMS

-κτλ.

Επιλογή 3 — Export / Install Drivers Toolkit
--------------------------------------------
<img width="1521" height="934" alt="3  ExportInstall Drivers" src="https://github.com/user-attachments/assets/3354c684-b4b2-4173-8b4e-2d37aec96e33" />

Ένα πλήρες, αυτοματοποιημένο εργαλείο για:

1. Εξαγωγή όλων των drivers ενός υπολογιστή

2. Επανεγκατάσταση drivers από προηγούμενη εξαγωγή

Είναι από τα βασικότερα εργαλεία σε κάθε μετά‐format Toolkit (αλλά και πριν το Format).


Με αυτήν την επιλογή μπορείς:

• Να κάνεις backup όλους τους drivers

Πριν format — ή σε έναν σωστά στημένο υπολογιστή — μπορείς να εξάγεις ΟΛΟΥΣ τους drivers σε έναν φάκελο:

<PCNAME>_Drivers

Παράδειγμα:
➡️ DESKTOP-123456_Drivers

Έτσι, δεν χρειάζεται να ψάχνεις drivers μετά το format.

• Να κάνεις επανεγκατάσταση όλων των drivers με ένα click

Μετά το format:

Το script σαρώσει τον φάκελο → βρίσκει όλους τους διαθέσιμους driver folders

Δείχνει τα .INF αρχεία

Κάνει αυτόματη εγκατάσταση με pnputil

Αυτό σημαίνει:

✔ Όλα τα drivers μπαίνουν σωστά
✔ Χωρίς setup exe
✔ Χωρίς λάθος εκδόσεις
✔ Χωρίς manually downloading από Internet

🔧 Πώς λειτουργεί η επιλογή 3

Το μενού προσφέρει δύο επιλογές:

1️⃣ Export Drivers

Το script:

- Ανιχνεύει το όνομα του PC

- Δημιουργεί φάκελο <PCNAME>_Drivers

- Εκτελεί:

pnputil /export-driver * "<Folder>"

- Σου εμφανίζει επιτυχία ή μήνυμα ότι ο φάκελος ήδη υπάρχει

Καθαρή, σωστή εξαγωγή drivers.

2️⃣ Install Drivers

Το script:

- Σκανάρει όλους τους φακέλους που τελειώνουν σε _Drivers

- Σου δείχνει αριθμημένη λίστα

- Σου επιτρέπει να προεπισκοπήσεις τα .INF αρχεία

- Ρωτάει επιβεβαίωση

- Εκτελεί:

pnputil /add-driver "<Folder>\*.inf" /subdirs /install

-Kάνει πλήρη εγκατάσταση όλων των driver packages

Ασφαλές → Εγκαθιστά μόνο INF drivers (όχι .exe).

Επιλογή 4 — Personalization
----------------------------
<img width="1512" height="928" alt="4  Personalization" src="https://github.com/user-attachments/assets/fc1e687e-5a3c-4905-98df-552e0448c9b5" />

Ένα πλήρες κέντρο ρυθμίσεων εμφάνισης, ευκολίας χρήσης και λειτουργικότητας των Windows. Μαζεύει 8 διαφορετικές ενότητες που συνήθως πρέπει να τις κάνεις χειροκίνητα από 5–6 σημεία των Windows.

Με την επιλογή 4, ο χρήστης παίρνει profile customization επιπέδου OEM — με δύο κλικ.

🎯 Τι περιλαμβάνει;
1️⃣ Set System Product Name

Αλλάζει το όνομα του υπολογιστή με PowerShell (Rename-Computer).
Ιδανικό μετά το format για να δώσεις custom όνομα στο σύστημα.

Πού χρησιμεύει:
✔ Δικτυακά περιβάλλοντα
✔ Προσωπική ταυτότητα συστήματος
✔ Οργάνωση πολλών PC

2️⃣ Toggle Light/Dark Theme

Με registry settings αλλάζεις:

SystemUsesLightTheme

AppsUseLightTheme

Πολύ καθαρή υλοποίηση, με restore του Explorer για άμεση εφαρμογή.

Πού χρησιμεύει:
✔ Γρήγορη εναλλαγή θέματος χωρίς να ανοίγεις Settings
✔ Τέλεια για format builds ή για IT environments

3️⃣ Enable / Disable Desktop Icons

Ένα από τα καλύτερα parts του module.

Το script:

- Διαχειρίζεται και τους 5 βασικούς desktop system icons

- Τους ενεργοποιεί ή απενεργοποιεί

- Refresh Explorer για άμεση εφαρμογή

- Κάνει χρήση των GUIDs & των registry paths NewStartPanel / ClassicStartMenu

Πού χρησιμεύει:
✔ Καθάρισμα Desktop
✔ Gaming setups
✔ Minimalist UI setups

4️⃣ File Explorer Privacy Toggle

Ενεργοποιεί/απενεργοποιεί:

-Recent files

-Frequent folders

-Καθαρίζει Recent Items

-Κάνει Explorer restart

Πού χρησιμεύει:
✔ Προστασία ιδιωτικότητας
✔ Καθαρότερο File Explorer
✔ Εταιρικά/Shared PC setups

5️⃣ Pin Recycle Bin to Quick Access

Πολύ ωραία λεπτομέρεια: χρησιμοποιεί COM Shell αντικείμενο για να καρφιτσώσει τον Κάδο.

Πού χρησιμεύει:
✔ Ταχύτερη πρόσβαση
✔ Χώρο στο Desktop
✔ Consistent workflow

6️⃣ Toggle Start Menu Web Search

Πολύ δυνατή επιλογή: ενεργοποιεί/απενεργοποιεί το online Bing search της αναζήτησης.

Τι κάνει:

- Ρυθμίζει DisableSearchBoxSuggestions (Policies)

- Αλλάζει BingSearchEnabled (User setting)

- Κάνει Explorer restart

Πού χρησιμεύει:
✔ Αν θες καθαρή, τοπική αναζήτηση
✔ GDPR/Security
✔ Gaming builds χωρίς αποσπάσεις

7️⃣ Bloatware Apps (Remove/Restore)

Το πιο advanced subsystem σου.

Το menu δίνει:

- Remove Bloatware

- Restore Bloatware

Με λειτουργίες όπως:

✔ PowerShell de-provisioning
✔ Remove-AppxPackage
✔ Restore built-in apps
✔ Winget installers για core components
✔ Logs / restore points

Πού χρησιμεύει:
✔ Επαγγελματικό cleanup μετά από format
✔ Προετοιμασία συστήματος για gaming/performance
✔ Εταιρικές εγκαταστάσεις

8️⃣ Power Management Center

Ένα mini-tool μέσα στο tool.

Δίνει:

- Balanced

- High performance

- Power saver

- TurboMode (custom power plan)

- DevMode (custom coding-friendly plan)

- Restore defaults

Εδώ έχεις advanced δουλειά με GUID scanning, duplicates, value indexes.

Πού χρησιμεύει:
✔ Gaming performance
✔ Productivity
✔ Battery saving
✔ Custom performance profiles

Επιλογή 5 — Internet Toolkit
-----------------------------
<img width="1523" height="942" alt="5  Internet Toolkit" src="https://github.com/user-attachments/assets/040460db-3d6f-4225-a9aa-95d18a2d6787" />

✅ Τι είναι:

Ένα πλήρες networking toolkit φτιαγμένο για troubleshooting, Wi-Fi management, DNS management, speed diagnostics και browser maintenance — όλα σε ένα σημείο, με το δικό σου uniform “Toolkit style”.

Η επιλογή 5 συγκεντρώνει λειτουργίες που ένας χρήστης ή τεχνικός χρειάζεται αμέσως μετά από format ή όταν κάτι πάει στραβά με το Internet.

🎯 Τι περιλαμβάνει;
1️⃣ Connect to Internet

Υπομενού με λειτουργίες:

- Export WiFi Profile
Εξάγει προφίλ Wi-Fi από το συνδεδεμένο δίκτυο σε XML (με κλειδί!), χρήσιμο για backup πριν από format.

- Connect to Internet (Import & Connect)
Χρησιμοποιεί netsh για να φορτώσει XML Wi-Fi profiles και να συνδεθεί αυτόματα.

Πού χρησιμεύει:
✔ Format setups
✔ PC migration
✔ Σύνδεση σε Wi-Fi χωρίς να γράψεις κωδικό

2️⃣ Connect to DNS

Ένα DNS Switcher tool.

Περιλαμβάνει:

- Shecan

- Electro

- Begzar

- Google (8.8.8.8)

- Cloudflare (1.1.1.1)

- AdGuard (blocking filters)

- Reset to default (DHCP)

- Check current DNS settings

Με ένα click αλλάζεις DNS για:

✔ Performance
✔ Privacy
✔ Gaming
✔ Bypassing throttling

Και φυσικά κάνει ipconfig /flushdns για άμεση εφαρμογή.

3️⃣ Speedtest

Τρέχει speedtest από το speedtest.exe (CLI version).

Αναλύει:

- Ping

- Download

- Upload

Με PowerShell JSON parsing — το έχεις φτιάξει πολύ επαγγελματικά.

Πού χρησιμεύει:
✔ Troubleshooting
✔ Bandwidth diagnostics
✔ Gaming lag checks
✔ ISP verification

4️⃣ Network Troubleshooting

Mini-tool για fixing networking χωρίς να ανοίγεις Settings ή CMD χειροκίνητα.

Περιλαμβάνει:

- Flush DNS

- Display DNS records

- Display ARP cache

- Show interfaces

- Full IP configuration

- Reset TCP/IP IPv4

- Reset IPv6

- Reset Winsock

- Restart Wi-Fi adapter

- Run All (full reset combo)

Αυτό είναι ουσιαστικά ένα network repair utility, πιο γρήγορο και πιο καθαρό από το ενσωματωμένο των Windows.

Πού χρησιμεύει:
✔ Wi-Fi / Ethernet προβλήματα
✔ Error “No Internet”
✔ DNS leaks
✔ Winsock corruption
✔ Μετά από malware removal

5️⃣ Browser Data Cleanup

Γρήγορη εκκαθάριση προσωρινών αρχείων:

- Temp cleanup

- Temp folder inspection
(με μενού και καθαρή ροή)

Χρήσιμο για:

✔ Ελευθέρωση χώρου
✔ Speed-up browser
✔ Αφαίρεση σκουπιδιών από scripts & installers

6️⃣ Browser Extension Management

Ετοιμασμένο subsystem για μελλοντική επέκταση.

Περιλαμβάνει options:

- Block/Unblock Extension

- Install / Force Install

- Remove Extension

(Placeholders για επέκταση)

Το έχεις έτοιμο για να βάλεις Edge/Chrome extension policies & custom installers.

Επιλογή 6 — System Cleaner
--------------------------
<img width="1527" height="939" alt="6  System Cleaner" src="https://github.com/user-attachments/assets/df38bc24-8ee9-4133-a8a3-2b078c47bb81" />

✅ Τι είναι:

Ένα πλήρες εργαλείο καθαρισμού συστήματος, σχεδιασμένο ώστε να καθαρίζει όλα τα άχρηστα, προβληματικά και συσσωρευμένα αρχεία που επιβαρύνουν τα Windows μετά από format, updates ή καθημερινή χρήση.

Ουσιαστικά λειτουργεί ως mini CCleaner, αλλά:

Χωρίς εγκατάσταση

Χωρίς διαφημίσεις

Πιο γρήγορο

Πιο “τεχνικό”

Πλήρως αυτοματοποιημένο

Με 100% ασφάλεια (τίποτα επικίνδυνο)

🎯 Τι περιλαμβάνει;
1️⃣ Clear Temporary Files

Καθαρίζει όλα τα προσωρινά δεδομένα που μαζεύονται στο σύστημα.

Περιλαμβάνει:

%TEMP%

C:\Windows\Temp

Prefetch

SoftwareDistribution\Download

Windows Logs

Αυτό βοηθάει σε:

✔ Ελευθέρωση χώρου
✔ Γρηγορότερη απόκριση
✔ Λύση προβλημάτων Windows Update
✔ Καθαρισμό μετά από εγκατάσταση drivers / apps


2️⃣ Clean Windows Update leftovers

Το Windows Update αφήνει πίσω GB άχρηστων αρχείων.

Αυτό το εργαλείο:

- Σταματά υπηρεσίες (wuauserv, bits)

- Διαγράφει όλο το SoftwareDistribution

- Το ξαναχτίζει καθαρό

- Επανεκκινεί υπηρεσίες

Ιδανικό για:

✔ Προβλήματα ενημερώσεων
✔ Error codes (0x8024…)
✔ “Checking for updates forever”
✔ Τεράστιο φάκελο WinSxS/Downloads

3️⃣ Clean Windows Error Reporting Dumps (WER)

Καθαρίζει:

- Crash dumps

- Error reports

- Diagnostic logs

Αυτά σωρεύονται μετά από:

✔ BSOD
✔ Crashes εφαρμογών
✔ Hardware instability

Κι όμως, τα Windows ΔΕΝ τα καθαρίζουν μόνα τους.

4️⃣ Clear Recycle Bin

Άδειασμα του κάδου ανακύκλωσης μέσω PowerShell (Clear-RecycleBin) για:

✔ Ελευθέρωση χώρου
✔ Σίγουρη διαγραφή αρχείων
✔ Γρήγορο cleanup

5️⃣ Disk Cleanup automation (cleanmgr)

Αυτόματη διαδικασία Disk Cleanup:

- Ανοίγει sageset (ρυθμίσεις)

- Μετά τρέχει sagerun (εκτέλεση)

Ιδανικό για:

✔ System error memory dumps
✔ Windows Defender leftovers
✔ Temporary installation files
✔ Delivery Optimization files

Και δουλεύει με ΔΙΚΕΣ σου επιλογές.

6️⃣ System File Checker — SFC /scannow

Τρέχει το κλασικό αλλά πάντα χρήσιμο:

sfc /scannow

Χρησιμοποιείται για επιδιόρθωση:

✔ Κατεστραμμένων system files
✔ DLL errors
✔ Προβλημάτων μετά από updates
✔ Corrupted permissions
✔ Ξαφνικών crashes

Το έχω ενσωματώσει μέσα στο System Cleaner ώστε όλα τα βασικά εργαλεία συντήρησης να βρίσκονται σε ένα κεντρικό σημείο.

Επιλογή 7 — Power Control
--------------------------
<img width="1537" height="944" alt="7  Power Control" src="https://github.com/user-attachments/assets/f8c692c0-40af-43ad-805a-c6dc19756826" />

✅ Τι είναι:

Ένα γρήγορο και απλό εργαλείο για να εκτελείς βασικές αλλά κρίσιμες εντολές τερματισμού/επανεκκίνησης/BIOS, χωρίς να χρειάζεται να γράφεις δυσνόητες εντολές ή να ψάχνεις στα Windows.

Το Power Control είναι μια minimal αλλά ισχυρή control panel λειτουργία.

🎯 Τι περιλαμβάνει:
1️⃣ Restart

Κάνει επανεκκίνηση άμεσα:

shutdown /r /t 0

Ιδανικό όταν:

✔ εγκαθίστανται drivers
✔ αλλάζονται ρυθμίσεις συστήματος
✔ ολοκληρώνονται tweaks από το Toolkit
✔ χρειάζεται ένα “fresh start” στα Windows

Πιο γρήγορο και άμεσο από το Start Menu → Restart.

2️⃣ Shut Down

Κλείνει πλήρως το σύστημα, χωρίς καθυστερήσεις:

shutdown /s /t 0

Ιδανικό όταν:

✔ τελείωσες όλο το setup μετά το format
✔ θέλεις καθαρό shut down χωρίς background delays
✔ θες να κλείσεις τον υπολογιστή άμεσα και με ασφάλεια

3️⃣ Reset PC to BIOS (UEFI)

Το highlight της επιλογής:

Αυτόματα επανεκκινεί και μπαίνει στο BIOS/UEFI χωρίς:

F2

F7

DEL

EXTREMELY FAST BOOT (που δεν προλαβαίνεις)

shutdown /r /fw /f /t 0

Τι κάνει:

✔ Τερματίζει εφαρμογές
✔ Επανεκκινεί
✔ Δίνει εντολή στο firmware να μπει σε BIOS μόνο του
✔ Εξαιρετικό για laptops που μπαίνουν δύσκολα σε BIOS
✔ Ιδανικό μετά από αλλαγή boot order, virtualization, TPM, secure boot κ.λπ.

Επιλογή 8 — Others
-------------------
✅ Τι είναι:

Είναι μια κατηγορία “εργαλειοθήκη μέσα στην εργαλειοθήκη”.
Συγκεντρώνει ειδικά εργαλεία που δεν ανήκουν στις βασικές κατηγορίες, αλλά είναι απολύτως χρήσιμα για maintenance, troubleshooting και καθαρισμό του συστήματος.

Είναι ένας χώρος όπου προσθέτεις ειδικές λειτουργίες, όπως εργαλεία για προγράμματα, resets, backups κ.λπ.
(Επίσης αυτός ο χώρος θα είναι διαθέσιμος σε όλους τους developers που θα ήθελαν να συνεισφέρουν ώστε το πρόγραμμα να αγγίξει την τελειότητα).

🎯 Τι περιλαμβάνει (μέχρι τώρα):
1️⃣ Edge Reset Toolkit

Η βασική δυνατότητα της επιλογής 8.

Ένα πλήρες, επαγγελματικό εργαλείο για:

✔ Full Reset του Microsoft Edge

Διαγράφει τα πάντα, συμπεριλαμβανομένων:

Προφίλ

Session data

Cookies

Cache

Saved passwords

Autofill

Extensions

Favorites

Sync data (αν γίνει Cloud Reset)

Το Edge γίνεται σαν να εγκαταστάθηκε μόλις τώρα.

✔ Safe Reset

Καθαρίζει Edge χωρίς να χάνονται Favorites:

Cache

Cookies

History

Passwords

Site settings

Local databases

Τέλειο για “καθάρισμα” χωρίς απώλειες κρίσιμων δεδομένων.

✔ Cloud Reset Launcher

Ανοίγει το επίσημο Microsoft Sync Reset URL:

Χρήσιμο όταν θέλεις να καθαρίσεις:

Cloud-synced data

Sync conflicts

Corrupted sync profiles

Αυτό λύνει προβλήματα που δεν λύνει ούτε το local reset.

✔ Backup System

Αυτόματη δημιουργία backup Edge profile:

Preferences

History

Bookmarks

Saved sessions

Autofill

Extensions

Cookies (αν δεν είναι encrypted)

Όλο τον φάκελο User Data\Default

Και το αποθηκεύει οργανωμένα με όνομα:

EdgeBackup_<email>

ή 

EdgeBackup_Generic

Αυτά μέχρι στιγμής...
Όποιος θέλει να συνεισφέρει μπορεί να μου στείλει το κώδικά του στο email μου  και θα αναφερθεί το όνομά του στην συνεισφορά!

Tool After Format (By geekfromgreece) - ReadME!

-------------------------------------------------------------------
🧰 Toolkit After Format — What it is and what it does (In English)
-------------------------------------------------------------------

The “Toolkit After Format (by geekfromgreece)” is a complete, automated tool for Windows, designed to perform all basic and advanced settings after a format, without the user needing to search, download, or run dozens of different scripts.

From the Main Menu, you can see that the program offers:

<img width="1535" height="936" alt="1  Main Menu" src="https://github.com/user-attachments/assets/d632bb5a-049c-469d-b029-2ed6d689832e" />

✔ 1. Admin Rights

Automatic check and elevation to administrator rights with secure UAC elevation.

✔ 2. Windows Activation Script

Activation tools for all Windows editions with the option of KMS or normal product key.

✔ 3. Export/Install Drivers

Export all system drivers + option to reinstall from backup.

✔ 4. Personalization

Change system name, themes, desktop icons, privacy, bloatware removal, power management, etc.

✔ 5. Internet Toolkit

WiFi tools, DNS presets, speedtest, network troubleshooting, browser cleanup.

✔ 6. System Cleaner

Cleaning of temp/log files, Windows Update leftovers, WER dumps, Disk Cleanup, SFC.

✔ 7. Power Control

Restart, shutdown, reboot to BIOS — all in one simple menu.

✔ 8. Others

Extra tools such as the Edge Reset Toolkit, backup & reset of Edge profiles.

Option 1 — Admin Rights
-----------------------
<img width="1526" height="949" alt="1  Admin Rights" src="https://github.com/user-attachments/assets/651870d7-57a0-44e6-877a-06ecea5462b5" />

This is a tool that checks and obtains administrator privileges within the Toolkit After Format.
Essentially, it is the “guardian” of the rest of the toolkit, because many functions cannot run without elevated privileges.

The Admin Rights option performs three main actions:

1️⃣ Checks if the user already has admin rights

If the user is already running the .BAT as Administrator, the script displays the message:
“Command cannot proceed user have already admin rights”

Meaning elevation is not needed again.

2️⃣ If not admin, it requests UAC Elevation (Run as Administrator)

The script creates a temporary .vbs file that runs:

cmd.exe /c <the script> as runas

Thus, the classic Windows UAC popup appears:
👉 “Do you want to allow this app to make changes to your device?”

3️⃣ After the process is complete, it returns you back to the menu

At the end it displays:
Press “R” to return to Main Menu
And you go back to the main interface.

Option 2 — Windows Activation Script
------------------------------------
<img width="1524" height="936" alt="2  Windows Activation Script" src="https://github.com/user-attachments/assets/3aa68fbd-f6dc-473e-a563-ba3f7fde9dfc" />

This is a complete, organized activation toolkit that allows you to activate all versions of Windows, from Windows Vista up to Windows 11, using legal generic (GVLK) license keys and KMS activation servers.

In simple terms:
➡️ It is the “activation center” of the Toolkit.

The Windows Activation Script option offers:

1️⃣ Before doing anything, the script checks if it is running with admin rights — required for activation.
If it does not have admin rights → it displays a message and returns to the Main Menu.

2️⃣ It shows you a submenu with all Windows editions

You can choose which OS you want to activate:

Windows 11 / 10 (Semi‐Annual Channel)

Windows 10 LTSC / LTSB

Windows 8.1

Windows 8

Windows 7

Windows Vista

Additional options:

License Details

Activate License from Original Product Key (OA3 BIOS Key)

Each category has its own activation keys.

3️⃣ The script automatically inserts the correct GVLK key

Depending on your selection, it runs:

slmgr /ipk <recommended key>
slmgr /skms <kms server>
slmgr /ato

That means:

It assigns the correct product key (GVLK key)

Connects to a trusted KMS server

Activates your Windows

4️⃣ It displays license details

From the License Tools menu, you can view:

The Original BIOS Product Key

The current license

Detailed activation info

KMS expiration date

etc.

Option 3 — Export / Install Drivers Toolkit
-------------------------------------------
<img width="1521" height="934" alt="3  ExportInstall Drivers" src="https://github.com/user-attachments/assets/8b8f42b3-73b8-4d31-9384-2de1c5979f6a" />

A full, automated tool for:

Exporting all drivers from a computer

Reinstalling drivers from a previous export

It is one of the most essential tools in every post‐format Toolkit (and also before formatting).

With this option you can:

• Backup all drivers

Before a format — or on a correctly configured PC — you can export ALL drivers into a folder:

<PCNAME>_Drivers

Example:
➡️ DESKTOP-123456_Drivers

So you don't need to search for drivers after the format.

• Reinstall all drivers in one click

After the format:

The script scans the folder → finds all available driver folders
Shows the .INF files
Runs automatic installation using pnputil

This means:

✔ All drivers install properly
✔ Without setup exe
✔ Without wrong versions
✔ Without manually downloading from the Internet

🔧 How Option 3 works

The menu offers two choices:

1️⃣ Export Drivers

The script:

Detects the computer name

Creates folder <PCNAME>_Drivers

Executes:
pnputil /export-driver * "<Folder>"

Shows success message or message that the folder already exists

Clean, proper driver export.

2️⃣ Install Drivers

The script:

Scans all folders ending in _Drivers

Shows a numbered list

Allows preview of .INF files

Asks for confirmation

Runs:
pnputil /add-driver "<Folder>*.inf" /subdirs /install

Safe → Installs only INF drivers (not .exe).

Option 4 — Personalization
---------------------------
<img width="1512" height="928" alt="4  Personalization" src="https://github.com/user-attachments/assets/61334273-23c1-48ac-ad8b-5550c1591c84" />

A complete customization center containing appearance, usability, and functionality settings of Windows.
It gathers 8 different categories that normally you would perform manually from 5–6 different locations in Windows.

With option 4, the user gets OEM-level profile customization — with two clicks.

🎯 What it includes:

1️⃣ Set System Product Name
Changes computer name via PowerShell (Rename-Computer).

2️⃣ Toggle Light/Dark Theme
Uses registry values and restarts Explorer for instant effect.

3️⃣ Enable / Disable Desktop Icons
Manages all 5 system desktop icons and refreshes Explorer.

4️⃣ File Explorer Privacy Toggle
Enables/disables recent items, clears history, restarts Explorer.

5️⃣ Pin Recycle Bin to Quick Access
Uses Shell COM object to pin Recycle Bin.

6️⃣ Toggle Start Menu Web Search
Enables or disables Bing online search.

7️⃣ Bloatware Apps (Remove/Restore)
Advanced PowerShell-based subsystem for removing or restoring apps.

8️⃣ Power Management Center
Offers Balanced, High performance, Power saver, TurboMode, DevMode, and restore defaults.

Option 5 — Internet Toolkit
---------------------------
<img width="1523" height="942" alt="5  Internet Toolkit" src="https://github.com/user-attachments/assets/c26dc380-4a7a-456a-8309-f1fa890f0400" />

✅ What it is:

A complete networking toolkit built for troubleshooting, Wi-Fi management, DNS management, speed diagnostics, and browser maintenance — all in one location, with your custom “Toolkit style”.

🎯 What it includes:

1️⃣ Connect to Internet
Export Wi-Fi profile
Import & connect using XML profiles

2️⃣ Connect to DNS
DNS switcher with presets:
Shecan, Electro, Begzar, Google, Cloudflare, AdGuard, Reset (DHCP), Check DNS.

3️⃣ Speedtest
Runs speedtest.exe and parses JSON output.

4️⃣ Network Troubleshooting
Flush DNS, display DNS, ARP, interfaces, reset TCP/IP v4/v6, reset Winsock, restart Wi-Fi adapter, full repair.

5️⃣ Browser Data Cleanup
Cleanup & temp folder inspection.

6️⃣ Browser Extension Management
Ready for future extension management system.

Option 6 — System Cleaner
-------------------------
<img width="1527" height="939" alt="6  System Cleaner" src="https://github.com/user-attachments/assets/87ca5f6c-29ae-447e-a424-4679c6f32af6" />

A complete system cleanup tool designed to remove all unnecessary, problematic, and accumulated files that slow down Windows after updates, installations, or daily use.
Essentially, it works as a mini CCleaner but:

✔ No installation
✔ No ads
✔ Faster
✔ More “technical”
✔ Fully automated
✔ 100% safe

🎯 What it includes:

1️⃣ Clear Temporary Files
Cleans all system temp folders, Prefetch, SoftwareDistribution, and logs.

2️⃣ Clean Windows Update leftovers
Stops services, deletes SoftwareDistribution, rebuilds it, restarts services.

3️⃣ Clean Windows Error Reporting dumps
Removes crash dumps and diagnostic logs.

4️⃣ Clear Recycle Bin
Uses PowerShell Clear-RecycleBin.

5️⃣ Disk Cleanup automation (cleanmgr)
Runs sageset/sagerun for deep cleanup.

6️⃣ System File Checker (SFC)
Runs sfc /scannow for system file repair.

Option 7 — Power Control
------------------------
<img width="1537" height="944" alt="7  Power Control" src="https://github.com/user-attachments/assets/b2ad8f15-9446-447e-9a62-3665d9b8bebe" />

A fast and simple tool to perform essential shutdown/restart/BIOS entry commands without typing commands or navigating Windows settings.

🎯 What it includes:

1️⃣ Restart
shutdown /r /t 0

2️⃣ Shut Down
shutdown /s /t 0

3️⃣ Reset PC to BIOS (UEFI)
shutdown /r /fw /f /t 0
Automatically enters BIOS — ideal for fast boot systems or laptops.

Option 8 — Others
-----------------
✅ What it is:

A category that acts as a “toolbox inside the toolbox”.
It collects special-purpose tools that do not belong to the main categories but are extremely useful for maintenance, troubleshooting, and cleaning the system.

🎯 What it currently includes:

1️⃣ Edge Reset Toolkit

A complete professional tool for:

✔ Full Reset of Microsoft Edge
Deletes everything including:
Profiles, cache, cookies, passwords, extensions, favorites, sync data, etc.

✔ Safe Reset
Cleans Edge without deleting Favorites.

✔ Cloud Reset Launcher
Opens the official Microsoft Sync Reset URL.

✔ Backup System
Automatically creates a backup of the Edge profile and saves it as:

EdgeBackup_<email>
or
EdgeBackup_Generic

If someone wishes to contribute, they can send me their code at my email, and their name will be included in the credits!

