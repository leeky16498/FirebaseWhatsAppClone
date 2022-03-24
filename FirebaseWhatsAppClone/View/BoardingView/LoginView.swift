//
//  LoginView.swift
//  FirebaseWhatsAppClone
//
//  Created by Kyungyun Lee on 24/03/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email : String = ""
    @State private var password : String = ""
    
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
                            Image(systemName: "lock")
                                .foregroundColor(.gray)
                            SecureField("PassWord", text: $password)
                        }
                        Divider()
                    }
                    .padding([.top, .horizontal], 32)
                    
                    HStack {
                        Spacer()
                        NavigationLink(destination: {
                            
                        }, label: {
                            Text("Forgot your password?")
                                .font(.headline)
                        })
                    }
                    .padding()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Sign In")
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
                        RegistrationView()
                    }, label: {
                        HStack(alignment: .center) {
                            Text("Don't have your account?")
                            Text("Sign up")
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
