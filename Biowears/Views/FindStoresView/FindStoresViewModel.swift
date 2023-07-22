import Foundation
import SwiftUI

class FindStoresViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var languageText: String = ""
}
