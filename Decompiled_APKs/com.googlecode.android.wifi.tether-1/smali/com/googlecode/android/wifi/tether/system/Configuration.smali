.class public Lcom/googlecode/android/wifi/tether/system/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "NewApi"
    }
.end annotation


# static fields
.field public static final DEVICE_BLADE:Ljava/lang/String; = "blade"

.field public static final DEVICE_BRAVO:Ljava/lang/String; = "bravo"

.field public static final DEVICE_BRAVOC:Ljava/lang/String; = "bravoc"

.field public static final DEVICE_CDMADROID2:Ljava/lang/String; = "cdma_droid2"

.field public static final DEVICE_CDMASHADOW:Ljava/lang/String; = "cdma_shadow"

.field public static final DEVICE_CDMASHOLES:Ljava/lang/String; = "cdma_sholes"

.field public static final DEVICE_CDMASOLANA:Ljava/lang/String; = "cdma_solana"

.field public static final DEVICE_CDMASPYDER:Ljava/lang/String; = "cdma_spyder"

.field public static final DEVICE_CDMATARGA:Ljava/lang/String; = "cdma_targa"

.field public static final DEVICE_CDMAVENUS2:Ljava/lang/String; = "cdma_venus2"

.field public static final DEVICE_CRESPO:Ljava/lang/String; = "crespo"

.field public static final DEVICE_CRESPO4G:Ljava/lang/String; = "crespo4g"

.field public static final DEVICE_D2ATT:Ljava/lang/String; = "d2att"

.field public static final DEVICE_D2SPR:Ljava/lang/String; = "d2spr"

.field public static final DEVICE_D2TMO:Ljava/lang/String; = "d2tmo"

.field public static final DEVICE_D2USC:Ljava/lang/String; = "d2usc"

.field public static final DEVICE_D2VZW:Ljava/lang/String; = "d2vzw"

.field public static final DEVICE_DREAM:Ljava/lang/String; = "dream"

.field public static final DEVICE_DROID2WE:Ljava/lang/String; = "cdma_droid2we"

.field public static final DEVICE_EDISON:Ljava/lang/String; = "edison"

.field public static final DEVICE_GALAXYSL:Ljava/lang/String; = "galaxysl"

.field public static final DEVICE_GENERIC:Ljava/lang/String; = "generic"

.field public static final DEVICE_GENERIC_ICS:Ljava/lang/String; = "generic_ics"

.field public static final DEVICE_GENERIC_ICS_WLAN1:Ljava/lang/String; = "generic_ics_wlan1"

.field public static final DEVICE_GTI9000:Ljava/lang/String; = "GT-I9000"

.field public static final DEVICE_GTI9100:Ljava/lang/String; = "GT-I9100"

.field public static final DEVICE_GTI9300:Ljava/lang/String; = "GT-I9300"

.field public static final DEVICE_HERO:Ljava/lang/String; = "hero"

.field public static final DEVICE_HEROC:Ljava/lang/String; = "heroc"

.field public static final DEVICE_LS855:Ljava/lang/String; = "ls855"

.field public static final DEVICE_LU3000:Ljava/lang/String; = "ls3000"

.field public static final DEVICE_MAGURO:Ljava/lang/String; = "maguro"

.field public static final DEVICE_MECHA:Ljava/lang/String; = "mecha"

.field public static final DEVICE_P920:Ljava/lang/String; = "p920"

.field public static final DEVICE_P925:Ljava/lang/String; = "p925"

.field public static final DEVICE_P925G:Ljava/lang/String; = "p925g"

.field public static final DEVICE_P970:Ljava/lang/String; = "p970"

.field public static final DEVICE_P970G:Ljava/lang/String; = "p970g"

.field public static final DEVICE_PASSION:Ljava/lang/String; = "passion"

.field public static final DEVICE_PYRAMID:Ljava/lang/String; = "pyramid"

.field public static final DEVICE_RUBY:Ljava/lang/String; = "ruby"

.field public static final DEVICE_SAPPHIRE:Ljava/lang/String; = "sapphire"

.field public static final DEVICE_SCHI500:Ljava/lang/String; = "SCH-I500"

.field public static final DEVICE_SCHI510:Ljava/lang/String; = "SCH-I510"

