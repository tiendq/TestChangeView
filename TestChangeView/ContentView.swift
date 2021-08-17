//
//  ContentView.swift
//  TestChangeView
//
//  Created by Tien Do on 8/10/21.
//

import SwiftUI

struct ContentView: View {
  @State var viewName = "main"

  var body: some View {
    return Group {
      if "view1" == viewName {
        View1(viewName: $viewName)
      } else if "view2" == viewName {
        View2(viewName: $viewName)
      } else {
        VStack {
          Text("ContentView")
          Button(action: {
            viewName = "view1"
          }) {
            Text("Show View 1")
          }.padding()
          Button(action: {
            viewName = "view2"
          }) {
            Text("Show View 2")
          }.padding()
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
