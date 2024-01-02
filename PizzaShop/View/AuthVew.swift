//
//  ContentView.swift
//  PizzaShop
//
//  Created by пользователь on 27.12.2023.
//

import SwiftUI

struct AuthVew: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isAuth = true
    @State private var confirmPassword = ""
    @State private var isTabViewShow = false
    var body: some View {
        VStack(spacing: 40) {
            Text(isAuth ? "Авторизация" : "Регистрация")
                .padding(isAuth ? 16: 24)
                .padding(.horizontal,30)
                .font(.title2.bold())
                .background(Color("whiteAlpha"))
                .cornerRadius(isAuth ? 30 : 60)
                .foregroundColor(.black)
            VStack {
                TextField("Введите Email", text: $email)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal,12)
                SecureField("Введите пароль", text: $password)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal,12)
                if !isAuth {
                    SecureField("Повторите пароль", text: $confirmPassword)
                        .padding()
                        .background(Color("whiteAlpha"))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal,12)
                }
                Button(action: {
                    if isAuth {
                        print("Авторизация пользователя через FireBase")
                        isTabViewShow.toggle()
                    } else {
                        print("Регистрация пользователя")
                        self.email = ""
                        self.password = ""
                        self.confirmPassword = ""
                        self.isAuth.toggle()
                    }
                }, label: {
                    Text(isAuth ? "Войти" : "Регистрация")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color("yallow"), Color("orange")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal,12)
                        .font(.title3.bold())
                        .foregroundColor(.black)
                })
                Button(action: {
                    isAuth.toggle()
                }, label: {
                    Text(isAuth ? "Еще не с нами?" : "Уже есть аккаунт!")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color("yallow"), Color("orange")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal,12)
                        .font(.title3.bold())
                        .foregroundColor(.black)
                })
            }
            .padding(isAuth ? 16: 0)
        } .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("bg").ignoresSafeArea().blur(radius: isAuth ? 0: 3))
            .animation(Animation.easeInOut(duration: 0.3),value: isAuth)
            .fullScreenCover(isPresented: $isTabViewShow, content: {
                MainTabBar()
            })
    }
}

#Preview {
    AuthVew()
}