.field public static final DEVICE_SCHR910:Ljava/lang/String; = "SCH-R910"

.field public static final DEVICE_SGHI897:Ljava/lang/String; = "SGH-I897"

.field public static final DEVICE_SPHD700:Ljava/lang/String; = "SPH-D700"

.field public static final DEVICE_SPHD710:Ljava/lang/String; = "SPH-D710"

.field public static final DEVICE_SUPERSONIC:Ljava/lang/String; = "supersonic"

.field public static final DEVICE_THUNDERC:Ljava/lang/String; = "thunderc"

.field public static final DEVICE_TORO:Ljava/lang/String; = "toro"

.field public static final DEVICE_UMTSDROID2:Ljava/lang/String; = "umts_droid2"

.field public static final DEVICE_UMTSJORDAN:Ljava/lang/String; = "umts_jordan"

.field public static final DEVICE_UMTSSHADOW:Ljava/lang/String; = "umts_shadow"

.field public static final DEVICE_UMTSSHOLES:Ljava/lang/String; = "umts_sholes"

.field public static final DEVICE_UMTSSOLANA:Ljava/lang/String; = "umts_solana"

.field public static final DEVICE_UMTSSPYDER:Ljava/lang/String; = "umts_spyder"

.field public static final DEVICE_UMTSVENUS2:Ljava/lang/String; = "umts_venus2"

.field public static final DEVICE_VIGOR:Ljava/lang/String; = "vigor"

.field public static final MSG_TAG:Ljava/lang/String; = "TETHER -> Configuration"

.field public static final SDK_EC:I = 0x5

.field public static final SDK_FR:I = 0x7

.field public static final SDK_GB:I = 0x9

.field public static final SDK_ICS:I = 0xe

.field public static final SDK_JB:I = 0x10


# instance fields
.field private autoInternalNetSetup:Z

.field private autoSetupMethod:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private encryptionIdentifier:Ljava/lang/String;

.field private genericSetupSection:Z

.field private hostapdInterface:Ljava/lang/String;

.field private hostapdKernelModuleName:Ljava/lang/String;

.field private hostapdKernelModulePath:Ljava/lang/String;

.field private hostapdLoaderCmd:Ljava/lang/String;

.field private hostapdPath:Ljava/lang/String;

.field private hostapdSupported:Z

.field private hostapdTemplate:Ljava/lang/String;

.field private netdInterface:Ljava/lang/String;

.field private netdNdcSupported:Z

.field private netdSupported:Z

.field private opennetworkIdentifier:Ljava/lang/String;

.field private sdk:I

.field private softapFirmwarePath:Ljava/lang/String;

.field private softapInterface:Ljava/lang/String;

.field private softapSamsungSupported:Z

.field private softapSupported:Z

.field private tiadhocInterface:Ljava/lang/String;

.field private tiadhocSupported:Z

.field private wextInterface:Ljava/lang/String;

.field private wextSupported:Z

.field private wifiLoadCmd:Ljava/lang/String;

.field private wifiUnloadCmd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, "generic"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    .line 103
    iput v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->sdk:I

    .line 105
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 106
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 107
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 108
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 109
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 110
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 111
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 112
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoInternalNetSetup:Z

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdPath:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModulePath:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModuleName:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdInterface:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdTemplate:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdLoaderCmd:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocInterface:Ljava/lang/String;

    .line 135
    const-string v0, "wep"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 136
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 139
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 143
    const-string v0, "none"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiLoadCmd:Ljava/lang/String;

    .line 144
    const-string v0, "none"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiUnloadCmd:Ljava/lang/String;

    .line 147
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->sdk:I

    .line 149
    const-string v0, "TETHER -> Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device [ Model / SDK ] *Auto_Detected*: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->sdk:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupDevice()V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "device"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, "generic"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    .line 103
    iput v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->sdk:I

    .line 105
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 106
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 107
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 108
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 109
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 110
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 111
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 112
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoInternalNetSetup:Z

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdPath:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModulePath:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModuleName:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdInterface:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdTemplate:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdLoaderCmd:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocInterface:Ljava/lang/String;

    .line 135
    const-string v0, "wep"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 136
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 139
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 143
    const-string v0, "none"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiLoadCmd:Ljava/lang/String;

    .line 144
    const-string v0, "none"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiUnloadCmd:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->sdk:I

    .line 157
    const-string v0, "TETHER -> Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device [ Model / SDK ] *User_Selected*: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->sdk:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupDevice()V

    .line 159
    return-void
