//
//  StatusView.swift
//  LiveActivity
//
//  Created by Ali Can Batur on 29.07.2022.
//

import SwiftUI
import ActivityKit
import live_activity_flutter_example

@available(iOS 16.0, *)
struct StatusView: View {

    @State var attribute = 
    @State var state = StatusAttribute.ContentState
  
  var body: some View {
    
    ZStack {
      Color.white
      VStack(spacing: 0) {
        TopView(attribute: attribute)
          BottomView(state: state)
      }
      .activitySystemActionForegroundColor(Color.cyan)
    }
  }
}
