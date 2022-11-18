//
//  ListView.swift
//  StopwatchApp
//
//  Created by Isaad Khan on 2022-11-17.
//

import SwiftUI

struct ListView: View {
    let labelColor: Color
    let label1: String
    let label2: String
    
    var body: some View {
        
        
        
        HStack{
            
            Text(label1)
                .foregroundColor(labelColor)
            
            
                Spacer()
            
            Text(label2)
                .foregroundColor(labelColor)
            
            
            
            
        }
        
        
        
        
        
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(labelColor: .green, label1: "Lap 1", label2: "00.00.00")
    }
}