.end method

.method public static hasKernelFeature(Ljava/lang/String;)Z
    .locals 8
    .parameter "feature"

    .prologue
    const/4 v6, 0x1

    .line 1075
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v7, "/proc/config.gz"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1076
    .local v0, cfg:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1094
    .end local v0           #cfg:Ljava/io/File;
    :goto_0
    return v6

    .line 1079
    .restart local v0       #cfg:Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1080
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1081
    .local v3, gzin:Ljava/util/zip/GZIPInputStream;
    const/4 v4, 0x0

    .line 1082
    .local v4, in:Ljava/io/BufferedReader;
    const-string v5, ""

    .line 1083
    .local v5, line:Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedReader;

    .end local v4           #in:Ljava/io/BufferedReader;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1084
    .restart local v4       #in:Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1090
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 1094
    .end local v0           #cfg:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #gzin:Ljava/util/zip/GZIPInputStream;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1085
    .restart local v0       #cfg:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #gzin:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #in:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1086
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1091
    .end local v0           #cfg:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #gzin:Ljava/util/zip/GZIPInputStream;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1092
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setupBlade()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 341
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 342
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 343
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 344
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 345
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 347
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 350
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/hostapd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 352
    const-string v0, "/system/bin/hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdPath:Ljava/lang/String;

    .line 353
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdInterface:Ljava/lang/String;

    .line 354
    const-string v0, "mini"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdTemplate:Ljava/lang/String;

    .line 355
    const-string v0, "hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 356
    const-string v0, "disabled"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdLoaderCmd:Ljava/lang/String;

    .line 362
    :goto_0
    const-string v0, "wlap0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 363
    const-string v0, "wpa"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 364
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 367
    const-string v0, "/system/wifi/ar6000.ko"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModulePath:Ljava/lang/String;

    .line 368
    const-string v0, "ar6000"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModuleName:Ljava/lang/String;

    .line 370
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 371
    return-void

    .line 359
    :cond_0
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 360
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupDevice()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "blade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupBlade()V

    .line 319
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "passion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupSoftapGoogle()V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "GT-I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupGTI9000()V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 178
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupGenericNetdWlan0()V

    goto :goto_0

    .line 180
    :cond_4
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupGTI9100()V

    goto :goto_0

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "crespo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "crespo4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    :cond_6
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupGenericNetdWlan0()V

    goto :goto_0

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "maguro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "toro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    :cond_8
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupGenericNetdWlan0()V

    goto :goto_0

    .line 193
    :cond_9
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "GT-I9300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 194
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "d2spr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 195
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "d2usc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 196
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "d2tmo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 197
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "d2att"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "d2vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 199
    :cond_a
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupGenericNetdWlan0()V

    goto/16 :goto_0

    .line 202
    :cond_b
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "thunderc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 203
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupThunderc()V

    goto/16 :goto_0

    .line 205
    :cond_c
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "bravoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 206
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "bravo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 207
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "supersonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 208
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "pyramid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 209
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "mecha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 210
    :cond_d
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupSoftapHTC()V

    goto/16 :goto_0

    .line 212
    :cond_e
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 213
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "sapphire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 214
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "hero"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 215
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "heroc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 216
    :cond_f
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupTiAdhoc()V

    goto/16 :goto_0

    .line 218
    :cond_10
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "SGH-I897"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 219
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "SCH-I500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 220
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "SCH-I510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 222
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "SCH-R910"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 223
    :cond_11
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupSoftapSamsung()V

    goto/16 :goto_0

    .line 226
    :cond_12
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "ls855"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 227
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "ls3000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 228
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "p970"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 229
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "p970g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 230
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "galaxysl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 231
    :cond_13
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapLGomap3()V

    goto/16 :goto_0

    .line 234
    :cond_14
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "p920"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 235
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "p925"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 236
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "p925g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 237
    :cond_15
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapLGomap4()V

    goto/16 :goto_0

    .line 240
    :cond_16
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "cdma_droid2we"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 241
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "umts_sholes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 242
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "umts_jordan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 243
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "cdma_shadow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 244
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "umts_shadow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 245
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "cdma_droid2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 246
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "umts_droid2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 247
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "cdma_venus2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 248
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "umts_venus2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 249
    :cond_17
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapMotOMAP3()V

    goto/16 :goto_0

    .line 252
    :cond_18
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "edison"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 253
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "cdma_targa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 254
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "cdma_solana"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 255
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "umts_solana"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 256
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "cdma_spyder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 257
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "umts_spyder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 258
    :cond_19
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapMotOMAP4()V

    goto/16 :goto_0

    .line 261
    :cond_1a
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "ruby"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 262
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapGenWiLink7()V

    goto/16 :goto_0

    .line 264
    :cond_1b
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "generic_ics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 265
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupGenericNetdWlan0()V

    goto/16 :goto_0

    .line 267
    :cond_1c
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "generic_ics_wlan1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 268
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupGenericNetdWlan1()V

    goto/16 :goto_0

    .line 270
    :cond_1d
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    const-string v1, "vigor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 271
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupNetdHTCRezound()V

    goto/16 :goto_0

    .line 275
    :cond_1e
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/firmware/fw_bcm4329_apsta.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 276
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/firmware/fw_bcm4329_apsta.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 277
    :cond_1f
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/modules/bcm4329.ko"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 278
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupSoftapHTC()V

    goto/16 :goto_0

    .line 281
    :cond_20
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/Hostapd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 282
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/wlan_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 283
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/fw_tiwlan_ap.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 284
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 285
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapMotOMAP3()V

    goto/16 :goto_0

    .line 288
    :cond_21
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/Hostapd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 289
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/tiap_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 290
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/fw_wlan1281_AP.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 291
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 292
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapMotOMAP4()V

    goto/16 :goto_0

    .line 295
    :cond_22
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/hostapd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 296
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/tiap_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 297
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/softap/firmware_ap.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 298
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/softap/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 299
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapLGomap3()V

    goto/16 :goto_0

    .line 302
    :cond_23
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/hostap"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 303
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/tiap_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 304
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/softap/firmware_ap.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 305
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/softap/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 306
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapLGomap4()V

    goto/16 :goto_0

    .line 309
    :cond_24
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/hostapd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 310
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/tiap_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 311
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/firmware_ap.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 312
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 313
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupHostapGenWiLink7()V

    goto/16 :goto_0

    .line 316
    :cond_25
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/system/Configuration;->setupGeneric()V

    goto/16 :goto_0
