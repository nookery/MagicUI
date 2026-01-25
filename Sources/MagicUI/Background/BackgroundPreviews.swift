import SwiftUI

#if DEBUG
    /// Preview of all MagicBackground styles
    struct BackgroundPreviews: View {
        var body: some View {
            VStack(spacing: 40) {
                // Basic Backgrounds Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("Basic Backgrounds")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    VStack(spacing: 15) {
                        Text("Frost")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundFrost()

                        Text("Gradient")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundGradient()

                        Text("Aurora")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundAurora()
                    }
                }

                // Nature Backgrounds Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("Nature Backgrounds")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    VStack(spacing: 15) {
                        Text("Ocean")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundOcean()

                        Text("Forest")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundForest()

                        Text("Sunset")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundSunset()

                        Text("Mountain")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundSnowPeak()
                    }
                }

                // Color Backgrounds Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("Color Backgrounds")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    VStack(spacing: 15) {
                        Text("Lavender")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundLavender()

                        Text("Rose")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundRose()

                        Text("Mint")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundMint()

                        Text("Coral")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundCoral()
                    }
                }

                // Cosmic Backgrounds Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("Cosmic Backgrounds")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    VStack(spacing: 15) {
                        Text("Cosmic Dust")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundCosmicDust()

                        Text("Galaxy Spiral")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundGalaxySpiral()

                        Text("Nebula")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundNebulaMist()
                    }
                }

                // Food Backgrounds Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("Food Backgrounds")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    VStack(spacing: 15) {
                        Text("Watermelon")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundWatermelon()

                        Text("Strawberry")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundStrawberry()

                        Text("Orange")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundOrange()

                        Text("Blueberry")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundBlueberry()
                    }
                }

                // Beach Backgrounds Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("Beach Backgrounds")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    VStack(spacing: 15) {
                        Text("Sunny Beach")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundSunnyBeach()

                        Text("Tropical Sunset")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundTropicalSunset()

                        Text("Palm Beach")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundPalmBeach()
                    }
                }

                // Childhood Backgrounds Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("Childhood Backgrounds")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    VStack(spacing: 15) {
                        Text("Candy Land")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundCandyLand()

                        Text("Balloon Party")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundBalloonParty()

                        Text("Toy Blocks")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundToyBlocks()
                    }
                }

                // Music Backgrounds Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("Music Backgrounds")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    VStack(spacing: 15) {
                        Text("Jazz Night")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundJazzNight()

                        Text("Classical Harmony")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundClassicalHarmony()

                        Text("Rock Stage")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .inMagicBackgroundRockStage()
                    }
                }
            }
            .p4()
            .inScrollView()
            .frame(height: 750)
            .frame(width: 550)
        }
    }

    #Preview("All Magic Backgrounds") {
        BackgroundPreviews()
    }

#endif
