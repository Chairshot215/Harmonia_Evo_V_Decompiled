.class public Lcom/android/camera/effect/WhiteboardEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "WhiteboardEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 12

    const-string v7, "B_whiteboard"

    new-instance v8, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v9, "B_whiteboard"

    const/4 v0, 0x2

    new-array v10, v0, [Lcom/android/camera/effect/GpuEffectParameters;

    const/4 v11, 0x0

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x1

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v11

    invoke-direct {v8, v9, v10}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    invoke-direct {p0, v7, p1, v8}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V

    return-void
.end method


# virtual methods
.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/effect/GpuEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    instance-of v1, p1, Lcom/android/camera/effect/GpuEffectBase;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/WhiteboardEffect;->getGpuEffectController()Lcom/android/camera/effect/GpuEffectController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/effect/GpuEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessage(Landroid/os/Handler;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No GPU effect controller to clear effect"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    sget v0, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x20

    return v0
.end method