.end method

.method private setupGTI9000()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 752
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 753
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 754
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 755
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 756
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 757
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 758
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 760
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 762
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 763
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 764
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 765
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 767
    const-string v0, "/etc/wifi/bcm4329_aps.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 769
    const-string v0, "none"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiLoadCmd:Ljava/lang/String;

    .line 770
    const-string v0, "/system/bin/mfgloader -u;/system/bin/rmmod dhd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiUnloadCmd:Ljava/lang/String;

    .line 772
    const-string v0, "softap"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 773
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 775
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/ndc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 777
    const-string v0, "netdndc"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 779
    :cond_0
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 781
    :cond_1
    return-void
.end method

.method private setupGTI9100()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 787
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 788
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 789
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 790
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 791
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 792
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 793
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 795
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 797
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 798
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 799
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 800
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 802
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/vendor/firmware/bcm4330_aps.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 803
    const-string v0, "/system/vendor/firmware/bcm4330_aps.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 815
    :cond_0
    :goto_0
    const-string v0, "none"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiLoadCmd:Ljava/lang/String;

    .line 816
    const-string v0, "/system/bin/mfgloader -u;/system/bin/rmmod dhd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiUnloadCmd:Ljava/lang/String;

    .line 818
    const-string v0, "netd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 819
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 821
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/ndc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 823
    const-string v0, "netdndc"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 825
    :cond_1
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 827
    :cond_2
    return-void

    .line 805
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/bcm4330_aps.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 806
    const-string v0, "/system/etc/wifi/bcm4330_aps.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    goto :goto_0

    .line 808
    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/wifi/bcm4330_aps.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    const-string v0, "/etc/wifi/bcm4330_aps.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupGeneric()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 945
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 946
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 947
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 948
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 949
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 951
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 952
    const-string v0, "wep"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 953
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 954
    return-void
