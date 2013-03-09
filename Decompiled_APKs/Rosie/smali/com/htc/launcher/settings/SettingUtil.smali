.class public Lcom/htc/launcher/settings/SettingUtil;
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

.field public static sAutoExitStickyModeTimeOut:I

.field public static sCellHeight:I

.field public static sCellWidth:I

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

.field public static sFolderIcon:Landroid/graphics/drawable/Drawable;

.field public static sFullRoundScrollTouchDeltaPort:I

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

.field public static sScrollVelocityFactor:I

.field private static sShouldChangeAppWindowVisibility:Z

.field private static sShouldDrawWallpaper:Z

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

    const/4 v1, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    .line 26
    const/16 v0, 0x8

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    .line 27
    sput v2, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceDefaultScreen:I

    .line 28
    sput v3, Lcom/htc/launcher/settings/SettingUtil;->sWallpaperScreensSpan:I

    .line 32
    sput v2, Lcom/htc/launcher/settings/SettingUtil;->sCustomizeButtonCount:I

    .line 51
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sIsEnableLoopLog:Z

    .line 55
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sIsCSPackageInstalled:Z

    .line 59
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sIsEnablePointerLocation:Z

    .line 67
    const/16 v0, 0x64

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sDragSensitive:I

    .line 71
    const/16 v0, 0x19

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sTouchSlop:I

    .line 73
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sIsRingSlide:Z

    .line 75
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sShouldFreezeWallpaper:Z

    .line 80
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    .line 81
    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationPort:I

    .line 82
    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationLand:I

    .line 83
    const/16 v0, 0x1f40

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityLand:I

    .line 84
    const/16 v0, 0xbb8

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityLand:I

    .line 85
    const/16 v0, 0x46

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollTouchDeltaPort:I

    .line 86
    const/16 v0, 0x1770

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityPort:I

    .line 87
    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityPort:I

    .line 88
    const/16 v0, 0x9c4

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sScrollVelocityFactor:I

    .line 89
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollOffset:I

    .line 90
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollOffset:I

    .line 91
    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationLand:I

    .line 92
    const/16 v0, 0x4b0

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationLand:I

    .line 93
    const/16 v0, 0x898

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationPort:I

    .line 94
    const/16 v0, 0x5dc

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationPort:I

    .line 96
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sMultiPageScrollOnPortrait:Z

    .line 98
    new-array v0, v1, [F

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    .line 99
    new-array v0, v1, [F

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    .line 100
    new-array v0, v1, [F

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    .line 101
    new-array v0, v1, [F

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    .line 106
    const/high16 v0, 0x3f80

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScrollDegree:F

    .line 114
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sEnableThumbnailMode:Z

    .line 118
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sIsHomeToThumbnail:Z

    .line 123
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sIsRealTimeThumbnailMode:Z

    .line 130
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sIsEnableRearrange:Z

    .line 135
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sIsEnableRearrangeAnimation:Z

    .line 143
    const/4 v0, 0x0

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDensity:F

    .line 144
    const/16 v0, 0xa0

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    .line 147
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->ENABLE_THUMBNAIL_MODE:Z

    .line 148
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sGLScroll:Z

    .line 149
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sSpringboardMode:Z

    .line 150
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->ENABLE_G_SENEOR:Z

    .line 151
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->isAllProgramTitle:Z

    .line 152
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->isAllProgramButtonBar:Z

    .line 154
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->isShowButtonBar:Z

    .line 157
    sput v2, Lcom/htc/launcher/settings/SettingUtil;->sAutoExitStickyModeTimeOut:I

    .line 161
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/high16 v0, 0x4000

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->htc_sense:F

    .line 163
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingUtil"

    const-string v1, "HTC Sense 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    :goto_0
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sShouldChangeAppWindowVisibility:Z

    .line 426
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sShouldDrawWallpaper:Z

    return-void

    .line 165
    :cond_1
    const/high16 v0, 0x3fc0

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->htc_sense:F

    .line 166
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingUtil"

    const-string v1, "HTC Sense 1.5 or 1.6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomizeButtonCount()I
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sCustomizeButtonCount:I

    .line 392
    :cond_0
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sCustomizeButtonCount:I

    return v0
.end method

.method public static getDefaultScreenIndex()I
    .locals 1

    .prologue
    .line 383
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceDefaultScreen:I

    return v0
.end method

.method public static getSceneRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/htc/launcher/settings/SettingUtil;->mSceneRoot:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenCount()I
    .locals 1

    .prologue
    .line 375
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    return v0
.end method

.method public static getScreenLongAxisLength()I
    .locals 1

    .prologue
    .line 301
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->mScreenLongAxisLength:I

    return v0
.end method

.method public static getScreenShortAxisLength()I
    .locals 1

    .prologue
    .line 297
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->mScreenShortAxisLength:I

    return v0
.end method

.method public static isBliss()Z
    .locals 2

    .prologue
    .line 351
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDoubleShot()Z
    .locals 2

    .prologue
    .line 343
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 344
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportLandscape()Z
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public static isTabletDevice()Z
    .locals 2

    .prologue
    .line 331
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xac

    if-ne v0, v1, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUAKSupported()Z
    .locals 2

    .prologue
    .line 305
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

.method public static isVigor()Z
    .locals 2

    .prologue
    .line 360
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 176
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0028

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sCellWidth:I

    .line 177
    const v5, 0x7f0a0029

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sCellHeight:I

    .line 178
    const v5, 0x7f020063

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/launcher/settings/SettingUtil;->sFolderIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    const/high16 v5, 0x7f0c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    .line 181
    const v5, 0x7f0c0001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceDefaultScreen:I

    .line 182
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v5

    sput-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->sIsCSPackageInstalled:Z

    .line 184
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 185
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 186
    .local v4, screenWidth:I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 187
    .local v3, screenHeight:I
    if-le v4, v3, :cond_4

    .line 188
    sput v4, Lcom/htc/launcher/settings/SettingUtil;->mScreenLongAxisLength:I

    .line 189
    sput v3, Lcom/htc/launcher/settings/SettingUtil;->mScreenShortAxisLength:I

    .line 194
    :goto_0
    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "SettingUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Screen resolution ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/launcher/settings/SettingUtil;->mScreenShortAxisLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/launcher/settings/SettingUtil;->mScreenLongAxisLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v6, 0x4090

    aput v6, v5, v9

    .line 199
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v6, -0x3f20

    aput v6, v5, v8

    .line 200
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v6, 0x40a0

    aput v6, v5, v10

    .line 201
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v6, -0x4000

    aput v6, v5, v11

    .line 202
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v6, 0x3f00

    aput v6, v5, v12

    .line 204
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->usesRingSlide()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 206
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, 0x40b0

    aput v6, v5, v9

    .line 207
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, -0x3eb0

    aput v6, v5, v8

    .line 208
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, 0x4180

    aput v6, v5, v10

    .line 209
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, -0x3ee0

    aput v6, v5, v11

    .line 210
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, 0x4020

    aput v6, v5, v12

    .line 212
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v6, 0x3feccccd

    aput v6, v5, v9

    .line 213
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v6, -0x42333333

    aput v6, v5, v8

    .line 214
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v6, -0x40b33333

    aput v6, v5, v10

    .line 215
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v6, -0x40ff5c29

    aput v6, v5, v11

    .line 216
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v6, 0x3f0d70a4

    aput v6, v5, v12

    .line 218
    sput-boolean v8, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    .line 220
    const/16 v5, 0x190

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationPort:I

    .line 221
    const/16 v5, 0x190

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationLand:I

    .line 222
    const/16 v5, 0x1388

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityLand:I

    .line 223
    const/16 v5, 0x7d0

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityLand:I

    .line 225
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 226
    const/16 v5, 0x1194

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityPort:I

    .line 227
    const/16 v5, 0xbb8

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityPort:I

    .line 229
    const/16 v5, 0x9c4

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationPort:I

    .line 230
    const/16 v5, 0x4b0

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationPort:I

    .line 232
    const/16 v5, 0x898

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationLand:I

    .line 233
    const/16 v5, 0x4b0

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationLand:I

    .line 235
    const/high16 v5, 0x3fc0

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDensity:F

    .line 236
    const/16 v5, 0xf0

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    .line 241
    :goto_1
    sput-boolean v8, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    .line 243
    const-string v5, "SettingUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSettings: sOverrideDpi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (high="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xf0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", xhight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x140

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v5, v5, 0x2

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollOffset:I

    .line 245
    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v5, v5, 0x1

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollOffset:I

    .line 247
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 248
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sTouchSlop:I

    .line 249
    const/4 v5, 0x5

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sDragSensitive:I

    .line 250
    sput-boolean v8, Lcom/htc/launcher/settings/SettingUtil;->sMultiPageScrollOnPortrait:Z

    .line 272
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    :goto_2
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v6, -0x4040

    aput v6, v5, v9

    .line 273
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v6, 0x4130

    aput v6, v5, v8

    .line 274
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v6, -0x3e78

    aput v6, v5, v10

    .line 275
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v6, 0x4138

    aput v6, v5, v11

    .line 276
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v6, -0x3fc0

    aput v6, v5, v12

    .line 277
    const/high16 v5, 0x4040

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackDuration:F

    .line 278
    const/high16 v5, 0x4000

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackDuration:F

    .line 279
    const/high16 v5, 0x4080

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutDuration:F

    .line 281
    const/high16 v5, 0x3f80

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScrollDegree:F

    .line 284
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v5

    if-nez v5, :cond_1

    .line 285
    sput-boolean v9, Lcom/htc/launcher/settings/SettingUtil;->sShouldFreezeWallpaper:Z

    .line 288
    :cond_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    sput-boolean v9, Lcom/htc/launcher/settings/SettingUtil;->sShouldChangeAppWindowVisibility:Z

    .line 292
    :cond_2
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isVigor()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 293
    sput-boolean v8, Lcom/htc/launcher/settings/SettingUtil;->sShouldDrawWallpaper:Z

    .line 294
    :cond_3
    return-void

    .line 191
    :cond_4
    sput v3, Lcom/htc/launcher/settings/SettingUtil;->mScreenLongAxisLength:I

    .line 192
    sput v4, Lcom/htc/launcher/settings/SettingUtil;->mScreenShortAxisLength:I

    goto/16 :goto_0

    .line 238
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityPort:I

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityPort:I

    goto/16 :goto_1

    .line 257
    :cond_6
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, 0x40a0

    aput v6, v5, v9

    .line 258
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, -0x3ee0

    aput v6, v5, v8

    .line 259
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, 0x4120

    aput v6, v5, v10

    .line 260
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, -0x3f60

    aput v6, v5, v11

    .line 261
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v6, 0x3f80

    aput v6, v5, v12

    .line 263
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v6, 0x40a0

    aput v6, v5, v9

    .line 264
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v6, -0x3ee0

    aput v6, v5, v8

    .line 265
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v6, 0x4120

    aput v6, v5, v10

    .line 266
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v6, -0x3f60

    aput v6, v5, v11

    .line 267
    sget-object v5, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v6, 0x3f80

    aput v6, v5, v12

    .line 269
    sput-boolean v9, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    goto/16 :goto_2
.end method

.method public static setDefaultScreenIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 387
    sput p0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceDefaultScreen:I

    .line 388
    return-void
.end method

.method public static setSceneRoot(Z)V
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 310
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 311
    const-string v0, "land/"

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->mSceneRoot:Ljava/lang/String;

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string v0, "port/"

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->mSceneRoot:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setScreenCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 379
    sput p0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    .line 380
    return-void
.end method

.method public static shouldChangeAppWindowVisibility()Z
    .locals 1

    .prologue
    .line 421
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sShouldChangeAppWindowVisibility:Z

    return v0
.end method

.method public static shouldDrawWallpaper()Z
    .locals 1

    .prologue
    .line 415
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sShouldDrawWallpaper:Z

    return v0
.end method

.method public static shouldFreezeWallpaper()Z
    .locals 1

    .prologue
    .line 402
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sShouldFreezeWallpaper:Z

    return v0
.end method

.method public static shouldRestartForWallpaperChange()Z
    .locals 1

    .prologue
    .line 409
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sShouldDrawWallpaper:Z

    return v0
.end method

.method public static supportWDM()Z
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usesRingSlide()Z
    .locals 1

    .prologue
    .line 396
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sIsRingSlide:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
