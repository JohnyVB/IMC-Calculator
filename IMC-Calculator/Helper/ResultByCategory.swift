//
//  ResultByCategory.swift
//  CursoIOS
//
//  Created by Johny Villegas on 23/2/26.
//
import SwiftUI

func getImcResult(result: Double, age: Int) -> (String, Color, String) {
    
    let state: String
    let colorState: Color
    let description: String
    
    // 👶 MENORES
    if age < 18 {
        switch result {
        case 0.0..<18:
            state = "Bajo"
            colorState = .yellow
            description = "Peso bajo para la edad"
            
        case 18..<25:
            state = "Normal"
            colorState = .green
            description = "Peso saludable para la edad"
            
        case 25..<30:
            state = "Riesgo"
            colorState = .orange
            description = "Riesgo de sobrepeso"
            
        case 30..<35:
            state = "Obesidad I"
            colorState = .red.opacity(0.7)
            description = "Obesidad pediátrica inicial"
            
        case 35..<40:
            state = "Obesidad II"
            colorState = .red
            description = "Obesidad pediátrica avanzada"
            
        case 40..<100:
            state = "Obesidad III"
            colorState = .purple
            description = "Obesidad pediátrica severa"
            
        default:
            state = "Error"
            colorState = .gray
            description = "Ha ocurrido un error"
        }
        return (state, colorState, description)
    }
    
    // 👴 ADULTOS MAYORES
    if age >= 65 {
        switch result {
        case 0.0..<22:
            state = "Bajo"
            colorState = .yellow
            description = "Bajo peso en adulto mayor"
            
        case 22..<27:
            state = "Normal"
            colorState = .green
            description = "Peso adecuado"
            
        case 27..<30:
            state = "Sobrepeso"
            colorState = .orange
            description = "Sobrepeso"
            
        case 30..<35:
            state = "Obesidad I"
            colorState = .red.opacity(0.7)
            description = "Obesidad grado I"
            
        case 35..<40:
            state = "Obesidad II"
            colorState = .red
            description = "Obesidad grado II"
            
        case 40..<100:
            state = "Obesidad III"
            colorState = .purple
            description = "Obesidad grado III"
            
        default:
            state = "Error"
            colorState = .gray
            description = "Ha ocurrido un error"
        }
        return (state, colorState, description)
    }
    
    // 👨 ADULTOS
    switch result {
    case 0.0..<18.5:
        state = "Bajo"
        colorState = .yellow
        description = "En estado de peso bajo"
        
    case 18.5..<25:
        state = "Normal"
        colorState = .green
        description = "En estado normal"
        
    case 25..<30:
        state = "Sobrepeso"
        colorState = .orange
        description = "Estado en sobrepeso"
        
    case 30..<35:
        state = "Obesidad I"
        colorState = .red.opacity(0.7)
        description = "Obesidad grado I"
        
    case 35..<40:
        state = "Obesidad II"
        colorState = .red
        description = "Obesidad grado II"
        
    case 40..<100:
        state = "Obesidad III"
        colorState = .purple
        description = "Obesidad grado III"
        
    default:
        state = "Error"
        colorState = .gray
        description = "Ha ocurrido un error"
    }
    
    return (state, colorState, description)
}
