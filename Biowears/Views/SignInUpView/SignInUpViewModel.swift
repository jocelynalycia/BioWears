import Foundation
import SwiftUI

class SignInUpViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var emailText: String = ""
    @Published var isValidEmailText: Bool = true
}
