.class public Lcom/android/phone/util/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field public static final CONFIG_DIALER_KEYPAD:I = 0x800

.field public static final DEVICE_FORCE_LANDSCAPE:Z

.field public static final DEVICE_FORCE_PORTRAIT:Z

.field public static final FIXED_ORIENTATION:Z

.field public static final ROUTE_AUDIO_TO_RIL:Z

.field private static mConfig:Landroid/content/res/Configuration;

.field private static mOldConfig:Landroid/content/res/Configuration;

.field private static sIsNaviOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/util/ConfigUtils;->DEVICE_FORCE_LANDSCAPE:Z

    .line 65
    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/phone/util/ConfigUtils;->FIXED_ORIENTATION:Z

    .line 68
    sput-boolean v2, Lcom/android/phone/util/ConfigUtils;->sIsNaviOn:Z

    .line 196
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3d

    if-ne v0, v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    sput-boolean v2, Lcom/android/phone/util/ConfigUtils;->ROUTE_AUDIO_TO_RIL:Z

    return-void

    :cond_3
    move v0, v2

    .line 61
    goto :goto_0

    :cond_4
    move v0, v2

    .line 65
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diff()I
    .locals 3

    .prologue
    .line 163
    sget-object v1, Lcom/android/phone/util/ConfigUtils;->mOldConfig:Landroid/content/res/Configuration;

    sget-object v2, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 164
    .local v0, change:I
    sget-object v1, Lcom/android/phone/util/ConfigUtils;->mOldConfig:Landroid/content/res/Configuration;

    invoke-static {v1}, Lcom/android/phone/util/ConfigUtils;->isLandscapeInCarTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscapeInCarTypeUiMode()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 165
    or-int/lit16 v0, v0, 0x800

    .line 167
    :cond_0
    sget-object v1, Lcom/android/phone/util/ConfigUtils;->mOldConfig:Landroid/content/res/Configuration;

    sget-object v2, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 168
    return v0
.end method

.method private static getConfig(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 0
    .parameter "config"

    .prologue
    .line 172
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public static hasKeyboard()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    sget-object v2, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static hasKeyboard(Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v0, 0x1

    .line 193
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCarTypeUiMode()Z
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static isCarTypeUiMode(Landroid/content/res/Configuration;)Z
    .locals 4
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 146
    if-nez p0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    const/4 v0, 0x3

    .line 150
    .local v0, typeCar:I
    sget-boolean v2, Lcom/android/phone/util/ConfigUtils;->sIsNaviOn:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDeskTypeUiMode()Z
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isDeskTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static isDeskTypeUiMode(Landroid/content/res/Configuration;)Z
    .locals 4
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 133
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    const/4 v0, 0x2

    .line 137
    .local v0, typeDesk:I
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDockMode()Z
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isDockMode(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static isDockMode(Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 121
    if-nez p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/android/phone/util/ConfigUtils;->isDeskTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHardKeyboardHidden()Z
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isHardKeyboardHidden(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static isHardKeyboardHidden(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 109
    if-nez p0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLandscape()Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static isLandscape(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 85
    if-nez p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLandscapeInCarTypeUiMode()Z
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLandscapeInCarTypeUiMode(Landroid/content/res/Configuration;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/util/ConfigUtils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNaviOn()Z
    .locals 1

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/phone/util/ConfigUtils;->sIsNaviOn:Z

    return v0
.end method

.method public static isPortrait()Z
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static isPortrait(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "config"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-nez p0, :cond_0

    .line 100
    :goto_0
    return v1

    :cond_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static registConfig(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 71
    sput-object p0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    .line 72
    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lcom/android/phone/util/ConfigUtils;->mOldConfig:Landroid/content/res/Configuration;

    .line 73
    return-void
.end method

.method public static setNaviState(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 202
    sput-boolean p0, Lcom/android/phone/util/ConfigUtils;->sIsNaviOn:Z

    .line 203
    return-void
.end method

.method public static unregistConfig()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/android/phone/util/ConfigUtils;->mConfig:Landroid/content/res/Configuration;

    .line 77
    sput-object v0, Lcom/android/phone/util/ConfigUtils;->mOldConfig:Landroid/content/res/Configuration;

    .line 78
    return-void
.end method
