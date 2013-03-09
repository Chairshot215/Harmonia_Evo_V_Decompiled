.class public final Lcom/android/camera/effect/PortraitScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "PortraitScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "portrait"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/PortraitScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera/effect/PortraitScene$1;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/PortraitScene$1;-><init>(Lcom/android/camera/effect/PortraitScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/PortraitScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera/effect/PortraitScene$2;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/PortraitScene$2;-><init>(Lcom/android/camera/effect/PortraitScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method