.end method

.method private setupGenericNetdWlan0()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 667
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 668
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 669
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 670
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 671
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 672
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 673
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 675
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 677
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 678
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 679
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 680
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 682
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 684
    const-string v0, "netd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 685
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 687
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/ndc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 689
    const-string v0, "netdndc"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 691
    :cond_0
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 693
    :cond_1
    return-void
.end method

.method private setupGenericNetdWlan1()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 696
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 697
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 698
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 699
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 700
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 701
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 702
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 704
    const-string v0, "wlan1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 706
    const-string v0, "wlan1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 707
    const-string v0, "wlan1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 708
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 709
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 711
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 713
    const-string v0, "netd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 714
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 716
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/ndc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 718
    const-string v0, "netdndc"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 720
    :cond_0
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 722
    :cond_1
    return-void
.end method

.method private setupHostapGenWiLink7()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 494
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 495
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 496
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 497
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 499
    const-string v0, "tiwlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 502
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/hostapd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/tiap_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/firmware_ap.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 507
    const-string v0, "/system/bin/hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdPath:Ljava/lang/String;

    .line 508
    const-string v0, "tiap0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdInterface:Ljava/lang/String;

    .line 510
    const-string v0, "droi"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdTemplate:Ljava/lang/String;

    .line 511
    const-string v0, "hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 512
    const-string v0, "/system/bin/tiap_loader tiap0 -f /system/etc/wifi/firmware_ap.bin -e /proc/calibration -i /system/etc/wifi/tiwlan_ap.ini"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdLoaderCmd:Ljava/lang/String;

    .line 515
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 516
    const-string v0, "wpa"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 517
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 520
    const-string v0, "/system/lib/modules/tiap_drv.ko"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModulePath:Ljava/lang/String;

    .line 521
    const-string v0, "tiap_drv"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModuleName:Ljava/lang/String;

    .line 523
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 524
    return-void
.end method

