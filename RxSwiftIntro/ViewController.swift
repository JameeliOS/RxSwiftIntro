//
//  ViewController.swift
//  RxSwiftIntro
//
//  Created by Jameel on 26/10/2022.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    let disposeBag : DisposeBag = DisposeBag()
    // Subjects : Observable + Observer
    /*
     1- Publish Subject:
     Only emits new elements to subscribers "After subscription"
     
     2- Behavior Subject:
     Emits the last element to new subscribers
     
     3- Replay Subject
     Emits a buffer size of elements to NEW subscribers
     
     4- Async Subject
     Emits only the last next event in the sequence, AND only when the subject reveives a completed event.
     */
    
    // Relays
    /*
     1- Behavior Relay
     2- Publish Relay
     */
    
    let pSub : PublishSubject<String> = PublishSubject<String>()
    let bSub : BehaviorSubject<Int> = BehaviorSubject.init(value: 1)
    let rSub : ReplaySubject<Int> = ReplaySubject<Int>.create(bufferSize: 1)
    
    override func viewDidLoad() {
        
        
        // Testing 
        pSub.subscribe(onNext: { elem in
             print(elem)
        }, onError: { error in
            print(error)
        },onCompleted: {
            print("completed")
        }).disposed(by: disposeBag)
        
        pSub.onNext("new value")
        
        
        bSub.subscribe(onNext: { value in
            print(value)
        }).disposed(by: disposeBag)
        
        
        
        // First we enter values in the sequnce
        // then when subscription happens we receive the buffer size
        rSub.onNext(11)
        rSub.onNext(2)
        
        rSub.subscribe { value in
            print(value)
        }.disposed(by: disposeBag)
        
        
        
    }

}

