//
//  Note.swift
//  Notes Watch App
//
//  Created by Isaac Iniongun on 29/03/2023.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
