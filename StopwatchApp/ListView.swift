//
//  ListView.swift
//  StopwatchApp
//
//  Created by Isaad Khan on 2022-11-17.
//

import SwiftUI

struct ListView: View {
    let labelColor: Color
    let label: String
    
    var body: some View {
        
        
        
        HStack{
            
            Text(label)
                .foregroundColor(labelColor)
            
            
                Spacer()
            
            Text(label)
                .foregroundColor(labelColor)
            
            
            
            
        }
        
        
        
        
        
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(labelColor: .white, label: "00.00.00")
    }
}
