//
//  QuoteDetailView.swift
//  module2-wrapup
//
//  Created by Changjun Oh on 2022/11/13.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var q:Quote
    
    var body: some View {
        VStack(alignment: .leading) {
            // MARK: quoteBy
            Text(q.by)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom)
            
            // MARK: Details
            ForEach(q.details, id:\.self) { d in
                Text(d)
                    .padding(.bottom, 2.0)
            }
        }
        .padding(.leading)
        
        Spacer()
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetailView(q:model.quotes[0])
    }
}
