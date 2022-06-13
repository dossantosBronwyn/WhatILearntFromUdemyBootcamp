//
//  ContentView.swift
//  H4X0R News
//
//  Created by IACD-05 on 2022/06/13.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkmanager = NetworkManager()
    
    var body: some View {
        NavigationView{
            
            List(networkmanager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationTitle("H4X0R N3WS")
        }
        .onAppear{
            self.networkmanager.fetchData()
        }
        
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
