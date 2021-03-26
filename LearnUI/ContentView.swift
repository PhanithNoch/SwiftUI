//
//  ContentView.swift
//  LearnUI
//
//  Created by Admin on 3/26/21.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear

    }
    @State var search = ""
    var body: some View {
        
        NavigationView {
            ZStack
            {
                Image("rectangleRectangleCopyMaskCopy2Mask").resizable().ignoresSafeArea(.all)
                ScrollView {
                    VStack(spacing:0){
                        ZStack{
                            RoundedRectangle(cornerRadius: 12,
                                                style: .continuous)
                                   .foregroundColor(.white)
                                   .shadow(radius: 10)
                           
                            TextField("Search",text:$search).frame(height:35).font(.footnote).padding(.horizontal)
                        }.frame(width: .infinity, height: 35, alignment: .center).padding(.all)
                        ZStack(alignment:.leading){
                            RoundedRectangle(cornerRadius: 12,
                                                style: .continuous)
                                   .foregroundColor(.white)
                                   .shadow(radius: 10)
                            
                            Text("88 รายการ").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.footnote).padding(.horizontal)
                         
                        }.frame(width: .infinity, height: 35).padding(.horizontal)
                        
                       
    //                        เลขที่รับ: 63010400103740
    //                        วันที่รับเรื่อง: 01/02/2563
                        BodyCardReusable().padding(.vertical,10).padding(.horizontal)
                        BodyCardReusable().padding(.vertical,10).padding(.horizontal)
                       
                        BodyCardReusable().padding(.vertical,10).padding(.horizontal)
                        BodyCardReusable().padding(.vertical,10).padding(.horizontal)
   
                       
                    }
                }
                
                
//                รายการบริษัทที่ออกตร
               
            }.navigationBarTitle("รายการบริษัทที่ออกตร",displayMode: .inline).toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        ZStack{
                          
                            Image(systemName: "person")
                        }
                        
                        Image(systemName: "bell")
                    }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())

    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
