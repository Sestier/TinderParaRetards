//
//  Pregunta.swift
//  transiciones2
//
//  Created by Maestro on 31/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import Foundation
import UIKit

class pregunta {
    
    var imagen: UIImage
    var pregunta: String
    var respuesta: Bool
    
    init(imagen: UIImage, pregunta: String, respuesta: Bool) {
        self.imagen = imagen
        self.pregunta = pregunta
        self.respuesta = respuesta
    }
    
}
