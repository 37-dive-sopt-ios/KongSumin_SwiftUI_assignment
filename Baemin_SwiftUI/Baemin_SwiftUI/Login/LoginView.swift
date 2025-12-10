//
//  LoginView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/8/25.
//

import SwiftUI


enum Route: Hashable{
    case welcome(email: String)
    case home
}

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var path: [Route] = []
    
    
    var isFormValid: Bool {
        Validator.isValidEmail(email) && Validator.isValidPassword(password)
    }
    
    var body: some View {
        NavigationStack(path: $path){
            VStack{
                HStack(alignment: .top){
                    Button {
                        print("뒤로가기")
                    } label: {
                        Image("ArrowLeft")
                    }
                    Spacer()
                    Text("이메일 또는 아이디로 계속")
                        .applyFont(style: .title_sb_18)
                        .padding(.top,12)
                    Spacer()
                    Button {
                    } label: {
                        Image("ArrowLeft")
                    }
                    .padding(.leading,18)
                    .opacity(0)
                }
                .padding(8)
                TextField("이메일 또는 아이디", text: $email)
                    .applyFont(style: .body_r_14)
                    .frame(height: 46)
                    .padding([.leading,.trailing],16)
                    .cornerRadius(4)
                    .foregroundStyle(.baeminGray700)
                    .border(.baeminGray200, width: 1)
                    .padding(.top, 24)
                SecureField("비밀번호", text: $password)
                    .applyFont(style: .body_r_14)
                    .frame(height: 46)
                    .padding([.leading,.trailing],16)
                    .cornerRadius(4)
                    .foregroundStyle(.baeminGray700)
                    .border(.baeminGray200, width: 1)
                    .padding(.top, 12)
                
                Button{
                    path.append(.welcome(email: email))
                } label: {
                    Text("로그인")
                        .applyFont(style: .head_b_18)
                        .foregroundStyle(.baeminWhite)
                        .frame(maxWidth: .infinity, maxHeight: 46)
                        .background(isFormValid ? .baeminMint500 : .baeminGray200)
                        .cornerRadius(4)
                        .padding(.top, 20)
                }
                .disabled(!isFormValid)
                
                Button{ } label: {
                    HStack{
                        Text("계정 찾기")
                            .applyFont(style: .body_r_14)
                            .foregroundStyle(.baeminBlack)
                        Image("ChevronRight")
                    }
                    .padding(.top, 20)
                }
                
                Spacer()
            }
            .padding(10)
            .onAppear{
                email = ""
                password = ""
            }
            .navigationDestination(for: Route.self){
                route in
                switch route {
                case .welcome(email: let email):
                    WelcomeView(path: $path, email: email)
                case .home:
//                    HomeView()
                    MainTabView()
                }
            }
        }
    }
}
        

#Preview {
    LoginView()
}