.method private setupHostapLGomap3()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 865
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 866
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 867
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 868
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 869
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 871
    const-string v0, "tiwlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 874
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/hostapd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/tiap_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/softap/firmware_ap.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/softap/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 879
    const-string v0, "/system/bin/hostap"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdPath:Ljava/lang/String;

    .line 880
    const-string v0, "tiap0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdInterface:Ljava/lang/String;

    .line 881
    const-string v0, "droi"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdTemplate:Ljava/lang/String;

    .line 882
    const-string v0, "hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 883
    const-string v0, "/system/bin/tiap_loader -f /system/etc/wifi/softap/firmware_ap.bin -i /system/etc/wifi/softap/tiwlan_ap.ini -e /data/misc/wifi/nvs_map.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdLoaderCmd:Ljava/lang/String;

    .line 890
    :goto_0
    const-string v0, "tiap0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 891
    const-string v0, "wpa"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 892
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 895
    const-string v0, "/system/etc/wifi/softap/tiap_drv.ko"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModulePath:Ljava/lang/String;

    .line 896
    const-string v0, "tiap_drv"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModuleName:Ljava/lang/String;

    .line 898
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 899
    return-void

    .line 886
    :cond_0
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 887
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupHostapLGomap4()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 905
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 906
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 907
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 908
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 909
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 911
    const-string v0, "tiwlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 914
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/hostap"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/tiap_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/softap/firmware_ap.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/softap/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 919
    const-string v0, "/system/bin/hostap"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdPath:Ljava/lang/String;

    .line 920
    const-string v0, "tiap0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdInterface:Ljava/lang/String;

    .line 921
    const-string v0, "droi"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdTemplate:Ljava/lang/String;

    .line 922
    const-string v0, "hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 923
    const-string v0, "/system/bin/tiap_loader -f /system/etc/wifi/softap/firmware_ap.bin -i /system/etc/wifi/softap/tiwlan_ap.ini -e /data/misc/wifi/nvs_map.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdLoaderCmd:Ljava/lang/String;

    .line 930
    :goto_0
    const-string v0, "tiap0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 931
    const-string v0, "wpa"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 932
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 935
    const-string v0, "/system/etc/wifi/softap/tiap_drv.ko"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModulePath:Ljava/lang/String;

    .line 936
    const-string v0, "tiap_drv"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModuleName:Ljava/lang/String;

    .line 938
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 939
    return-void

    .line 926
    :cond_0
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 927
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupHostapMotOMAP3()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 530
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 531
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 532
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 533
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 534
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 536
    const-string v0, "tiwlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 539
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/Hostapd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/wlan_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/fw_tiwlan_ap.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 544
    const-string v0, "/system/bin/Hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdPath:Ljava/lang/String;

    .line 545
    const-string v0, "tiwlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdInterface:Ljava/lang/String;

    .line 546
    const-string v0, "droi"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdTemplate:Ljava/lang/String;

    .line 547
    const-string v0, "hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 548
    const-string v0, "/system/bin/wlan_loader -f /system/etc/wifi/fw_tiwlan_ap.bin -i /system/etc/wifi/tiwlan_ap.ini -e /pds/wifi/nvs_map.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdLoaderCmd:Ljava/lang/String;

    .line 555
    :goto_0
    const-string v0, "wlan1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 556
    const-string v0, "wpa"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 557
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 560
    const-string v0, "/system/lib/modules/tiap_drv.ko"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModulePath:Ljava/lang/String;

    .line 561
    const-string v0, "tiap_drv"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModuleName:Ljava/lang/String;

    .line 563
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_0

    .line 566
    const-string v0, "netd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 567
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 568
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 569
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 571
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/ndc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 573
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    .line 574
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 575
    const-string v0, "netdndc"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 578
    :cond_1
    return-void

    .line 551
    :cond_2
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 552
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupHostapMotOMAP4()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 584
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 585
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 586
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 587
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 588
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 590
    const-string v0, "tiwlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 593
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/Hostapd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/tiap_loader"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/fw_wlan1281_AP.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/tiwlan_ap.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 598
    const-string v0, "/system/bin/Hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdPath:Ljava/lang/String;

    .line 599
    const-string v0, "tiap0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdInterface:Ljava/lang/String;

    .line 600
    const-string v0, "droi"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdTemplate:Ljava/lang/String;

    .line 601
    const-string v0, "hostapd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 602
    const-string v0, "/system/bin/tiap_loader -f /system/etc/wifi/fw_wlan1281_AP.bin -i /system/etc/wifi/tiwlan_ap.ini -e /pds/wifi/nvs_map.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdLoaderCmd:Ljava/lang/String;

    .line 608
    :goto_0
    const-string v0, "wlan1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 609
    const-string v0, "wpa"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 610
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 613
    const-string v0, "/system/lib/modules/tiap_drv.ko"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModulePath:Ljava/lang/String;

    .line 614
    const-string v0, "tiap_drv"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModuleName:Ljava/lang/String;

    .line 616
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 618
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_0

    .line 619
    const-string v0, "netd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 620
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 621
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 622
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 624
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/ndc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 626
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    .line 627
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 628
    const-string v0, "netdndc"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 631
    :cond_1
    return-void

    .line 605
    :cond_2
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 606
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupNetdHTCRezound()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 414
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 415
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 416
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 417
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 418
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 419
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 420
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoInternalNetSetup:Z

    .line 421
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 424
    iget v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->sdk:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 427
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 428
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 429
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 430
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/firmware/fw_bcm4330_apsta_b1.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/modules/bcmdhd.ko"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "/etc/firmware/fw_bcm4330_apsta_b1.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 447
    :cond_0
    :goto_0
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 448
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 451
    const-string v0, "netd"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 452
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 454
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/ndc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 457
    :cond_1
    return-void

    .line 438
    :cond_2
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 439
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 440
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 441
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/firmware/fw_bcm4329_apsta.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/modules/bcm4329.ko"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const-string v0, "/etc/firmware/fw_bcm4329_apsta.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupSoftapGoogle()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 378
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 379
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 380
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 381
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 382
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 383
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 384
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoInternalNetSetup:Z

    .line 385
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 387
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 389
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 390
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 391
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 392
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 394
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/firmware/fw_bcm4329_apsta.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    const-string v0, "/vendor/firmware/fw_bcm4329_apsta.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 401
    :cond_0
    :goto_0
    const-string v0, "softap"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 402
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 404
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/ndc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    .line 408
    :cond_1
    return-void

    .line 397
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/firmware/fw_bcm4329_apsta.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "/etc/firmware/fw_bcm4329_apsta.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupSoftapHTC()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 464
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 465
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 466
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 467
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 468
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 469
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 471
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 473
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 474
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 475
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 476
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/firmware/fw_bcm4329_apsta.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    const-string v0, "/vendor/firmware/fw_bcm4329_apsta.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 485
    :cond_0
    :goto_0
    const-string v0, "softap"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 486
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 487
    return-void

    .line 481
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/firmware/fw_bcm4329_apsta.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "/etc/firmware/fw_bcm4329_apsta.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupSoftapSamsung()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 637
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 638
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 639
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 640
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 641
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 642
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 644
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 646
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 648
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 649
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 650
    const-string v0, "wep"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 651
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 653
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/wifi/bcm4329_aps.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const-string v0, "/etc/wifi/bcm4329_aps.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 655
    const-string v0, "softap_samsung"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 656
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 657
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 658
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 660
    :cond_0
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 661
    return-void
