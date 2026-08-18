import SwiftUI
import AppKit

@main
struct KittenWareApp: App {
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }

    init() {
        DispatchQueue.main.async {
            KittenSpawner.shared.spawnKittenWindow()
        }
    }
}

class KittenSpawner: NSObject {
    static let shared = KittenSpawner()

    // The 5 rotating messages (updated)
    let messages = [
        "Buy InsertVictimNameHere a kitten for his/her InsertCauseHere!",
        "InsertVictimNameHere really really really wants one!",
        "He/She promises to take care of it!",
        "You Can Insert Another Reason For A Kitten Here If You Want",
        "You better get her a kitten, pal, or more malware is coming."
    ]

    // Tracks which message is shown
    var messageIndex = 0

    func spawnKittenWindow() {
        let window = NSWindow(
            contentRect: NSRect(
                x: Int.random(in: 50...900),
                y: Int.random(in: 50...900),
                width: 450,
                height: 240
            ),
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: false
        )

        window.title = "ADOPT A KITTEN! 🐈‍⬛🐱"

        // OK button
        let button = NSButton(title: "OK", target: self, action: #selector(okPressed(_:)))
        button.frame = NSRect(x: 185, y: 20, width: 80, height: 30)

        // Wrapped message label
        let label = NSTextField()
        label.stringValue = messages[messageIndex]
        label.isEditable = false
        label.isBordered = false
        label.drawsBackground = false
        label.lineBreakMode = .byWordWrapping
        label.usesSingleLineMode = false
        label.alignment = .center
        label.font = NSFont.systemFont(ofSize: 14)
        label.frame = NSRect(x: 20, y: 70, width: 410, height: 80)

        // Advance to next message (looping)
        messageIndex = (messageIndex + 1) % messages.count

        // Content view
        let view = NSView(frame: NSRect(x: 0, y: 0, width: 450, height: 240))
        view.addSubview(button)
        view.addSubview(label)

        window.contentView = view
        window.makeKeyAndOrderFront(nil)
    }

    @objc func okPressed(_ sender: Any?) {
        spawnKittenWindow()
    }
}
