//
//  SettingCell.swift
//  FirebaseWhatsAppClone
//
//  Created by Kyungyun Lee on 24/03/2022.
//

import SwiftUI

struct SettingCell: View {
    
    let viewModel : SettingsCellViewModel
    
    var body: some View {
        VStack {
            HStack {
                //image
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width : 22, height : 22)
                    .padding(6)
                    .background(viewModel.backgroundColor)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                //name
                Text(viewModel.title)
                    .font(.headline)
                Spacer()
                //arrow
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                    .padding(.horizontal)
            }
            .padding(.horizontal)
            Divider()
        }
    }
}

//struct SettingCell_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingCell()
//    }
//}
