//
//  CounterView.swift
//  eleos_L
//
//  Created by Razan Raid on 02/10/2023.
//

import SwiftUI

struct CounterView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 90,height: 50)
                .cornerRadius(6)
            .foregroundColor(Color("bg"))
            HStack{
                Image("drops")
                    .resizable()
                .frame(width: 40,height: 40)
                Text("0")
            }
            
        }
        
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
