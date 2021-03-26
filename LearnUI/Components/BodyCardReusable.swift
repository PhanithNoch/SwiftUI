//
//  BodyCardReusable.swift
//  LearnUI
//
//  Created by Admin on 3/26/21.
//

import SwiftUI

struct BodyCardReusable: View {
    var body: some View {
        VStack(alignment:.leading){
            ZStack(alignment:.leading){
                RoundedRectangle(cornerRadius: 12,
                                    style: .continuous)
                       .foregroundColor(.white)
                       .shadow(radius: 10)
               
                VStack(alignment:.leading,spacing:5){
                    Text("บริษัท ปทุมธานี บริวเวอรี่ จำกัด").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.headline)
                    HStack{
                        Text("เลขที่รับ:").font(.footnote)
                        Text("63010400103740").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.footnote)
                    }
                    HStack{
                        
                         Text("วันที่รับเรื่อง:").font(.caption)
                        
                        Text("01/02/2563").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.footnote)
                    }
                    
                    ZStack(alignment:.leading)
                    {
                        RoundedRectangle(cornerRadius: 6,
                                         style: .continuous)
                            .foregroundColor(.orange).opacity(0.2)
                        
                        Text("สถานะ: รอเจ้าหน้าที่ลงความเห็น").font(.system(size: 12)).foregroundColor(.orange).padding(.horizontal)
                        Spacer()
                    }.frame(width: 210)
                    
                   
                }.padding()
            }.frame(width: .infinity, height: 120)
        }
    }
}

struct BodyCardReusable_Previews: PreviewProvider {
    static var previews: some View {
        BodyCardReusable()
    }
}
