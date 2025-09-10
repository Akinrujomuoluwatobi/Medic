//
//  MainTabView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 25/08/2025.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 1
    @State var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack (path: $navigationPath) {
            TabView(selection: $selectedTab) {
                HomeView(path: $navigationPath)
                    .tabItem {
                        Label {
                            Text("Home")
                        } icon: {
                            Image("homeIcon")
                        }
                        
                    }.tag(1)
                
                AppointmentView()
                    .tabItem {
                        Label {
                            Text("Appointment")
                        } icon: {
                            Image("clockIcon")
                        }
                    }.tag(2)
                
                MessageView()
                    .tabItem {
                        Label {
                            Text("Message")
                        } icon: {
                            Image("messageIcon")
                        }
                    }.tag(3)
                
                ProfileView()
                    .tabItem {
                        Label {
                            Text("Profile")
                        } icon: {
                            Image("profileIcon")
                        }
                    }.tag(4)
            }.tint(.colorPrimary)
                .navigationDestination(for: Router.self) { destination in
                    switch destination {
                    case .allDoctersView:
                        AllDoctorsView()
                    }
                }

        }
    }
}

#Preview {
    MainTabView()
}
