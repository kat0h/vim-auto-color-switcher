// reference : https://stackoverflow.com/questions/59277634/
import Foundation
import Cocoa
import Darwin.C

class ObserveColorMode {
    func observe() {
        DistributedNotificationCenter.default.addObserver(
            forName: Notification.Name("AppleInterfaceThemeChangedNotification"),
            object: nil,
            queue: nil,
            using: self.interfaceModeChanged
        )
    }
    func interfaceModeChanged(_ notification: Notification) {
        print(UserDefaults.standard.string(forKey: "AppleInterfaceStyle") ?? "Light")
        fflush(stdout)
    }
}

let app = NSApplication.shared
let observer = ObserveColorMode.init()
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        observer.observe()
    }
}

print(UserDefaults.standard.string(forKey: "AppleInterfaceStyle") ?? "Light")
fflush(stdout)
let delegate = AppDelegate()
app.delegate = delegate
app.run()

