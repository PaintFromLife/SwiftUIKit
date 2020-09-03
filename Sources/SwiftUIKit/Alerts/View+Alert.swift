//
//  View+Alert.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2020-09-03.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension View {
    
    /**
     Present an alert from a certain alert context. The alert
     will be presented when the context is active.
     */
    func alert<Content: View>(context: AlertContext) -> some View {
        alert(isPresented: context.isActiveBinding, content: context.alert)
    }
}
