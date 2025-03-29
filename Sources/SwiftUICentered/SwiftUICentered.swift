import SwiftUI

public struct SwiftUICentered {
    public init() {}

    public func getAlertTitle(for step: Int) -> String {
        return "EVzone Africa"
    }

    public func getAlertMessage(for step: Int) -> String {
        // Consistent message structure with warning tone
        switch step {
        case 1: return "Caution: Please proceed to verify your details. Click Next to continue."
        case 2: return "Attention: Your name is recorded as Thembo Allan. Confirm by proceeding."
        case 3: return "Notice: You have completed the process. Thank you for your attention."
        default: return "Error: Invalid step detected."
        }
    }

    public func getButtonText(for step: Int) -> String {
        // Uniform button text logic
        return step < 3 ? "Next" : "Finish"
    }
}
