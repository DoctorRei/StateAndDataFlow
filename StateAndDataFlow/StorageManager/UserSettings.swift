//
//  UserSettings.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import Foundation
import SwiftUI

final class UserSettings: ObservableObject {
    @Published var isLoggedIn = false
    @AppStorage("username") var username: String = ""
}
