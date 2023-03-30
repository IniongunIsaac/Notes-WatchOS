//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Isaac Iniongun on 30/03/2023.
//

import SwiftUI

struct DetailView: View {
    
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isCreditsPresented: Bool = false
    @State private var isSettingsPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            //Header
            HeaderView(title: "")
            
            //Content
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            //Footer
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
//                    .sheet(isPresented: $isSettingsPresented, content: {
//                        SettingsView()
//                    })
                
                Spacer()
                
                Text("\(index + 1) / \(count)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
//                    .sheet(isPresented: $isCreditsPresented, content: {
//                        CreditsView()
//                    })
            } //: HSTACK
            .foregroundColor(.secondary)
            
        } //: VStack
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var sampleData: Note = Note(id: UUID(), text: "Hello, World!")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
