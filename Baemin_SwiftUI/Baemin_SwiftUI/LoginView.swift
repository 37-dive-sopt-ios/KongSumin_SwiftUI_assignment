//
//  LoginView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/8/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
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
            
            Button{ } label: {
                Text("로그인")
                    .applyFont(style: .head_b_18)
                    .foregroundStyle(.baeminWhite)
                    .frame(maxWidth: .infinity, maxHeight: 46)
                    .background(.baeminGray200)
                    .cornerRadius(4)
                    .padding(.top, 20)
            }
            Button{ } label: {
                HStack{
                    Text("계정 찾기")
                        .applyFont(style: .body_r_14)
                        .foregroundStyle(.baeminBlack)
                    Image("ChevronRight")
                }
                .padding(.top, 20)
            }
        }
        .padding(10)
        Spacer()
    }
}
        

#Preview {
    LoginView()
}
