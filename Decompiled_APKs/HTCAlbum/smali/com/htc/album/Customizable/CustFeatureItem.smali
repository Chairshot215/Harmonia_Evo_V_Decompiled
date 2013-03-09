.class public Lcom/htc/album/Customizable/CustFeatureItem;
.super Ljava/lang/Object;
.source "CustFeatureItem.java"


# static fields
.field private static mEnablePaintView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enablePaintView(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 27
    sput-boolean p0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    .line 28
    return-void
.end method

.method public static enableScrollCache4GridviewFolderList()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public static enableScrollCache4GridviewList()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public static isEnablePaintView()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return v0
.end method

.method public static isExcludeSocialNetwork()Z
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 14
    .local v0, bResult:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 17
    :cond_0
    return v0
.end method

.method public static isSupportBurstShots()Z
    .locals 2

    .prologue
    .line 54
    const/16 v0, 0x9b

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPanorama()Z
    .locals 2

    .prologue
    .line 48
    const/16 v0, 0x9b

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPenPaint()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportSnapbooth()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public static show3DVirtualFolder()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
