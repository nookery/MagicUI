import SwiftUI

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

#if DEBUG
    #Preview("Background Extensions") {
        BackgroundPreviews()
            .frame(height: 750)
            .frame(width: 550)
    }
#endif
