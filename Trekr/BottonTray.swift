//
//  BottonTray.swift
//  Trekr
//
//  Created by Abdihakin Elmi on 1/15/21.
//

import SwiftUI

struct BottonTray: View {
    
    let selectedCountry: Location?
    let isScrollIsDisabled = true
    
    var body: some View {
        ZStack {
            if selectedCountry != nil {
                VStack(spacing: 0){
                    Rectangle().fill(Color.gray.opacity(0.4))
                        .frame(width: 40, height: 4, alignment: .center)
                        .cornerRadius(4)
                    
                    Text(selectedCountry?.name ?? "")
                        .font(.system(size: 30, weight: .semibold))
                    Text(selectedCountry?.country ?? "")
                        .foregroundColor(Color(.secondaryLabel))
                    Divider()
                    
                    ScrollView(showsIndicators: false){
                        Text(selectedCountry?.description ?? "")
                            .padding()
                        Text("Did you Know?").bold()
                        Text(selectedCountry?.more ?? "")
                            .padding(.horizontal)
                    }.disabled(isScrollIsDisabled)
                }
            }
        }.background(Color.white)
        .foregroundColor(Color(.black))
        .multilineTextAlignment(.leading)
    }
}

struct BottonTray_Previews: PreviewProvider {
    static var previews: some View {
        BottonTray(selectedCountry: Location.example)
    }
}
