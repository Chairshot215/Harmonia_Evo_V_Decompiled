.class public Lcom/android/camera/component/PanoramaResolutionHandler;
.super Lcom/android/camera/SubsetResolutionHandler;
.source "PanoramaResolutionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "pref_panorama_resolution"

    invoke-direct {p0, v0}, Lcom/android/camera/SubsetResolutionHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getMaximumResolutions()[Lcom/android/camera/Resolution;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    aput-object v1, v0, v4

    :goto_0
    return-object v0

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    :cond_1
    new-array v0, v2, [Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_5_3:Lcom/android/camera/Resolution;

    aput-object v1, v0, v4

    goto :goto_0

    :cond_2
    new-array v0, v2, [Lcom/android/camera/Resolution;

    goto :goto_0
.end method

.method protected getMinimumResolutions()[Lcom/android/camera/Resolution;
    .locals 3

    const/4 v2, 0x2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_1

    :cond_0
    new-array v0, v2, [Lcom/android/camera/Resolution;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-array v0, v2, [Lcom/android/camera/Resolution;

    goto :goto_0
.end method
