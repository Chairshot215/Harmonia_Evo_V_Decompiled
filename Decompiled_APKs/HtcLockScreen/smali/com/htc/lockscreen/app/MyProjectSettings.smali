.class public Lcom/htc/lockscreen/app/MyProjectSettings;
.super Ljava/lang/Object;
.source "MyProjectSettings.java"


# static fields
.field public static final GOOGLE_FONT_CLOCKOPIA_NAME:Ljava/lang/String; = "/system/fonts/Clockopia.ttf"

.field public static final GOOGLE_FONT_DROIDSANS_NAME:Ljava/lang/String; = "/system/fonts/DroidSans-Bold.ttf"

.field public static final HTC_FONT_LTP_NAME:Ljava/lang/String; = "/system/fonts/HelveticaNeueLTPro35Th.ttf"

.field public static final HTC_FONT_OTS_NAME:Ljava/lang/String; = "/system/fonts/HelveticaNeueOTS.ttf"

#the value of this static final field might be set in the static constructor
.field public static final NO_EMERGENCY_CALL:Z = false

#the value of this static final field might be set in the static constructor
.field public static final THEME_STYLE_ENABLE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final USE_EMERGENCYDIAL:Z = false

.field public static final USE_IDLESCREEN:Z = true

.field public static final USE_LIVEWALLPAPER:Z

.field public static final USIM_4G:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v3, :cond_3

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/lockscreen/app/MyProjectSettings;->THEME_STYLE_ENABLE:Z

    .line 14
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLiveWallpaperFlag:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/htc/lockscreen/app/MyProjectSettings;->THEME_STYLE_ENABLE:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/htc/lockscreen/app/MyProjectSettings;->USE_LIVEWALLPAPER:Z

    .line 17
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x93

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/htc/lockscreen/app/MyProjectSettings;->USE_EMERGENCYDIAL:Z

    .line 18
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x25

    if-ne v0, v3, :cond_6

    :cond_1
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/htc/lockscreen/app/MyProjectSettings;->NO_EMERGENCY_CALL:Z

    .line 21
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v0, v3, :cond_7

    :cond_2
    :goto_4
    sput-boolean v1, Lcom/htc/lockscreen/app/MyProjectSettings;->USIM_4G:Z

    return-void

    :cond_3
    move v0, v2

    .line 8
    goto :goto_0

    :cond_4
    move v0, v2

    .line 14
    goto :goto_1

    :cond_5
    move v0, v2

    .line 17
    goto :goto_2

    :cond_6
    move v0, v2

    .line 18
    goto :goto_3

    :cond_7
    move v1, v2

    .line 21
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableForgotPattern()Z
    .locals 2

    .prologue
    .line 43
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4060

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSenseVersion()F
    .locals 4

    .prologue
    .line 32
    const/high16 v1, 0x4000

    .line 34
    .local v1, version:F
    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 39
    :goto_0
    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSenseVersion error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCameraKeySupport()Z
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isTMO()Z

    move-result v1

    if-nez v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x89

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 77
    .local v0, bRet:Z
    :goto_0
    return v0

    .line 75
    .end local v0           #bRet:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStuckNetworkLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x96

    if-ne v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 67
    .local v0, specialTrunk1:Z
    :goto_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd9

    if-eq v3, v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    .line 71
    :cond_1
    return v2

    .end local v0           #specialTrunk1:Z
    :cond_2
    move v0, v2

    .line 64
    goto :goto_0
.end method

.method public static isSupportPhone()Z
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public static isTMO()Z
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, bRet:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :cond_0
    return v0
.end method

.method public static isTmoRuby()Z
    .locals 2

    .prologue
    .line 59
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
