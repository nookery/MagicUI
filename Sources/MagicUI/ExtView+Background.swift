import SwiftUI

// MARK: - Magic Background Style Enum
/// Defines all available MagicBackground styles for type-safe selection
public enum MagicBackgroundStyle {
    case frost, gradient, aurora, ocean, sunset, forest, lavender, desert, midnight
    case cherry, mint, twilight, rose, emerald, amethyst, coral, slate, sage
    case dusk, serenity, sunnyBeach, tropicalSunset, palmBeach, candyLand
    case crayonBox, toyBlocks, balloonParty, paperPlanes
    case colorRed, colorBlue, colorGreen, colorYellow, colorPurple, colorOrange
    case colorPink, colorBrown, colorGray, colorTeal
    case cosmicDust, galaxySpiral, nebulaMist, darkMatter, cosmicPortal
    case mysticalForest, enchantedGrove, deepForest
    case watermelon, blueberry, strawberry, kiwi
    case vanillaMacaron, roseMacaron, lavenderMacaron, mintMacaron, lemonMacaron
    case jazzNight, classicalHarmony, rockStage, electronicBeats, acousticMorning
    case deepOceanCurrent, tropicalWaters, coralReef, mountainStream, calmRiver, cascadingRiver
    case dawnSky, stormyHeaven, sunsetGlow, snowPeak, glacierIce, frostMountain

    @ViewBuilder
    var view: some View {
        switch self {
        case .frost: MagicBackground.frost
        case .gradient: MagicBackground.gradient
        case .aurora: MagicBackground.aurora
        case .ocean: MagicBackground.ocean
        case .sunset: MagicBackground.sunset
        case .forest: MagicBackground.forest
        case .lavender: MagicBackground.lavender
        case .desert: MagicBackground.desert
        case .midnight: MagicBackground.midnight
        case .cherry: MagicBackground.cherry
        case .mint: MagicBackground.mint
        case .twilight: MagicBackground.twilight
        case .rose: MagicBackground.rose
        case .emerald: MagicBackground.emerald
        case .amethyst: MagicBackground.amethyst
        case .coral: MagicBackground.coral
        case .slate: MagicBackground.slate
        case .sage: MagicBackground.sage
        case .dusk: MagicBackground.dusk
        case .serenity: MagicBackground.serenity
        case .sunnyBeach: MagicBackground.sunnyBeach
        case .tropicalSunset: MagicBackground.tropicalSunset
        case .palmBeach: MagicBackground.palmBeach
        case .candyLand: MagicBackground.candyLand
        case .crayonBox: MagicBackground.crayonBox
        case .toyBlocks: MagicBackground.toyBlocks
        case .balloonParty: MagicBackground.balloonParty
        case .paperPlanes: MagicBackground.paperPlanes
        case .colorRed: MagicBackground.colorRed
        case .colorBlue: MagicBackground.colorBlue
        case .colorGreen: MagicBackground.colorGreen
        case .colorYellow: MagicBackground.colorYellow
        case .colorPurple: MagicBackground.colorPurple
        case .colorOrange: MagicBackground.colorOrange
        case .colorPink: MagicBackground.colorPink
        case .colorBrown: MagicBackground.colorBrown
        case .colorGray: MagicBackground.colorGray
        case .colorTeal: MagicBackground.colorTeal
        case .cosmicDust: MagicBackground.cosmicDust
        case .galaxySpiral: MagicBackground.galaxySpiral
        case .nebulaMist: MagicBackground.nebulaMist
        case .darkMatter: MagicBackground.darkMatter
        case .cosmicPortal: MagicBackground.cosmicPortal
        case .mysticalForest: MagicBackground.mysticalForest
        case .enchantedGrove: MagicBackground.enchantedGrove
        case .deepForest: MagicBackground.deepForest
        case .watermelon: MagicBackground.watermelon
        case .blueberry: MagicBackground.blueberry
        case .strawberry: MagicBackground.strawberry
        case .kiwi: MagicBackground.kiwi
        case .vanillaMacaron: MagicBackground.vanillaMacaron
        case .roseMacaron: MagicBackground.roseMacaron
        case .lavenderMacaron: MagicBackground.lavenderMacaron
        case .mintMacaron: MagicBackground.mintMacaron
        case .lemonMacaron: MagicBackground.lemonMacaron
        case .jazzNight: MagicBackground.jazzNight
        case .classicalHarmony: MagicBackground.classicalHarmony
        case .rockStage: MagicBackground.rockStage
        case .electronicBeats: MagicBackground.electronicBeats
        case .acousticMorning: MagicBackground.acousticMorning
        case .deepOceanCurrent: MagicBackground.deepOceanCurrent
        case .tropicalWaters: MagicBackground.tropicalWaters
        case .coralReef: MagicBackground.coralReef
        case .mountainStream: MagicBackground.mountainStream
        case .calmRiver: MagicBackground.calmRiver
        case .cascadingRiver: MagicBackground.cascadingRiver
        case .dawnSky: MagicBackground.dawnSky
        case .stormyHeaven: MagicBackground.stormyHeaven
        case .sunsetGlow: MagicBackground.sunsetGlow
        case .snowPeak: MagicBackground.snowPeak
        case .glacierIce: MagicBackground.glacierIce
        case .frostMountain: MagicBackground.frostMountain
        }
    }
}

