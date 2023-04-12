//
//  Lampara.view.swift
//  JATZIRI BERENICE
//
//  Created by CEDAM09 on 12/04/23.
//

import Foundation

import SwiftUI

struct ContentView: View
{
    @State private var lampara = true
    
    var body: some View
    {
        ZStack
        {
            Color(.systemBlue)
                .ignoresSafeArea()//fondo sea completamente azul
            VStack
            {
                Button("este es un cambio de fondo")
                {
                    lampara.toggle()//para boleanos cambia su valor actiual por el opuesto
                }
            
            .buttonStyle(.bordered)//estilo de boton borde
            .foregroundColor(.black)
            if lampara
            {
                Text("Me gusta el azul")
                    .foregroundColor(.blue)
                    .cornerRadius(130)
                    .background(Rectangle())
                    .cornerRadius(40)
                    .shadow(radius: 46)
                    .padding(2)
                
                    Image(systemName: "star.fill")
                    .foregroundColor(.blue)
            }
            else
            {
                Text("Me gusta el verde ")
                    .foregroundColor(.green)
                    .background(Rectangle())
                    .cornerRadius(40)
                    .shadow(radius: 46)//relleno contorno
                    .padding(2)
                
                Image(systemName: "star.fill")
                .foregroundColor(.green)
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

