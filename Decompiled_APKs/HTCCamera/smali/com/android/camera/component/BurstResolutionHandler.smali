.class public Lcom/android/camera/component/BurstResolutionHandler;
.super Lcom/android/camera/SubsetResolutionHandler;
.source "BurstResolutionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/BurstResolutionHandler$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "pref_burst_resolution"

    invoke-direct {p0, v0}, Lcom/android/camera/component/BurstResolutionHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/SubsetResolutionHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getMaximumResolutions()[Lcom/android/camera/Resolution;
    .locals 4

    sget-object v1, Lcom/android/camera/component/BurstResolutionHandler$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v2}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/camera/SubsetResolutionHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown screen ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/Resolution;->FIVE_MEGA:Lcom/android/camera/Resolution;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/camera/Resolution;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/camera/Resolution;->FIVE_MEGA:Lcom/android/camera/Resolution;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-object v1

    :pswitch_0
    sget-object v0, Lcom/android/camera/Resolution;->FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/camera/Resolution;->FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/camera/Resolution;->FIVE_MEGA_3_2:Lcom/android/camera/Resolution;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
