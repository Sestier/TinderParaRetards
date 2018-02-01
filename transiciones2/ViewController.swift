//
//  ViewController.swift
//  transiciones2
//
//  Created by Maestro on 29/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var preguntas: [pregunta] = []
    var preguntaActual = 0
    
    @IBOutlet weak var vwContenedor: UIView!
    
    @IBOutlet weak var lblPregunta: UILabel!
    @IBOutlet weak var imgPreguntas: UIImageView!
    @IBOutlet weak var btnSi: UIButton!
    @IBOutlet weak var btnNo: UIButton!
    
    
    /*@IBAction func doValueChangeSwitch(_ sender: Any) {
        UIView.transition(with: vwContenedor, duration: 0.75, options: [.transitionFlipFromRight], animations: {
        }, completion: nil)
        
    }*/
    
    
    override func viewWillAppear(_ animated: Bool) {
        btnSi.layer.cornerRadius  = 40
        btnNo.layer.cornerRadius  = 40
        
        lblPregunta.alpha = 0
        imgPreguntas.alpha = 0
        btnSi.alpha = 0
        btnNo.alpha = 0
        
    }
    
    @IBAction func btnSiAction(_ sender: Any) {
        if(preguntas[preguntaActual].respuesta == true){
            UIView.transition(with: vwContenedor, duration: 1, options: [.transitionFlipFromRight], animations: {
                self.btnSi.isHidden = true
                self.btnNo.isHidden = true
                self.imgPreguntas.image = UIImage(named: "si")
                self.lblPregunta.text = "Correcto"
            }, completion: { _ in
                UIView.animate(withDuration: 2, animations: {
                    self.lblPregunta.transform.scaledBy(x: 0.1, y: 0.1)
                }, completion: { _ in
                    UIView.transition(with: self.vwContenedor, duration: 1, options: [.transitionCurlUp], animations: {
                        self.btnSi.isHidden = false
                        self.btnNo.isHidden = false
                        self.preguntaActual += 1
                        if(self.preguntaActual > 9){
                            UIView.transition(with: self.vwContenedor, duration: 1, options: [.transitionFlipFromTop], animations: {
                                self.btnSi.isHidden = true
                                self.btnNo.isHidden = true
                                self.lblPregunta.text = "Terminaste, gracias."
                                self.imgPreguntas.image = UIImage(named: "terminaste")
                            }, completion: nil)
                        }else {
                            self.actualizarPregunta()
                        }

                    }, completion: nil)
                })})
        } else {
            UIView.transition(with: vwContenedor, duration: 1, options: [.transitionFlipFromRight], animations: {
                self.btnSi.isHidden = true
                self.btnNo.isHidden = true
                self.imgPreguntas.image = UIImage(named: "no")
                self.lblPregunta.text = "Tonto"
            }, completion: { _ in
                UIView.animate(withDuration: 2, animations: {
                    self.lblPregunta.transform.scaledBy(x: 0.1, y: 0.1)
                }, completion: { _ in
                    UIView.transition(with: self.vwContenedor, duration: 1, options: [.transitionCurlUp], animations: {
                        self.btnSi.isHidden = false
                        self.btnNo.isHidden = false
                        self.preguntaActual += 1
                        if(self.preguntaActual > 9){
                            UIView.transition(with: self.vwContenedor, duration: 1, options: [.transitionFlipFromTop], animations: {
                                self.btnSi.isHidden = true
                                self.btnNo.isHidden = true
                                self.lblPregunta.text = "Terminaste, gracias."
                                self.imgPreguntas.image = UIImage(named: "terminaste")
                            }, completion: nil)
                        }else {
                            self.actualizarPregunta()
                        }

                    }, completion: nil)
                })})
        }
    }
    
    @IBAction func btnNoAction(_ sender: Any) {
        if(preguntas[preguntaActual].respuesta == false){
            UIView.transition(with: vwContenedor, duration: 1, options: [.transitionFlipFromRight], animations: {
                self.btnSi.isHidden = true
                self.btnNo.isHidden = true
                self.imgPreguntas.image = UIImage(named: "si")
                self.lblPregunta.text = "Correcto"
            }, completion: { _ in
                UIView.animate(withDuration: 2, animations: {
                    self.lblPregunta.transform.scaledBy(x: 0.1, y: 0.1)
                }, completion: { _ in
                    UIView.transition(with: self.vwContenedor, duration: 1, options: [.transitionCurlUp], animations: {
                        self.btnSi.isHidden = false
                        self.btnNo.isHidden = false
                        self.preguntaActual += 1
                        if(self.preguntaActual > 9){
                            UIView.transition(with: self.vwContenedor, duration: 1, options: [.transitionFlipFromTop], animations: {
                                self.btnSi.isHidden = true
                                self.btnNo.isHidden = true
                                self.lblPregunta.text = "Terminaste, gracias."
                                self.imgPreguntas.image = UIImage(named: "terminaste")
                            }, completion: nil)
                        }else {
                            self.actualizarPregunta()
                        }
                    }, completion: nil)
                })})
        } else {
            UIView.transition(with: vwContenedor, duration: 1, options: [.transitionFlipFromRight], animations: {
                self.btnSi.isHidden = true
                self.btnNo.isHidden = true
                self.imgPreguntas.image = UIImage(named: "no")
                self.lblPregunta.text = "Tonto"
            }, completion: { _ in
                UIView.animate(withDuration: 2, animations: {
                    self.lblPregunta.transform.scaledBy(x: 0.1, y: 0.1)
                }, completion: { _ in
                    UIView.transition(with: self.vwContenedor, duration: 1, options: [.transitionCurlUp], animations: {
                        self.btnSi.isHidden = false
                        self.btnNo.isHidden = false
                        self.preguntaActual += 1
                        if(self.preguntaActual > 9){
                            UIView.transition(with: self.vwContenedor, duration: 1, options: [.transitionFlipFromTop], animations: {
                                self.btnSi.isHidden = true
                                self.btnNo.isHidden = true
                                self.lblPregunta.text = "Terminaste, gracias."
                                self.imgPreguntas.image = UIImage(named: "terminaste")
                            }, completion: nil)
                        }else {
                            self.actualizarPregunta()
                        }
                    }, completion: nil)
                })})
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            self.lblPregunta.alpha = 1
            self.imgPreguntas.alpha = 1
            self.btnSi.alpha = 1
            self.btnNo.alpha = 1
        }, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile")!, pregunta: "El emoji está sonriendo?", respuesta: true))
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile2")!, pregunta: "El emoji está sonriendo?", respuesta: true))
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile3")!, pregunta: "El emoji está sonriendo?", respuesta: true))
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile4")!, pregunta: "El emoji está sonriendo?", respuesta: true))
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile5")!, pregunta: "El emoji está sonriendo?", respuesta: true))
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile6")!, pregunta: "El emoji está sonriendo?", respuesta: true))
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile7")!, pregunta: "El emoji está sonriendo?", respuesta: true))
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile8")!, pregunta: "El emoji está sonriendo?", respuesta: true))
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile9")!, pregunta: "El emoji está sonriendo?", respuesta: true))
        
        preguntas.append(pregunta(imagen: UIImage( named: "smile10")!, pregunta: "El emoji está sonriendo?", respuesta: false))
        
        actualizarPregunta()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func actualizarPregunta(){
        lblPregunta.text = preguntas[preguntaActual].pregunta
        imgPreguntas.image = preguntas[preguntaActual].imagen
    }


}

