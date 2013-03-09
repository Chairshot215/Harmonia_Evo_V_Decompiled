.class public Lcom/htc/home/personalize/config/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field private static final DEFAULT_SCROLL_DEGREE:F = 1.0f

.field public static ENABLE_G_SENEOR:Z = false

.field public static ENABLE_THUMBNAIL_MODE:Z = false

.field public static final PERFORMANCE_TAG:Ljava/lang/String; = "PREF"

.field public static final SENSE_1_5:F = 1.5f

.field public static final SENSE_2_0:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "SettingUtil"

.field public static final VIBRATE_DURATION:I = 0x23

.field public static htc_sense:F

.field public static isAllProgramButtonBar:Z

.field public static isAllProgramTitle:Z

.field public static isShowButtonBar:Z

.field public static localLOGD:Z

.field private static mSceneRoot:Ljava/lang/String;

.field private static mScreenLongAxisLength:I

.field private static mScreenShortAxisLength:I

.field private static sCustomizeButtonCount:I

.field public static sDragSensitive:I

.field public static sEaseInBackCoefficients:[F

.field public static sEaseInBackDuration:F

.field public static sEaseOutBackCoefficients:[F

.field public static sEaseOutBackDuration:F

.field public static sEaseOutCoefficientsLong:[F

.field public static sEaseOutCoefficientsShort:[F

.field public static sEaseOutDuration:F

.field public static sEnableThumbnailMode:Z

.field public static sFixedScrollDurationLand:I

.field public static sFixedScrollDurationPort:I

.field public static sFixedScrollVelocity:Z

.field public static sFullRoundScrollVelocityLand:I

.field public static sFullRoundScrollVelocityPort:I

.field public static sGLScroll:Z

.field public static sIsCSPackageInstalled:Z

.field public static sIsEnableLoopLog:Z

.field public static sIsEnablePointerLocation:Z

.field public static sIsEnableRearrange:Z

.field public static sIsEnableRearrangeAnimation:Z

.field public static sIsHomeToThumbnail:Z

.field public static sIsRealTimeThumbnailMode:Z

.field public static sIsRingSlide:Z

.field public static sMaxScrollOffset:I

.field public static sMaxScrollRoundDurationLand:I

.field public static sMaxScrollRoundDurationPort:I

.field public static sMediumScrollOffset:I

.field public static sMediumScrollRoundDurationLand:I

.field public static sMediumScrollRoundDurationPort:I

.field public static sMultiPageScrollOnPortrait:Z

.field public static sOverrideDensity:F

.field public static sOverrideDpi:I

.field private static sShouldFreezeWallpaper:Z

.field public static sSinglePageScrollVelocityLand:I

.field public static sSinglePageScrollVelocityPort:I

.field public static sSpringboardMode:Z

.field public static sTouchSlop:I

.field public static sWallpaperScreensSpan:I

.field public static sWorkspaceDefaultScreen:I

.field public static sWorkspaceScreenCount:I

.field public static sWorkspaceScrollDegree:F

.field public static scrollThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x28a

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 16
    sput-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    .line 24
    const/16 v0, 0x8

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScreenCount:I

    .line 25
    sput v1, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceDefaultScreen:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sWallpaperScreensSpan:I

    .line 30
    sput v1, Lcom/htc/home/personalize/config/SettingUtil;->sCustomizeButtonCount:I

    .line 43
    sput-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->sIsEnableLoopLog:Z

    .line 47
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->sIsCSPackageInstalled:Z

    .line 51
    sput-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->sIsEnablePointerLocation:Z

    .line 59
    const/16 v0, 0x64

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sDragSensitive:I

    .line 63
    const/16 v0, 0x19

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sTouchSlop:I

    .line 65
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->sIsRingSlide:Z

    .line 67
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->sShouldFreezeWallpaper:Z

    .line 72
    sput-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->sFixedScrollVelocity:Z

    .line 73
    sput v4, Lcom/htc/home/personalize/config/SettingUtil;->sFixedScrollDurationPort:I

    .line 74
    sput v4, Lcom/htc/home/personalize/config/SettingUtil;->sFixedScrollDurationLand:I

    .line 75
    const/16 v0, 0x1f40

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sFullRoundScrollVelocityLand:I

    .line 76
    const/16 v0, 0xbb8

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sSinglePageScrollVelocityLand:I

    .line 77
    const/16 v0, 0x1770

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sFullRoundScrollVelocityPort:I

    .line 78
    sput v5, Lcom/htc/home/personalize/config/SettingUtil;->sSinglePageScrollVelocityPort:I

    .line 79
    sget v0, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sMaxScrollOffset:I

    .line 80
    sget v0, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sMediumScrollOffset:I

    .line 81
    sput v5, Lcom/htc/home/personalize/config/SettingUtil;->sMaxScrollRoundDurationLand:I

    .line 82
    const/16 v0, 0x4b0

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sMediumScrollRoundDurationLand:I

    .line 83
    const/16 v0, 0x898

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sMaxScrollRoundDurationPort:I

    .line 84
    const/16 v0, 0x5dc

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sMediumScrollRoundDurationPort:I

    .line 86
    sput-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->sMultiPageScrollOnPortrait:Z

    .line 88
    new-array v0, v3, [F

    sput-object v0, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    .line 89
    new-array v0, v3, [F

    sput-object v0, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    .line 90
    new-array v0, v3, [F

    sput-object v0, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutBackCoefficients:[F

    .line 91
    new-array v0, v3, [F

    sput-object v0, Lcom/htc/home/personalize/config/SettingUtil;->sEaseInBackCoefficients:[F

    .line 96
    const/high16 v0, 0x3f80

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScrollDegree:F

    .line 104
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->sEnableThumbnailMode:Z

    .line 108
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->sIsHomeToThumbnail:Z

    .line 113
    sput-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->sIsRealTimeThumbnailMode:Z

    .line 120
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->sIsEnableRearrange:Z

    .line 125
    sput-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->sIsEnableRearrangeAnimation:Z

    .line 133
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sOverrideDensity:F

    .line 134
    const/16 v0, 0xa0

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->sOverrideDpi:I

    .line 137
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->ENABLE_THUMBNAIL_MODE:Z

    .line 138
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->sGLScroll:Z

    .line 139
    sput-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->sSpringboardMode:Z

    .line 140
    sput-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->ENABLE_G_SENEOR:Z

    .line 141
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->isAllProgramTitle:Z

    .line 142
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->isAllProgramButtonBar:Z

    .line 144
    sput-boolean v2, Lcom/htc/home/personalize/config/SettingUtil;->isShowButtonBar:Z

    .line 147
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/high16 v0, 0x4000

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->htc_sense:F

    .line 149
    sget-boolean v0, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingUtil"

    const-string v1, "HTC Sense 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const/high16 v0, 0x3fc0

    sput v0, Lcom/htc/home/personalize/config/SettingUtil;->htc_sense:F

    .line 152
    sget-boolean v0, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingUtil"

    const-string v1, "HTC Sense 1.5 or 1.6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceRGB32Window()Z
    .locals 2

    .prologue
    .line 268
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x39

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCustomizeButtonCount()I
    .locals 1

    .prologue
    .line 330
    sget v0, Lcom/htc/home/personalize/config/SettingUtil;->sCustomizeButtonCount:I

    return v0
.end method

.method public static getDefaultScreenIndex()I
    .locals 1

    .prologue
    .line 322
    sget v0, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceDefaultScreen:I

    return v0
.end method

.method public static getSceneRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/htc/home/personalize/config/SettingUtil;->mSceneRoot:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenCount()I
    .locals 1

    .prologue
    .line 314
    sget v0, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScreenCount:I

    return v0
.end method

.method public static getScreenLongAxisLength()I
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/htc/home/personalize/config/SettingUtil;->mScreenLongAxisLength:I

    return v0
.end method

.method public static getScreenShortAxisLength()I
    .locals 1

    .prologue
    .line 255
    sget v0, Lcom/htc/home/personalize/config/SettingUtil;->mScreenShortAxisLength:I

    return v0
.end method

.method public static isDoubleShot()Z
    .locals 2

    .prologue
    .line 299
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLiveWallaperSupported()Z
    .locals 1

    .prologue
    .line 264
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLiveWallpaperFlag:Z

    return v0
.end method

.method public static isSupportLandscape()Z
    .locals 2

    .prologue
    .line 292
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUAKSupported()Z
    .locals 2

    .prologue
    .line 274
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScreenCount:I

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceDefaultScreen:I

    .line 162
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/htc/home/personalize/config/SettingUtil;->sIsCSPackageInstalled:Z

    .line 164
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 165
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 166
    .local v2, screenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 167
    .local v1, screenHeight:I
    if-le v2, v1, :cond_1

    .line 168
    sput v2, Lcom/htc/home/personalize/config/SettingUtil;->mScreenLongAxisLength:I

    .line 169
    sput v1, Lcom/htc/home/personalize/config/SettingUtil;->mScreenShortAxisLength:I

    .line 174
    :goto_0
    sget-boolean v3, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "SettingUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen resolution ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/home/personalize/config/SettingUtil;->mScreenShortAxisLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/home/personalize/config/SettingUtil;->mScreenLongAxisLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v4, 0x4090

    aput v4, v3, v7

    .line 179
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v4, -0x3f20

    aput v4, v3, v6

    .line 180
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v4, 0x40a0

    aput v4, v3, v8

    .line 181
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v4, -0x4000

    aput v4, v3, v9

    .line 182
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v4, 0x3f00

    aput v4, v3, v10

    .line 184
    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->usesRingSlide()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, 0x40b0

    aput v4, v3, v7

    .line 187
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, -0x3eb0

    aput v4, v3, v6

    .line 188
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, 0x4180

    aput v4, v3, v8

    .line 189
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, -0x3ee0

    aput v4, v3, v9

    .line 190
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, 0x4020

    aput v4, v3, v10

    .line 192
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v4, 0x3feccccd

    aput v4, v3, v7

    .line 193
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v4, -0x42333333

    aput v4, v3, v6

    .line 194
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v4, -0x40b33333

    aput v4, v3, v8

    .line 195
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v4, -0x40ff5c29

    aput v4, v3, v9

    .line 196
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v4, 0x3f0d70a4

    aput v4, v3, v10

    .line 198
    sput-boolean v6, Lcom/htc/home/personalize/config/SettingUtil;->sFixedScrollVelocity:Z

    .line 200
    const/16 v3, 0x190

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sFixedScrollDurationPort:I

    .line 201
    const/16 v3, 0x190

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sFixedScrollDurationLand:I

    .line 202
    const/16 v3, 0x1388

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sFullRoundScrollVelocityLand:I

    .line 203
    const/16 v3, 0x7d0

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sSinglePageScrollVelocityLand:I

    .line 205
    const/16 v3, 0xea6

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sFullRoundScrollVelocityPort:I

    .line 206
    const/16 v3, 0xea6

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sSinglePageScrollVelocityPort:I

    .line 208
    sput-boolean v6, Lcom/htc/home/personalize/config/SettingUtil;->sFixedScrollVelocity:Z

    .line 210
    const/high16 v3, 0x3fc0

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sOverrideDensity:F

    .line 211
    const/16 v3, 0xf0

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sOverrideDpi:I

    .line 213
    sget v3, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v3, v3, 0x2

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sMaxScrollOffset:I

    .line 214
    sget v3, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sMediumScrollOffset:I

    .line 216
    const/16 v3, 0x19

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sTouchSlop:I

    .line 217
    const/4 v3, 0x5

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sDragSensitive:I

    .line 218
    sput-boolean v6, Lcom/htc/home/personalize/config/SettingUtil;->sMultiPageScrollOnPortrait:Z

    .line 220
    sput v6, Lcom/htc/home/personalize/config/SettingUtil;->sWallpaperScreensSpan:I

    .line 238
    :goto_1
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v4, -0x4040

    aput v4, v3, v7

    .line 239
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v4, 0x4130

    aput v4, v3, v6

    .line 240
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v4, -0x3e78

    aput v4, v3, v8

    .line 241
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v4, 0x4138

    aput v4, v3, v9

    .line 242
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v4, -0x3fc0

    aput v4, v3, v10

    .line 243
    const/high16 v3, 0x4040

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseInBackDuration:F

    .line 244
    const/high16 v3, 0x4000

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutBackDuration:F

    .line 245
    const/high16 v3, 0x4080

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutDuration:F

    .line 247
    const/high16 v3, 0x3f80

    sput v3, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScrollDegree:F

    .line 250
    sput-boolean v7, Lcom/htc/home/personalize/config/SettingUtil;->sShouldFreezeWallpaper:Z

    .line 251
    return-void

    .line 171
    :cond_1
    sput v1, Lcom/htc/home/personalize/config/SettingUtil;->mScreenLongAxisLength:I

    .line 172
    sput v2, Lcom/htc/home/personalize/config/SettingUtil;->mScreenShortAxisLength:I

    goto/16 :goto_0

    .line 223
    :cond_2
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, 0x40a0

    aput v4, v3, v7

    .line 224
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, -0x3ee0

    aput v4, v3, v6

    .line 225
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, 0x4120

    aput v4, v3, v8

    .line 226
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, -0x3f60

    aput v4, v3, v9

    .line 227
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v4, 0x3f80

    aput v4, v3, v10

    .line 229
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v4, 0x40a0

    aput v4, v3, v7

    .line 230
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v4, -0x3ee0

    aput v4, v3, v6

    .line 231
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v4, 0x4120

    aput v4, v3, v8

    .line 232
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v4, -0x3f60

    aput v4, v3, v9

    .line 233
    sget-object v3, Lcom/htc/home/personalize/config/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v4, 0x3f80

    aput v4, v3, v10

    .line 235
    sput-boolean v7, Lcom/htc/home/personalize/config/SettingUtil;->sFixedScrollVelocity:Z

    goto :goto_1
.end method

.method public static setDefaultScreenIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 326
    sput p0, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceDefaultScreen:I

    .line 327
    return-void
.end method

.method public static setSceneRoot(Z)V
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 279
    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 280
    const-string v0, "land/"

    sput-object v0, Lcom/htc/home/personalize/config/SettingUtil;->mSceneRoot:Ljava/lang/String;

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    const-string v0, "port/"

    sput-object v0, Lcom/htc/home/personalize/config/SettingUtil;->mSceneRoot:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setScreenCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 318
    sput p0, Lcom/htc/home/personalize/config/SettingUtil;->sWorkspaceScreenCount:I

    .line 319
    return-void
.end method

.method public static shouldFreezeWallpaper()Z
    .locals 1

    .prologue
    .line 338
    sget-boolean v0, Lcom/htc/home/personalize/config/SettingUtil;->sShouldFreezeWallpaper:Z

    return v0
.end method

.method public static supportWDM()Z
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usesRingSlide()Z
    .locals 1

    .prologue
    .line 334
    sget-boolean v0, Lcom/htc/home/personalize/config/SettingUtil;->sIsRingSlide:Z

    return v0
.end method
