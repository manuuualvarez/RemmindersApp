//
//  ListRowItemView.swift
//  MyTaskManager
//
//  Created by Manny Alvarez on 11/06/2022.
//

import SwiftUI

struct ListRowItemView: View {
    // MARK: - Properties
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item

    // MARK: - Body
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(item.completion ? .heavy : .regular)
                .foregroundColor(item.completion ? Color.pink : Color.gray)
                .padding(.vertical, 12)
                .animation(.default)
        }//:Toggle
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange) { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        }
    }
}