// MARK: - Magic Background Extensions
public extension View {
    /// Apply a MagicBackground style using the enum selector
    /// - Parameter style: The MagicBackgroundStyle to apply
    /// - Parameter opacity: Optional opacity value (default 1.0)
    /// - Returns: A view with the specified background applied
    ///
    /// Usage:
    /// ```swift
    /// Text("Hello").magicBackground(.ocean)
    /// Text("World").magicBackground(.frost, opacity: 0.7)
    /// ```
    func magicBackground(_ style: MagicBackgroundStyle, opacity: Double = 1.0) -> some View {
        self.background(style.view.opacity(opacity))
    }
    
    func inMagicBackgroundFrost(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.frost.opacity(opacity))
    }

    
    func inMagicBackgroundGradient(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.gradient.opacity(opacity))
    }

    
    func inMagicBackgroundAurora(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.aurora.opacity(opacity))
    }

    
    func inMagicBackgroundOcean(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.ocean.opacity(opacity))
    }

    
    func inMagicBackgroundSunset(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.sunset.opacity(opacity))
    }

    
    func inMagicBackgroundForest(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.forest.opacity(opacity))
    }

    
    func inMagicBackgroundLavender(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.lavender.opacity(opacity))
    }

    
    func inMagicBackgroundDesert(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.desert.opacity(opacity))
    }

    
    func inMagicBackgroundMidnight(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.midnight.opacity(opacity))
    }

    
    func inMagicBackgroundCherry(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.cherry.opacity(opacity))
    }

    
    func inMagicBackgroundMint(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.mint.opacity(opacity))
    }

    
    func inMagicBackgroundTwilight(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.twilight.opacity(opacity))
    }

    
    func inMagicBackgroundRose(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.rose.opacity(opacity))
    }

    
    func inMagicBackgroundEmerald(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.emerald.opacity(opacity))
    }

    
    func inMagicBackgroundAmethyst(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.amethyst.opacity(opacity))
    }

    
    func inMagicBackgroundCoral(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.coral.opacity(opacity))
    }

    
    func inMagicBackgroundSlate(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.slate.opacity(opacity))
    }

    
    func inMagicBackgroundSage(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.sage.opacity(opacity))
    }

    
    func inMagicBackgroundDusk(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.dusk.opacity(opacity))
    }

    
    func inMagicBackgroundSerenity(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.serenity.opacity(opacity))
    }

    
    func inMagicBackgroundSunnyBeach(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.sunnyBeach.opacity(opacity))
    }

    
    func inMagicBackgroundTropicalSunset(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.tropicalSunset.opacity(opacity))
    }

    
    func inMagicBackgroundPalmBeach(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.palmBeach.opacity(opacity))
    }

    
    func inMagicBackgroundCandyLand(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.candyLand.opacity(opacity))
    }

    
    func inMagicBackgroundCrayonBox(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.crayonBox.opacity(opacity))
    }

    
    func inMagicBackgroundToyBlocks(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.toyBlocks.opacity(opacity))
    }

    
    func inMagicBackgroundBalloonParty(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.balloonParty.opacity(opacity))
    }

    
    func inMagicBackgroundPaperPlanes(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.paperPlanes.opacity(opacity))
    }

    
    func inMagicBackgroundColorRed(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorRed.opacity(opacity))
    }

    
    func inMagicBackgroundColorBlue(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorBlue.opacity(opacity))
    }

    
    func inMagicBackgroundColorGreen(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorGreen.opacity(opacity))
    }

    
    func inMagicBackgroundColorYellow(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorYellow.opacity(opacity))
    }

    
    func inMagicBackgroundColorPurple(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorPurple.opacity(opacity))
    }

    
    func inMagicBackgroundColorOrange(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorOrange.opacity(opacity))
    }

    
    func inMagicBackgroundColorPink(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorPink.opacity(opacity))
    }

    
    func inMagicBackgroundColorBrown(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorBrown.opacity(opacity))
    }

    
    func inMagicBackgroundColorGray(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorGray.opacity(opacity))
    }

    
    func inMagicBackgroundColorTeal(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.colorTeal.opacity(opacity))
    }

    
    func inMagicBackgroundCosmicDust(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.cosmicDust.opacity(opacity))
    }

    
    func inMagicBackgroundGalaxySpiral(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.galaxySpiral.opacity(opacity))
    }

    
    func inMagicBackgroundNebulaMist(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.nebulaMist.opacity(opacity))
    }

    
    func inMagicBackgroundDarkMatter(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.darkMatter.opacity(opacity))
    }

    
    func inMagicBackgroundCosmicPortal(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.cosmicPortal.opacity(opacity))
    }

    
    func inMagicBackgroundMysticalForest(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.mysticalForest.opacity(opacity))
    }

    
    func inMagicBackgroundEnchantedGrove(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.enchantedGrove.opacity(opacity))
    }

    
    func inMagicBackgroundDeepForest(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.deepForest.opacity(opacity))
    }

    
    func inMagicBackgroundWatermelon(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.watermelon.opacity(opacity))
    }

    
    func inMagicBackgroundOrange(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.orange.opacity(opacity))
    }

    
    func inMagicBackgroundBlueberry(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.blueberry.opacity(opacity))
    }

    
    func inMagicBackgroundStrawberry(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.strawberry.opacity(opacity))
    }

    
    func inMagicBackgroundKiwi(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.kiwi.opacity(opacity))
    }

    
    func inMagicBackgroundVanillaMacaron(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.vanillaMacaron.opacity(opacity))
    }

    
    func inMagicBackgroundRoseMacaron(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.roseMacaron.opacity(opacity))
    }

    
    func inMagicBackgroundLavenderMacaron(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.lavenderMacaron.opacity(opacity))
    }

    
    func inMagicBackgroundMintMacaron(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.mintMacaron.opacity(opacity))
    }

    
    func inMagicBackgroundLemonMacaron(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.lemonMacaron.opacity(opacity))
    }

    
    func inMagicBackgroundJazzNight(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.jazzNight.opacity(opacity))
    }

    
    func inMagicBackgroundClassicalHarmony(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.classicalHarmony.opacity(opacity))
    }

    
    func inMagicBackgroundRockStage(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.rockStage.opacity(opacity))
    }

    
    func inMagicBackgroundElectronicBeats(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.electronicBeats.opacity(opacity))
    }

    
    func inMagicBackgroundAcousticMorning(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.acousticMorning.opacity(opacity))
    }

    
    func inMagicBackgroundDeepOceanCurrent(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.deepOceanCurrent.opacity(opacity))
    }

    
    func inMagicBackgroundTropicalWaters(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.tropicalWaters.opacity(opacity))
    }

    
    func inMagicBackgroundCoralReef(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.coralReef.opacity(opacity))
    }

    
    func inMagicBackgroundMountainStream(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.mountainStream.opacity(opacity))
    }

    
    func inMagicBackgroundCalmRiver(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.calmRiver.opacity(opacity))
    }

    
    func inMagicBackgroundCascadingRiver(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.cascadingRiver.opacity(opacity))
    }

    
    func inMagicBackgroundDawnSky(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.dawnSky.opacity(opacity))
    }

    
    func inMagicBackgroundStormyHeaven(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.stormyHeaven.opacity(opacity))
    }

    
    func inMagicBackgroundSunsetGlow(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.sunsetGlow.opacity(opacity))
    }

    
    func inMagicBackgroundSnowPeak(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.snowPeak.opacity(opacity))
    }

    
    func inMagicBackgroundGlacierIce(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.glacierIce.opacity(opacity))
    }


    func inMagicBackgroundFrostMountain(_ opacity: Double = 1.0) -> some View {
        self.background(MagicBackground.frostMountain.opacity(opacity))
    }

}

