//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by Fatih Gümüş on 14.01.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel{
    
    var kRepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[KisilerModel]>(value: [KisilerModel]())
    
    
    init(){
        veritabaniKopyala()
        kisilerListesi = kRepo.kisilerListesi
        kisilerYukle()
    }
    
    func sil(kisi:KisilerModel){
        kRepo.sil(kisi: kisi)
    }
    
    func ara(aramaKelimesi:String){
        kRepo.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func kisilerYukle(){
        kRepo.kisilerYukle()
    }
    
    func veritabaniKopyala(){
       
        kRepo.kisilerYukle()
    }
}
