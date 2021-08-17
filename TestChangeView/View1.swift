//
//  View1.swift
//  TestChangeView
//
//  Created by Tien Do on 8/10/21.
//

import SwiftUI

struct View1: View {
  @Binding var viewName: String

  var body: some View {
    VStack {
      Text("View 1")
      Button(action: {
        viewName = "view2"
      }) {
        Text("Show View 2")
      }.padding()
      Button(action: {
        viewName = "main"
      }) {
        Text("Show Main View")
      }.padding()
    }
  }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
      View1(viewName: .constant(""))
    }
}
