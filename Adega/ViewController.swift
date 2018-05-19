//
//  ViewController.swift
//  Adega
//
//  Created by Pedro Guilherme Neri on 18/05/2018.
//  Copyright © 2018 Pedro Guilherme Neri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbGarrafa: UILabel!
    @IBOutlet weak var tfQuant: UITextField!
    @IBOutlet weak var btConfirm: UIButton!
    @IBOutlet weak var btReset: UIButton!
    @IBOutlet weak var btShow: UIButton!
    @IBOutlet weak var lbTintoD: UILabel!
    @IBOutlet weak var lbTintoS: UILabel!
    @IBOutlet weak var lbBrancoD: UILabel!
    @IBOutlet weak var lbBrancoS: UILabel!
    @IBOutlet weak var lbTotal: UILabel!
    
    var vtdf: Int = 0
    var vtsf: Int = 0
    var vbdf: Int = 0
    var vbsf: Int = 0
    var tot: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNext(_ sender: UIButton) {
        switch lbGarrafa.text!{
            case "TintoDoce":
                lbGarrafa.text! = "TintoSeco"
                tfQuant.text! = ""
            case "TintoSeco":
                lbGarrafa.text! = "BrancoDoce"
                tfQuant.text! = ""
            case "BrancoDoce":
                lbGarrafa.text! = "BrancoSeco"
                tfQuant.text! = ""
            default:
                lbGarrafa.text! = "TintoDoce"
                tfQuant.text! = ""
        }
    }
    @IBAction func showPrev(_ sender: UIButton) {
        switch lbGarrafa.text!{
        case "TintoDoce":
            lbGarrafa.text! = "BrancoSeco"
            tfQuant.text! = ""
        case "BrancoSeco":
            lbGarrafa.text! = "BrancoDoce"
            tfQuant.text! = ""
        case "BrancoDoce":
            lbGarrafa.text! = "TintoSeco"
            tfQuant.text! = ""
        default:
            lbGarrafa.text! = "TintoDoce"
            tfQuant.text! = ""
        }
    }
    @IBAction func confirm(_ sender: UIButton) {
        switch lbGarrafa.text!{
        case "TintoDoce":
           VinhoTD()
        case "TintoSeco":
           VinhoTS()
        case "BrancoDoce":
           VinhoBD()
        default:
           VinhoBS()
            }
    }
    @IBAction func show(_ sender: UIButton) {
        tot = vtdf + vtsf + vbdf + vbsf
        lbTotal.text! = String(tot) + " garrafas"
        lbTintoD.text = String(vtdf)
        lbTintoS.text = String(vtsf)
        lbBrancoD.text = String(vbdf)
        lbBrancoS.text = String(vbsf)
        tfQuant.text! = ""
        
    }
    @IBAction func reset(_ sender: UIButton) {
        tot = 0
        vtdf = 0
        vtsf = 0
        vbdf = 0
        vbsf = 0
        lbTotal.text! = ""
        lbTintoD.text! = ""
        lbTintoS.text! = ""
        lbBrancoD.text! = ""
        lbBrancoS.text! = ""
        tfQuant.text! = ""
    }
    
    func VinhoTD(){
        guard let vtd = Int(tfQuant.text!) else {return}
        vtdf += vtd
        lbTintoD.text = String(vtdf)
        lbTotal.text! = ""
    }
    func VinhoTS(){
        guard let vts = Int(tfQuant.text!) else {return}
        vtsf += vts
        lbTintoS.text = String(vtsf)
        lbTotal.text! = ""
    }
    func VinhoBD(){
        guard let vbd = Int(tfQuant.text!) else {return}
        vbdf += vbd
        lbBrancoD.text = String(vbdf)
        lbTotal.text! = ""
    }
    func VinhoBS(){
        guard let vbs = Int(tfQuant.text!) else {return}
        vbsf += vbs
        lbBrancoS.text = String(vbsf)
        lbTotal.text! = ""
    }
    
}
