//
//  TitleRow.swift
//  Messenger Angime
//
//  Created by Shynggys Umbetov on 05/03/2023.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://media.istockphoto.com/id/1378996666/fr/photo/portrait-dun-jeune-homme-sympathique.jpg?s=612x612&w=0&k=20&c=kFg1-5cGF_Iabgd1WNt1DhbwTI_3Pips4p-qjNmyp08=")
    var name = "Will Smith"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()

    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
