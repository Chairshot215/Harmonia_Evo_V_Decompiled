.class public abstract Lcom/google/android/apps/uploader/googlemobile/common/Config;
.super Ljava/lang/Object;


# static fields
.field private static ADS_CLIENT:Ljava/lang/String; = null

.field protected static ALT_ARROWS_ENABLED:Z = false

.field protected static ALT_DOWN:I = 0x0

.field protected static ALT_LEFT:I = 0x0

.field private static ALT_NUMBER_KEYS:[I = null

.field protected static ALT_RIGHT:I = 0x0

.field protected static ALT_UP:I = 0x0

.field public static final BUILD_NUMBER:Ljava/lang/String; = "999"

.field private static CARRIER:Ljava/lang/String; = null

.field protected static final CONFIG_SOURCE:Ljava/lang/String; = "CONFIG"

.field private static DISTRIBUTION_CHANNEL:Ljava/lang/String; = null

.field public static final FAKE_KEY_RANGE:I = -0x2706

.field public static KEY_BACK:I = 0x0

.field public static KEY_CLEAR:I = 0x0

.field public static KEY_MENU:I = 0x0

.field public static KEY_OK:I = 0x0

.field public static KEY_POUND:I = 0x0

.field public static KEY_SIDE_DOWN:I = 0x0

.field public static KEY_SIDE_SELECT:I = 0x0

.field public static KEY_SIDE_UP:I = 0x0

.field public static KEY_SOFT_LEFT:I = 0x0

.field public static KEY_SOFT_MIDDLE:I = 0x0

.field public static KEY_SOFT_RIGHT:I = 0x0

.field public static KEY_STAR:I = 0x0

.field public static KEY_TALK:I = 0x0

.field public static KEY_VOICE_SEARCH:I = 0x0

.field public static final NETWORK_CDMA:Ljava/lang/String; = "CDMA"

.field public static final NETWORK_EDGE:Ljava/lang/String; = "EDGE"

.field public static final NETWORK_GPRS:Ljava/lang/String; = "GPRS"

.field public static final NETWORK_UMTS:Ljava/lang/String; = "UMTS"

.field public static final NETWORK_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final NETWORK_WIFI:Ljava/lang/String; = "WiFi"

.field public static QWERTY_KEYBOARD:Z = false

.field static final RESOURCE_SIGNATURE_AND_VERSION:I = 0xfab2

.field public static REVERSE_SOFTKEYS:Z = false

.field public static SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z = false

.field public static SOFTKEY_HEIGHT:I = 0x0

.field public static final UNKNOWN:I = -0x270f

.field public static USE_NATIVE_COMMANDS:Z = false

.field public static USE_NATIVE_MENUS:Z = false

.field public static final VALUE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

.field private static jpegTested:Z

.field private static supportsJpeg:Z


# instance fields
.field private final clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

.field private i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, -0x270f

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_BACK:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_LEFT:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_MIDDLE:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_RIGHT:I

    const/16 v0, 0x2a

    sput v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_STAR:I

    const/16 v0, 0x23

    sput v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_POUND:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_MENU:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_OK:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_TALK:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_VOICE_SEARCH:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_CLEAR:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SIDE_UP:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SIDE_DOWN:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SIDE_SELECT:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_UP:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_DOWN:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_LEFT:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_RIGHT:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_ARROWS_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/GenericClock;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/GenericClock;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    return-void
.end method

.method public static getAdsClient()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ADS_CLIENT:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBooleanProperty(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCarrier()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->CARRIER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDigit(I)I
    .locals 2

    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    sub-int v0, p0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getDistributionChannel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    return-object v0
.end method

.method public static getIntProperty(Ljava/lang/Object;Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLocale()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    iget-object v1, v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getUiLocale()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSystemLocale()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    iget-object v1, v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getSystemLocale()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAlphanumeric(I)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaVersion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDigit(I)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getDigit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapanLocale()Z
    .locals 2

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLetter(I)Z
    .locals 3

    const/4 v2, 0x0

    if-lez p0, :cond_2

    const v0, 0xffff

    if-gt p0, v0, :cond_2

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static isRTL()Z
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->isRTL()Z

    move-result v0

    return v0
.end method

.method public static loadStringResourcesFromInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->loadStringResourcesFromInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static localizedRemoteString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getRemoteLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static localizedString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getLocale()Ljava/lang/String;

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getEmbeddedLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAltArrowKeys(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_ARROWS_ENABLED:Z

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_UP:I

    aget v1, v0, v2

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_LEFT:I

    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_DOWN:I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_RIGHT:I

    :cond_0
    return-void
.end method

.method private static parseAltKeys(ILjava/lang/String;)[I
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v5

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    new-array v0, p0, [I

    move v2, v1

    :goto_1
    const-string v3, ","

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    move v1, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v3, p0, :cond_1

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CONFIG"

    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CONFIG"

    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static parseAltNumberKeys(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_NUMBER_KEYS:[I

    return-void
.end method

.method public static setConfig(Lcom/google/android/apps/uploader/googlemobile/common/Config;)V
    .locals 0

    sput-object p0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->instance:Lcom/google/android/apps/uploader/googlemobile/common/Config;

    return-void
.end method


# virtual methods
.method public assertNotOnUiThread()V
    .locals 0

    return-void
.end method

.method public assertOnUiThread()V
    .locals 0

    return-void
.end method

.method public createAudioPlayer()Lcom/google/android/apps/uploader/googlemobile/common/media/AudioPlayer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAdsClientInternal()Ljava/lang/String;
    .locals 1

    const-string v0, "AdsClient"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAppProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public getClock()Lcom/google/android/apps/uploader/googlemobile/common/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    return-object v0
.end method

.method public abstract getConnectionFactory()Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .locals 1

    const-string v0, "DistributionChannel"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFontFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/FontFactory;
.end method

.method public abstract getGameAction(Ljava/lang/Object;I)I
.end method

.method protected getI18n()Lcom/google/android/apps/uploader/googlemobile/common/I18n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    return-object v0
.end method

.method public abstract getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public getMinTouchablePixels()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->isPointerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNativeDateTimeFieldFactory()Lcom/google/android/apps/uploader/googlemobile/common/ui/NativeDateTimeFieldFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNativeTextFieldFactory()Lcom/google/android/apps/uploader/googlemobile/common/ui/NativeTextFieldFactory;
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    const-string v0, "Unknown"

    return-object v0
.end method

.method public abstract getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;
.end method

.method public abstract getPixelsPerInch()I
.end method

.method public getSignalLevel()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTcpConnectionFactory()Lcom/google/android/apps/uploader/googlemobile/common/io/TcpConnectionFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadFactory()Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;-><init>()V

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public hasBackButton()Z
    .locals 2

    sget v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_BACK:I

    const/16 v1, -0x270f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTrackball()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "DownloadLocale"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->init(Ljava/lang/String;)Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getDistributionChannelInternal()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "unknown"

    sput-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAdsClientInternal()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ADS_CLIENT:Ljava/lang/String;

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ADS_CLIENT:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "unknown"

    sput-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ADS_CLIENT:Ljava/lang/String;

    :cond_1
    const-string v1, "Carrier"

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->CARRIER:Ljava/lang/String;

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->CARRIER:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "unknown"

    sput-object v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->CARRIER:Ljava/lang/String;

    :cond_2
    const-string v1, "BackKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_BACK:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_BACK:I

    const-string v1, "LeftSoftKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_LEFT:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_LEFT:I

    const-string v1, "MiddleSoftKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_MIDDLE:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_MIDDLE:I

    const-string v1, "RightSoftKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_RIGHT:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_RIGHT:I

    const-string v1, "ReverseSoftkeys"

    const-string v2, "nokia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->REVERSE_SOFTKEYS:Z

    const-string v1, "SoftkeysOnSideInLandscape"

    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z

    const-string v1, "SideUpKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SIDE_UP:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SIDE_UP:I

    const-string v1, "SideDownKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SIDE_DOWN:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SIDE_DOWN:I

    const-string v1, "SideSelectKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SIDE_SELECT:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SIDE_SELECT:I

    const-string v1, "QwertyKeyboard"

    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->QWERTY_KEYBOARD:Z

    sget-boolean v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->REVERSE_SOFTKEYS:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_LEFT:I

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_RIGHT:I

    sput v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_LEFT:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_SOFT_RIGHT:I

    :cond_3
    const-string v1, "MenuKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_MENU:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_MENU:I

    const-string v1, "SelectKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_OK:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_OK:I

    const-string v1, "TalkKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_TALK:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_TALK:I

    const-string v1, "VoiceSearchKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_VOICE_SEARCH:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_VOICE_SEARCH:I

    const-string v1, "ClearKey"

    sget v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_CLEAR:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_CLEAR:I

    const-string v1, "UseNativeCommands"

    const-string v2, "nokia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "sony"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->USE_NATIVE_COMMANDS:Z

    const-string v0, "UseNativeMenus"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->USE_NATIVE_MENUS:Z

    const-string v0, "SoftkeyHeight"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->SOFTKEY_HEIGHT:I

    const-string v0, "AltNumberKeys"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->parseAltNumberKeys(Ljava/lang/String;)V

    const-string v0, "AltArrowKeys"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->parseAltArrowKeys(Ljava/lang/String;)V

    sget-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->USE_NATIVE_MENUS:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->USE_NATIVE_COMMANDS:Z

    if-nez v0, :cond_4

    sput-boolean v4, Lcom/google/android/apps/uploader/googlemobile/common/Config;->USE_NATIVE_COMMANDS:Z

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->setupGzipper()V

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public abstract isFire(Ljava/lang/Object;I)Z
.end method

.method public isPointerEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPointerEnabledNoSoftkey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mapKeyCode(I)I
    .locals 3

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_NUMBER_KEYS:[I

    if-eqz v0, :cond_5

    if-lez p1, :cond_4

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_NUMBER_KEYS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/common/Config;->ALT_NUMBER_KEYS:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_3

    const/16 v0, 0xa

    if-ne v1, v0, :cond_1

    sget v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_STAR:I

    :cond_0
    :goto_2
    return v0

    :cond_1
    const/16 v0, 0xb

    if-ne v1, v0, :cond_2

    sget v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->KEY_POUND:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x30

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, p1

    goto :goto_0

    :cond_5
    move v0, p1

    goto :goto_2
.end method

.method public resetForTest()V
    .locals 0

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/util/RuntimeCheck;->checkUnitTest()V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method

.method public setRemoteStringResources([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->i18n:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->setRemoteLocalizedStrings([Ljava/lang/String;)V

    return-void
.end method

.method protected abstract setupGzipper()V
.end method

.method public supportsJpeg()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->jpegTested:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->testSupportsJpeg()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->supportsJpeg:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->jpegTested:Z

    :cond_0
    sget-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/Config;->supportsJpeg:Z

    return v0
.end method

.method public abstract supportsTranslucency()Z
.end method

.method protected abstract testSupportsJpeg()Z
.end method
