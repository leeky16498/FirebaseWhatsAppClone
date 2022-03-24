//
//  SettingHeaderView.swift
//  FirebaseWhatsAppClone
//
//  Created by Kyungyun Lee on 24/03/2022.
//

import SwiftUI

struct SettingHeaderView: View {

    
    var body: some View {
        VStack(spacing: 32) {
            HStack{
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .frame(width : 64, height : 64)
                    .clipShape(Circle())
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                    Text("Kyungyun Lee")
                        .font(.headline)
                    Text("Available")
                        .foregroundColor(.gray)
                        .font(.footnote)
                }
                Spacer()
            }
            .frame(height : 80)
            .background(.white)
        }
    }
}

//struct SettingHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingHeaderView()
//    }
//}
