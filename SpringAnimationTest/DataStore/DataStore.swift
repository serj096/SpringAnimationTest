//
//  DataStore.swift
//  SpringAnimationTest
//
//  Created by serj on 01.07.2025.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let animations: [AnimationPreset] = [
        .pop,
        .slideLeft,
        .slideRight,
        .slideDown,
        .slideUp,
        .squeezeLeft,
        .squeezeRight,
        .squeezeDown,
        .squeezeUp,
        .fadeIn,
        .fadeOut,
        .fadeOutIn,
        .fadeInLeft,
        .fadeInRight,
        .fadeInDown,
        .fadeInUp,
        .zoomIn,
        . zoomOut,
        . fall,
        . shake,
        . flipX,
        . flipY,
        . morph,
        . squeeze,
        . flash,
        . wobble,
        . swing,
    ]
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
