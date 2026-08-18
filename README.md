KittenWare 🐈 — A Harmless macOS Popup Prank App
KittenWare is a tiny macOS prank application that spawns endless popup windows encouraging someone to buy a kitten.
This GitHub edition includes both the source code and a prebuilt KittenWare.app so anyone can run it instantly without compiling.

The app is fully customizable: you can insert any “victim” name and any “cause” you want, making it a reusable persuasion tool for friends, family, coworkers, or anyone who needs a little feline‑themed encouragement.

🐾 Features
Infinite popup windows

Random window positions

Five rotating customizable messages

Fully harmless (no real malware — just comedy)

Includes a ready‑to‑run .app bundle

Easy to modify for any “victim” and any “cause”

📝 Default GitHub Messages
The GitHub version uses placeholders so anyone can adapt the app:

Buy InsertVictimNameHere a kitten for his/her InsertCauseHere!

InsertVictimNameHere really really really wants one!

He/She promises to take care of it!

You Can Insert Another Reason For A Kitten Here If You Want

You better get her a kitten, pal, or more malware is coming.

These can be edited directly in the messages array inside KittenSpawner.swift.

🧠 How It Works
KittenWare uses a singleton class (KittenSpawner) to spawn windows.
Each time the user clicks OK, the app:

Creates a new NSWindow

Displays the next message in the sequence

Wraps long text so nothing gets cut off

Advances the message index

Loops back to message #1 after message #5

The app launches by spawning the first window automatically.

📦 Included Files
KittenWare.app — ready‑to‑run macOS application

Source Code — Swift files for editing or customizing

README.md — this file

You may need to right‑click → Open the .app due to macOS Gatekeeper.

▶️ Running the App
Option A — Run the included KittenWare.app
Download or clone the repo

Open the folder

Right‑click KittenWare.app → Open

Enjoy the chaos

Option B — Build from source
Open the project in Xcode

Build and run

Watch the kitten‑themed popups appear

Quit the app to close all windows instantly.

🎨 Customization
To customize the messages:

Open KittenSpawner.swift

Edit the messages array

Replace placeholder text with your own persuasion lines

You can also modify:

Window size

Font

Colors

Number of messages

Popup behavior

🐈 Why This Exists
The original version was created to help convince a friend’s dad to buy his daughter a kitten.
The GitHub version generalizes the idea so anyone can use it to convince their target.

📄 License
This project is provided as‑is for educational and comedic purposes.
