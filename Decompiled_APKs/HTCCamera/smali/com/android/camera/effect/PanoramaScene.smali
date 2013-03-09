.class public final Lcom/android/camera/effect/PanoramaScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "PanoramaScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "panorama"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    return-void
.end method

.method public static isSupportedInCurrentDevice(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method private linkToComponents()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/PanoramaScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    const-string v2, "Panorama UI"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaUI;

    iput-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    iget-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->enterPanoramaMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->exitPanoramaMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/SceneEffectBase;->prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V

    if-eq p1, p0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/component/PanoramaUI;->prepareEnteringPanoramaMode(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/SceneEffectBase;->prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V

    if-eq p1, p0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/component/PanoramaUI;->prepareExitingPanoramaMode(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
