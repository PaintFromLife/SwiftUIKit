//
//  LazyView.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2020-10-13.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This view can be used to improve performance. The view body
 is resolved upon presentation. This can be used e.g. within
 `NavigationLink`s to postpone the body creation.
 */
struct LazyView<Content: View>: View {
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    let content: () -> Content
    
    var body: Content {
        content()
    }
}

struct LazyView_Previews: PreviewProvider {
    static var previews: some View {
        LazyView {
            Text("Hello")
        }
    }
}
