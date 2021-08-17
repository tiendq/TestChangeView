//
//  View2.swift
//  TestChangeView
//
//  Created by Tien Do on 8/10/21.
//

import SwiftUI

struct View2: View {
  @Binding var viewName: String

  var body: some View {
    VStack {
      Text("View 2")
      Button(action: {
        viewName = "view1"
      }) {
        Text("Show View 1")
      }.padding()
      Button(action: {
        viewName = "main"
      }) {
        Text("Show Main View")
      }.padding()
    }
  }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
      View2(viewName: .constant(""))
    }
}
