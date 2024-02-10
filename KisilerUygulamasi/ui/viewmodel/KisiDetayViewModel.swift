//
//  KisiDetayViewModel.swift
//  KisilerUygulamasi
//
//  Created by Fatih Gümüş on 14.01.2024.
//

import Foundation

class KisiDetayViewModel{
    
    var kRepo = KisilerDaoRepository()
    
    func guncelle(kisi:KisilerModel,kisi_ad:String,kisi_tel:String){
        kRepo.guncelle(kisi: kisi, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
}
