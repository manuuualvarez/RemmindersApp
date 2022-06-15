//
//  Constant.swift
//  MyTaskManager
//
//  Created by Manny Alvarez on 10/06/2022.
//

import Foundation
import SwiftUI


//    MARK: - Formater Date

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()


//    MARK: - UI
var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

//    MARK: - UX
let feedBack = UINotificationFeedbackGenerator()
