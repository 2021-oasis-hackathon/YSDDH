//
//  FindMyStarResultView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/16.
//

import SwiftUI

struct FindMyStarResultView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    var selectedItems = FindMyStarViewModel()
    
    
    var body: some View {
        ZStack{
            //MARK: - Background Image
            VStack{
                Image(uiImage:UIImage(named: "RecommendCoursePage_Header") ?? UIImage(named: "placeHolderImage")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()
                
            }
            
            
            //MARK: - go Back Button
            VStack(alignment:.leading){
                Spacer()
                HStack{
                    VStack(alignment: .leading){
                        Button(action: {
                            withAnimation {
                                viewRouter.currentPage = .page3
                            }
                        }, label: {
                            Image(uiImage:UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 12, height: 15)
                        })
                    
                        Spacer()
                        }
                    Text(selectedItems.sea.description)
                    Spacer()
                    
                }.offset(x:30, y:10)
            }
            
        }
    }
}


struct FindMyStarResultView_Previews: PreviewProvider {
    static var previews: some View {
        FindMyStarResultView().environmentObject(ViewRouter())
            .environmentObject(FindMyStarViewModel())
    }
}