// MARK: - Preview

#if DEBUG

#Preview("Basic Backgrounds") {
    VStack(spacing: 20) {
        Text("Frost")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundFrost()

        Text("Gradient")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundGradient()

        Text("Aurora")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundAurora()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

#Preview("Nature Backgrounds") {
    VStack(spacing: 20) {
        Text("Ocean")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundOcean()

        Text("Forest")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundForest()

        Text("Sunset")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundSunset()

        Text("Mountain")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundSnowPeak()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

#Preview("Color Backgrounds") {
    VStack(spacing: 20) {
        Text("Lavender")
            .font(.title)
            .padding()
            .inMagicBackgroundLavender()

        Text("Rose")
            .font(.title)
            .padding()
            .inMagicBackgroundRose()

        Text("Mint")
            .font(.title)
            .padding()
            .inMagicBackgroundMint()

        Text("Coral")
            .font(.title)
            .padding()
            .inMagicBackgroundCoral()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

#Preview("Cosmic Backgrounds") {
    VStack(spacing: 20) {
        Text("Cosmic Dust")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundCosmicDust()

        Text("Galaxy Spiral")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundGalaxySpiral()

        Text("Nebula")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundNebulaMist()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

#Preview("Food Backgrounds") {
    VStack(spacing: 20) {
        Text("Watermelon")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundWatermelon()

        Text("Strawberry")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundStrawberry()

        Text("Orange")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundOrange()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

#Preview("Beach Backgrounds") {
    VStack(spacing: 20) {
        Text("Sunny Beach")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundSunnyBeach()

        Text("Tropical Sunset")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundTropicalSunset()

        Text("Palm Beach")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundPalmBeach()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

#Preview("Childhood Backgrounds") {
    VStack(spacing: 20) {
        Text("Candy Land")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundCandyLand()

        Text("Balloon Party")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundBalloonParty()

        Text("Toy Blocks")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundToyBlocks()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

#Preview("Music Backgrounds") {
    VStack(spacing: 20) {
        Text("Jazz Night")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundJazzNight()

        Text("Classical Harmony")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundClassicalHarmony()

        Text("Rock Stage")
            .font(.title)
            .padding()
            .background(.white)
            .inMagicBackgroundRockStage()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

#Preview("With Custom Opacity") {
    VStack(spacing: 30) {
        Text("50% Opacity")
            .font(.title2)
            .padding()
            .background(.white)
            .inMagicBackgroundFrost(0.5)

        Text("70% Opacity")
            .font(.title2)
            .padding()
            .background(.white)
            .inMagicBackgroundFrost(0.7)

        Text("100% Opacity")
            .font(.title2)
            .padding()
            .background(.white)
            .inMagicBackgroundFrost(1.0)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
}

#Preview("Full Screen Card") {
    VStack {
        Text("Magic Background Demo")
            .font(.largeTitle)
            .fontWeight(.bold)

        Text("Apply beautiful backgrounds to any view")
            .font(.body)
            .multilineTextAlignment(.center)
            .padding()

        HStack(spacing: 20) {
            Button("Frost") {}
                .buttonStyle(.borderedProminent)

            Button("Ocean") {}
                .buttonStyle(.borderedProminent)

            Button("Sunset") {}
                .buttonStyle(.borderedProminent)
        }
    }
    .padding(40)
    .background(.ultraThinMaterial)
    .cornerRadius(20)
    .shadow(radius: 10)
    .padding(50)
    .inMagicBackgroundGradient()
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

#Preview("Clean Enum Syntax") {
    VStack(spacing: 30) {
        Text("New Clean Syntax")
            .font(.title)
            .fontWeight(.bold)

        Text("Using enum-based selector:")
            .font(.headline)

        VStack(spacing: 20) {
            Text("Ocean Background")
                .padding()
                .background(.white)
                .magicBackground(.ocean)

            Text("Frost Background")
                .padding()
                .background(.white)
                .magicBackground(.frost, opacity: 0.7)

            Text("Sunset Background")
                .padding()
                .background(.white)
                .magicBackground(.sunset)
        }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
}

#Preview("Comparing Syntaxes") {
    VStack(spacing: 20) {
        VStack(spacing: 10) {
            Text("Old Syntax:")
                .font(.caption)
            Text(".inMagicBackgroundOcean()")
                .font(.system(.body, design: .monospaced))
                .padding()
                .inMagicBackgroundOcean()
        }

        VStack(spacing: 10) {
            Text("New Syntax:")
                .font(.caption)
            Text(".magicBackground(.ocean)")
                .font(.system(.body, design: .monospaced))
                .padding()
                .magicBackground(.ocean)
        }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
}

#Preview("Direct MagicBackground Usage") {
    VStack(spacing: 30) {
        Text("Direct Background Syntax")
            .font(.title)
            .fontWeight(.bold)

        VStack(spacing: 20) {
            Text("Ocean")
                .padding()
                .background(.white)
                .background(MagicBackground.ocean)

            Text("Frost")
                .padding()
                .background(.white)
                .background(MagicBackground.frost)

            Text("Sunset")
                .padding()
                .background(.white)
                .background(MagicBackground.sunset)

            Text("With opacity: 0.5")
                .padding()
                .background(.white)
                .background(MagicBackground.frost.opacity(0.5))
        }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
}

#endif
