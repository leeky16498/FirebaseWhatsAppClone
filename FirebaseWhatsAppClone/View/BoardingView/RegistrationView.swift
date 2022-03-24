//
//  RegistrationView.swift
//  FirebaseWhatsAppClone
//
//  Created by Kyungyun Lee on 24/03/2022.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email : String = ""
    @State private var password : String = ""
    @State private var fullname : String = ""
    @State private var username : String = ""
    
    var body: some View {
        NavigationView {
            HStack {
                    VStack(alignment: .leading) {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                            .font(.largeTitle)
                            .bold()
                        Text("Welcome back.")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.blue)
                        
                        VStack(spacing: 20) {
                            HStack {
                                Image(systemName: "envelope")
                                    .foregroundColor(.gray)
                                TextField("Email", text: $email)
                            }
                            
                            Divider()
                            
                            HStack {
                                Image(systemName: "person.fill")
                                    .foregroundColor(.gray)
                                SecureField("Username", text: $fullname)
                            }
                            
                            Divider()
                            
                            HStack {
                                Image(systemName: "checkmark.circle")
                                    .foregroundColor(.gray)
                                SecureField("Nickname", text: $username)
                            }
                            Divider()
                            
                            HStack {
                                Image(systemName: "lock")
                                    .foregroundColor(.gray)
                                SecureField("PassWord", text: $password)
                            }
                            Divider()
                        }
                        .padding([.top, .horizontal], 32)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Sign up")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width :340, height : 50)
                                .background(.blue)
                                .cornerRadius(20)
                                .shadow(radius: 10)
                        })
                        .padding(.top, 40)
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            LoginView()
                        }, label: {
                            HStack(alignment: .center) {
                                Text("Do you have account?")
                                Text("Sign In")
                                    .font(.headline)
                            }
                            .frame(maxWidth : .infinity)
                        })
                        .padding()
                        
                    }
                    .padding()
                    Spacer()
                }
            .padding(.top, -56)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
