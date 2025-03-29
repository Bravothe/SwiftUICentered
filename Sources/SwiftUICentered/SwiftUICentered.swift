import SwiftUI

public struct SwiftUIPaymentSDK {
    public init() {}
    
    // Hardcoded user details
    private let storedUsername = "john_doe"
    private let storedUserID = "12345"
    private var userBalance: Double = 100.0 // Example: user has a balance of $100
    
    // Hardcoded purchase details (this will come from the project)
    public var purchaserUsername: String = ""
    public var purchaserID: String = ""
    public var itemsPurchased: [String] = []
    public var totalAmount: Double = 0.0
    public var paymentPin: String = "1234" // Hardcoded payment PIN for simplicity

    // Check if the username and ID match
    public func checkUserDetails() -> Bool {
        return purchaserUsername == storedUsername && purchaserID == storedUserID
    }
    
    // Function to check payment PIN
    public func validatePayment(pin: String) -> Bool {
        return pin == paymentPin // For simplicity, let's assume we verify the PIN here
    }
    
    // Calculate total amount after charges
    public func getTotalAmount() -> Double {
        // Assuming there's a fee (e.g., 2%) for the payment
        let fee = totalAmount * 0.02
        return totalAmount + fee
    }
    
    // Simulate a payment transaction
    public mutating func processPayment(pin: String) -> String {
        if !checkUserDetails() {
            return "Please sign in to proceed"
        }
        
        // Check if the balance is sufficient
        if userBalance < getTotalAmount() {
            return "Insufficient Funds"
        }
        
        // Validate the PIN
        if !validatePayment(pin: pin) {
            return "Transaction Failed"
        }
        
        // Deduct the amount from the user balance
        userBalance -= getTotalAmount()
        return "Payment Made Successfully"
    }
}
