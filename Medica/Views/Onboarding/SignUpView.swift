//
//  SignUpView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 23/08/2025.
//

import SwiftUI

struct SignUpView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            ScrollView (showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    Text("Full Name")
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                        .font(.title2)
                    
                    Spacer(minLength: 18)
                    
                    InputField(textFIeldValue: $email, placeholderText: "Enter Your Full Name", keyboardType: .emailAddress)
                    
                    Spacer(minLength: 26)
                    
                    Text("Phone Number")
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                        .font(.title2)
                    
                    Spacer(minLength: 18)
                    
                    InputField(textFIeldValue: $email, placeholderText: "Enter Your Phone Number", keyboardType: .phonePad)
                    
                    Spacer(minLength: 26)
                
                    Text("Email")
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                        .font(.title2)
                    
                    Spacer(minLength: 18)
                    
                    InputField(textFIeldValue: $email, placeholderText: "Enter Your Email", keyboardType: .emailAddress)
                    
                    Spacer(minLength: 26)
                    Text("Password")
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                        .font(.title2)
                    
                    Spacer(minLength: 18)
                                        
                    AnimatedSecureTextField(text: $password, titleKey: "Enter Your Password")
                    
                    Spacer(minLength: 75)
                    
                    PrimaryButton(label: "Sign Up") {
                        
                    }
                    
                    Spacer(minLength: 29)
                    
                    Text("OR")
                        .foregroundStyle(.colorGray)
                        .fontWeight(.semibold)
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                    
                    Spacer(minLength: 19)
                    
                    HStack (alignment: .center, spacing: 30) {
                        Spacer()
                        Button {
                            
                        } label: {
                            LogoWIthBorder(logoName: "facebook")
                        }
                        
                        Button {
                            
                        } label: {
                            LogoWIthBorder(logoName: "google")
                        }
                        
                        Spacer()

                    }
                    
                    Spacer(minLength: 19)
                    
                    HStack (alignment: .center) {
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            HStack {
                                Text("Already have an account?")
                                    .foregroundColor(.colorGray)
                                    .fontWeight(.semibold)
                                Text("Sign In")
                                    .foregroundColor(.colorPrimary)
                                    .fontWeight(.semibold)
                            }
                        }
                        
                        Spacer()

                    }

                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    SignUpView()
}
