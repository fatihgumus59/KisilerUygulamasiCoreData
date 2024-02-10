//
//  KisiDetay.swift
//  KisilerUygulamasi
//
//  Created by Fatih Gümüş on 21.12.2023.
//

import UIKit

class KisiDetay: UIViewController {

    @IBOutlet weak var kisiAd: UITextField!
    @IBOutlet weak var kisiTel: UITextField!
    
    var viewModel = KisiDetayViewModel()
    var kisi: KisilerModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi{
            kisiAd.text = k.kisi_ad
            kisiTel.text = k.kisi_tel
        }
    }
    

    @IBAction func kisiGuncelle(_ sender: Any) {
        if let ka = kisiAd.text, let kt = kisiTel.text,let k = kisi{
            viewModel.guncelle(kisi: k, kisi_ad: ka, kisi_tel: kt)
        }
    }
    


}
