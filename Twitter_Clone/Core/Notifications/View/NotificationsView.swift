//
//  NotificationsView.swift
//  TwitterClone
//
//  Created by Rohit Patil on 13/01/23.
//

import SwiftUI

struct NotificationsView: View {
    @State private var selectedFilter:NotificationFilterViewModel = .all
    @Namespace var animation
    var body: some View {
        VStack{
          NotificationFilterBar
        
            Notifications
             Spacer()
        }
        .padding()
       // .navigationTitle("Notification")
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}

extension NotificationsView{
    var  NotificationFilterBar:some View {
        HStack{
            ForEach(NotificationFilterViewModel.allCases,id:\.rawValue){ item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height:3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    }else{
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height:3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeOut){
                        self.selectedFilter = item
                    }
                }
            }
        }
        
        .overlay(Divider().offset(x:0,y:16))
    }
    
    var Notifications:some View{
        ScrollView{
            VStack{
                ForEach(0..<10,id: \.self){_ in
                    VStack(alignment:.leading)
                    {
                        //Profile image + userInfo + Tweet
                            HStack(alignment: .top, spacing: 12){
                                Circle()
                                    .scaledToFill()
                                    .clipShape(Circle())
                                    .frame(width: 35, height: 35)
                                
                                //User Info and Tweet Caption
                                VStack(alignment:.leading,spacing: 4){
                                    //User info
                                    HStack{
                                        Text("@hitman")
                                            .font(.subheadline).bold()
                                       
                                        Text("Likes your tweet.")
                                        
                                        Spacer()
                                        
                                        Text("2m ago")
                                            .foregroundColor(.gray)
                                            .font(.caption)
                                    }

                                }
                            }
                        Divider()
                    }.padding()
                }
            }
        }
        }
    }
       

