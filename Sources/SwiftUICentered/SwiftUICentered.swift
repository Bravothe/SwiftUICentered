import SwiftUI

public struct SwiftUICentered {
    public init() {}

    public func getAlertTitle(for step: Int) -> String {
        switch step {
        case 1: return "Welcome"
        case 2: return "Your Name"
        case 3: return "Final Message"
        default: return ""
        }
    }

    public func getAlertMessage(for step: Int) -> String {
        switch step {
        case 1: return "Welcome! Please click Next to see your name."
        case 2: return "Your name is Thembo Allan."
        case 3: return "Thank you! You have successfully checked your name."
        default: return ""
        }
    }

    public func getButtonText(for step: Int) -> String {
        return step < 3 ? "Next" : "Finish"
    }
}
