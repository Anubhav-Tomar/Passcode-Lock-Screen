//
//  PasscodeIndicatorView.swift
//  Passcode
//
//  Created by Anubhav Tomar on 24/08/24.
//

import SwiftUI

struct PasscodeIndicatorView: View {
    
    @Binding var passcode: String
    
    var body: some View {
        HStack (spacing: 32) {
            ForEach(0 ..< 4) { index in
                Circle()
                    .fill( passcode.count > index ? .primary : Color(.white) )
                    .frame(width: 20, height: 20)
                    .overlay {
                        Circle()
                            .stroke(.black, lineWidth: 1.0)
                    }
            }
        }
    }
}


#Preview {
    PasscodeIndicatorView(passcode: .constant(""))
}
