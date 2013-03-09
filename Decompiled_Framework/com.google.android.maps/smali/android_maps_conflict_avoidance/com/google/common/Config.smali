.class public abstract Landroid_maps_conflict_avoidance/com/google/common/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static ADS_CLIENT:Ljava/lang/String;

.field protected static ALT_ARROWS_ENABLED:Z

.field protected static ALT_DOWN:I

.field protected static ALT_LEFT:I

.field private static ALT_NUMBER_KEYS:[I

.field protected static ALT_RIGHT:I

.field protected static ALT_UP:I

.field private static CARRIER:Ljava/lang/String;

.field private static DISTRIBUTION_CHANNEL:Ljava/lang/String;

.field public static KEY_BACK:I

.field public static KEY_CLEAR:I

.field public static KEY_MENU:I

.field public static KEY_OK:I

.field public static KEY_POUND:I

.field public static KEY_SIDE_DOWN:I

.field public static KEY_SIDE_SELECT:I

.field public static KEY_SIDE_UP:I

.field public static KEY_SOFT_LEFT:I

.field public static KEY_SOFT_MIDDLE:I

.field public static KEY_SOFT_RIGHT:I

.field public static KEY_STAR:I

.field public static KEY_TALK:I

.field public static KEY_VOICE_SEARCH:I

.field public static QWERTY_KEYBOARD:Z

.field public static REVERSE_SOFTKEYS:Z

.field public static SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z

.field public static SOFTKEY_HEIGHT:I

.field public static USE_NATIVE_COMMANDS:Z

.field public static USE_NATIVE_MENUS:Z

.field private static instance:Landroid_maps_conflict_avoidance/com/google/common/Config;


# instance fields
.field private final applicationStartTime:J

.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private countryCode:Ljava/lang/String;

.field private i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, -0x270f

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_BACK:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_MIDDLE:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    const/16 v0, 0x2a

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_STAR:I

    const/16 v0, 0x23

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_POUND:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_MENU:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_OK:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_TALK:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_VOICE_SEARCH:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_CLEAR:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_UP:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_DOWN:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_SELECT:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_UP:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_DOWN:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_LEFT:I

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_RIGHT:I

    const/4 v0, 0x0

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_ARROWS_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->countryCode:Ljava/lang/String;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/GenericClock;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/GenericClock;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->applicationStartTime:J

    return-void
.end method

.method public static getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->instance:Landroid_maps_conflict_avoidance/com/google/common/Config;

    return-object v0
.end method

.method public static declared-synchronized getLocale()Ljava/lang/String;
    .locals 2

    const-class v1, Landroid_maps_conflict_avoidance/com/google/common/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->instance:Landroid_maps_conflict_avoidance/com/google/common/Config;

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->getUiLocale()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isChinaVersion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static parseAltArrowKeys(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x4

    invoke-static {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_ARROWS_ENABLED:Z

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_UP:I

    aget v1, v0, v2

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_LEFT:I

    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_DOWN:I

    const/4 v1, 0x3

    aget v1, v0, v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_RIGHT:I

    :cond_0
    return-void
.end method

.method private static parseAltKeys(ILjava/lang/String;)[I
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-array v1, p0, [I

    move v3, v2

    :goto_1
    const-string v4, ","

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v4, p0, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CONFIG"

    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "CONFIG"

    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static parseAltNumberKeys(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_NUMBER_KEYS:[I

    return-void
.end method

.method public static setConfig(Landroid_maps_conflict_avoidance/com/google/common/Config;)V
    .locals 0

    sput-object p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->instance:Landroid_maps_conflict_avoidance/com/google/common/Config;

    return-void
.end method


# virtual methods
.method protected getAdsClientInternal()Ljava/lang/String;
    .locals 1

    const-string v0, "AdsClient"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAppProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_0
    :goto_0
    return p2

    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    return-object v0
.end method

.method public abstract getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .locals 1

    const-string v0, "DistributionChannel"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getI18n()Landroid_maps_conflict_avoidance/com/google/common/I18n;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    return-object v0
.end method

.method public abstract getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
.end method

.method public abstract getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
.end method

.method public abstract getPixelsPerInch()I
.end method

.method protected init()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    if-nez v0, :cond_0

    const-string v0, "DownloadLocale"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->init(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/I18n;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    :cond_0
    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getDistributionChannelInternal()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "unknown"

    sput-object v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAdsClientInternal()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, "unknown"

    sput-object v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    :cond_2
    const-string v3, "Carrier"

    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->CARRIER:Ljava/lang/String;

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->CARRIER:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "unknown"

    sput-object v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->CARRIER:Ljava/lang/String;

    :cond_3
    const-string v3, "BackKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_BACK:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_BACK:I

    const-string v3, "LeftSoftKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    const-string v3, "MiddleSoftKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_MIDDLE:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_MIDDLE:I

    const-string v3, "RightSoftKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    const-string v3, "ReverseSoftkeys"

    const-string v4, "nokia"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->REVERSE_SOFTKEYS:Z

    const-string v3, "SoftkeysOnSideInLandscape"

    invoke-virtual {p0, v3, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z

    const-string v3, "SideUpKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_UP:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_UP:I

    const-string v3, "SideDownKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_DOWN:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_DOWN:I

    const-string v3, "SideSelectKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_SELECT:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_SELECT:I

    const-string v3, "QwertyKeyboard"

    invoke-virtual {p0, v3, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->QWERTY_KEYBOARD:Z

    sget-boolean v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->REVERSE_SOFTKEYS:Z

    if-eqz v3, :cond_4

    sget v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    sput v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    :cond_4
    const-string v3, "MenuKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_MENU:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_MENU:I

    const-string v3, "SelectKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_OK:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_OK:I

    const-string v3, "TalkKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_TALK:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_TALK:I

    const-string v3, "VoiceSearchKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_VOICE_SEARCH:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_VOICE_SEARCH:I

    const-string v3, "ClearKey"

    sget v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_CLEAR:I

    invoke-virtual {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_CLEAR:I

    const-string v3, "UseNativeCommands"

    const-string v4, "nokia"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "sony"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_COMMANDS:Z

    const-string v0, "UseNativeMenus"

    invoke-virtual {p0, v0, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_MENUS:Z

    const-string v0, "SoftkeyHeight"

    invoke-virtual {p0, v0, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->SOFTKEY_HEIGHT:I

    const-string v0, "AltNumberKeys"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltNumberKeys(Ljava/lang/String;)V

    const-string v0, "AltArrowKeys"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltArrowKeys(Ljava/lang/String;)V

    sget-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_MENUS:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_COMMANDS:Z

    if-nez v0, :cond_5

    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_COMMANDS:Z

    :cond_5
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->setupGzipper()V

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method protected abstract setupGzipper()V
.end method
