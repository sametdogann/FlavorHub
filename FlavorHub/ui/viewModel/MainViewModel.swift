//
//  MainViewModel.swift
//  FlavorHub
//
//  Created by Samet  Doğan on 19.10.2023.
//

import Foundation
import RxSwift

class MainViewModel {
    var yrepo = FoodsDaoRepository()
    var foodsList = BehaviorSubject<[Yemekler]>(value: [Foods]())
    
    init(){
        yemeklerListesi = yrepo.foodsList
        yemekleriYukle()
    }
    
    func yemekleriYukle(){
        yrepo.yemekleriYukle()
    }
    
    func ara(aramaKelimesi: String) {
        do {
            let filtrelenmisYemekler = try foodsList.value().filter { yemek in
                return Foods.yemek_adi?.contains(aramaKelimesi) ?? false
            }
            foodsList.onNext(filtrelenmisYemekler)
        } catch {
            print("Hata oluştu: \(error)")
        }
    }
    
    func sepeteYemekEkle(yemek_adi:String, yemek_resim_adi:String, yemek_fiyat:String, yemek_siparis_adet:String{
        yrepo.yemekleriYukle()
    }
    
}
