# TalkyVerse 📹

TalkyVerse is a simple yet powerful cross-platform video calling application built with Flutter. Powered by **ZEGOCLOUD Express Video SDK**, it allows users to quickly jump into high-quality video calls simply by entering a Meeting ID.

---

## ✨ Features

* **Instant Meeting Join:** Enter a **Meeting ID** on the Home Screen and tap **Join Call** to instantly connect.
* **Real-time Video Calling:** High-definition, low-latency video and audio powered by ZEGOCLOUD.
* **In-Call Controls:** Flexible active-call interface with essential features:
  * Toggle Camera On/Off
  * Mute/Unmute Microphone
  * Switch Front/Rear Camera
  * End Call / Hang Up


---

## 🛠️ Tech Stack

* **Framework:** Flutter (Dart)
* **Video Communication Engine:** [ZEGOCLOUD Express Video SDK](https://www.zegocloud.com/) (`zego_express_engine`)
* **Permissions Handling:** `permission_handler` for managing Camera and Microphone access.

---

## 📁 Project Structure

The project features a straightforward and clean structure:

```text
lib/
├── main.dart          # Entry point of the app & initial configuration
├── main_screen.dart   # Home screen to type Meeting ID & press 'Join Call'
├── call_screen.dart   # Active Video Call screen showing real-time video stream
└── secret.dart        # Configuration file storing ZEGOCLOUD AppID and AppSign