.end method

.method private setupThunderc()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 834
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 835
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 836
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 837
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 838
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    .line 839
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 841
    const-string v0, "eth0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    .line 843
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    .line 844
    const-string v0, "wl0.1"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    .line 845
    const-string v0, "wpa2-psk"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    .line 846
    const-string v0, "open"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    .line 848
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/wl/rtecdc-apsta.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const-string v0, "/etc/wl/rtecdc-apsta.bin"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    .line 850
    const-string v0, "softap"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 851
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 852
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 858
    :goto_0
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 859
    return-void

    .line 854
    :cond_0
    const-string v0, "wext"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 855
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 856
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    goto :goto_0
.end method

.method private setupTiAdhoc()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    .line 327
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    .line 328
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    .line 329
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    .line 330
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    .line 331
    const-string v0, "tiwlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocInterface:Ljava/lang/String;

    .line 332
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    .line 333
    const-string v0, "tiwlan0"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    .line 334
    return-void
.end method


# virtual methods
.method public getAutoSetupMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoSetupMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->encryptionIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getHostapdInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdInterface:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHostapdKernelModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModuleName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHostapdKernelModulePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdKernelModulePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHostapdLoaderCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdLoaderCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getHostapdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHostapdTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getNetdInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getOpennetworkIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->opennetworkIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftapFirmwarePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapFirmwarePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftapInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getTiadhocInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getWextInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiLoadCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiLoadCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiUnloadCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiUnloadCmd:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoInternalNetSetup()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoInternalNetSetup:Z

    return v0
.end method

.method public isGenericSetupSection()Z
    .locals 1

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->genericSetupSection:Z

    return v0
.end method

.method public isHostapdSupported()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->hostapdSupported:Z

    return v0
.end method

.method public isNetdNdcSupported()Z
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdNdcSupported:Z

    return v0
.end method

.method public isNetdSupported()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->netdSupported:Z

    return v0
.end method

.method public isSoftapSamsungSupported()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSamsungSupported:Z

    return v0
.end method

.method public isSoftapSupported()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->softapSupported:Z

    return v0
.end method

.method public isTiadhocSupported()Z
    .locals 1

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->tiadhocSupported:Z

    return v0
.end method

.method public isWextSupported()Z
    .locals 1

    .prologue
    .line 970
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wextSupported:Z

    return v0
.end method

.method public setAutoInternalConfig(Z)V
    .locals 0
    .parameter "autoInternalConfig"

    .prologue
    .line 1038
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->autoInternalNetSetup:Z

    .line 1039
    return-void
.end method

.method public setWifiLoadCmd(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiLoadCmd"

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiLoadCmd:Ljava/lang/String;

    .line 1063
    return-void
.end method

.method public setWifiUnloadCmd(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiUnloadCmd"

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/system/Configuration;->wifiUnloadCmd:Ljava/lang/String;

    .line 1071
    return-void
.end method
