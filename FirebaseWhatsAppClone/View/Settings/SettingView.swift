//
//  SettingView.swift
//  FirebaseWhatsAppClone
//
//  Created by Kyungyun Lee on 24/03/2022.
//

import SwiftUI

struct SettingView: View {
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                SettingHeaderView()
                
                VStack {
                    ForEach(SettingsCellViewModel.allCases, id: \.self) { vm in
                        SettingCell(viewModel: vm)
                    }
                }
                .background(.white)
                
                Button(action: {
                    
                }, label: {
                    Text("Log out")
                        .font(.headline)
                        .foregroundColor(.red)
                })
                
                Spacer()
                    
            }
            
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}


