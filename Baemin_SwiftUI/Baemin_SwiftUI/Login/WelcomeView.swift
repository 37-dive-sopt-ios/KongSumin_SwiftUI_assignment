//
//  WelcomeView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/9/25.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var path: [Route]
    var email: String
        
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Button {
                    path.removeLast()
                } label: {
                    Image("ArrowLeft")
                }
                Spacer()
                Text("대체 뼈찜 누가 시켰어??")
                    .applyFont(style: .title_sb_18)
                    .padding(.top,12)
                Spacer()
                Button {} label: {
                    Image("ArrowLeft")
                }
                .padding(.leading,18)
                .opacity(0)
            }
            .padding(8)
            
            Image("baemin")
            
            Text("환영합니다.")
                .applyFont(style: .head_b_24)
                .padding(.top, 24)
            Text("\(email)님 반가워요!")
                .padding(.top, 16)
            
            Spacer()
            Button{
                path.append(.home)
            } label: {
                Text("메인으로")
                    .applyFont(style: .head_b_18)
                    .foregroundStyle(.baeminWhite)
                    .frame(maxWidth: .infinity, maxHeight: 52)
                    .background(.baeminMint500)
                    .cornerRadius(4)
                    .padding(.top, 20)
            }
            .padding([.leading,.trailing], 16)
            .padding(.bottom, 48)
            
        }
        Spacer()
        .navigationBarBackButtonHidden(true)
    }
    
}
        

