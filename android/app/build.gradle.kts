plugins {
    id("com.android.application")
    id("com.google.gms.google-services") // keep only if you use Firebase/Play services
    id("org.jetbrains.kotlin.android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    // TODO: set this to your real package
    namespace = "com.example.first_aid_app"

    // Versions from Flutter’s Gradle plugin
    compileSdk = flutter.compileSdkVersion.toInt()
    ndkVersion = flutter.ndkVersion

    defaultConfig {
        // TODO: set to your real app id
        applicationId = "com.example.first_aid_app"

        // ✅ Kotlin DSL assignments (no minSdkVersion/targetSdkVersion functions)
        minSdk = flutter.minSdkVersion.toInt()
        targetSdk = flutter.targetSdkVersion.toInt()

        versionCode = flutter.versionCode.toInt()
        versionName = flutter.versionName

        // If minSdk < 21 you likely need multidex
        multiDexEnabled = true
    }

    buildTypes {
        debug {
            // Don’t shrink in debug to avoid earlier error
            isMinifyEnabled = false
            isShrinkResources = false
        }
        release {
            // Enable these together only if you want shrinking
            // isMinifyEnabled = true
            // isShrinkResources = true
            signingConfig = signingConfigs.getByName("debug")
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    kotlinOptions {
        jvmTarget = "17"
    }

    packaging {
        resources {
            // adjust if needed
            excludes += "/META-INF/{AL2.0,LGPL2.1}"
        }
    }
}

dependencies {
    implementation("org.jetbrains.kotlin:kotlin-stdlib")
    implementation("androidx.multidex:multidex:2.0.1")

    // Firebase (optional): use BoM, then add the libs you need below
    implementation(platform("com.google.firebase:firebase-bom:33.15.0"))
    // e.g.
    // implementation("com.google.firebase:firebase-analytics-ktx")
    // implementation("com.google.firebase:firebase-auth-ktx")
    // implementation("com.google.firebase:firebase-firestore-ktx")
    // implementation("com.google.firebase:firebase-messaging-ktx")
}

flutter {
    source = "../.."
}
