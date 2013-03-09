.class public abstract Lcom/android/camera/effect/SceneEffectBase;
.super Lcom/android/camera/effect/EffectBase;
.source "SceneEffectBase.java"


# static fields
.field private static m_FrontCameraSceneSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_MainCameraSceneSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_SceneController:Lcom/android/camera/effect/SceneController;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    return-void
.end method

.method public static isSupportedInCurrentDevice(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/camera/effect/SceneController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method private linkToSceneController()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/SceneEffectBase;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    const-string v2, "Scene Controller"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/SceneController;

    iput-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/SceneController;

    iget-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/SceneController;

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
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/camera/effect/SceneEffectBase;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/SceneController;

    invoke-virtual {v0}, Lcom/android/camera/effect/SceneController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/effect/SceneEffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find scene controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    return-void
.end method

.method public getCapabilities()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/effect/SceneEffectBase;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v3, Lcom/android/camera/effect/SceneEffectBase;->m_MainCameraSceneSupportedList:Ljava/util/List;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    sput-object v3, Lcom/android/camera/effect/SceneEffectBase;->m_MainCameraSceneSupportedList:Ljava/util/List;

    :cond_0
    sget-object v2, Lcom/android/camera/effect/SceneEffectBase;->m_MainCameraSceneSupportedList:Ljava/util/List;

    :goto_0
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Cannot get scene supported list"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-object v3, Lcom/android/camera/effect/SceneEffectBase;->m_FrontCameraSceneSupportedList:Ljava/util/List;

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    sput-object v3, Lcom/android/camera/effect/SceneEffectBase;->m_FrontCameraSceneSupportedList:Ljava/util/List;

    :cond_3
    sget-object v2, Lcom/android/camera/effect/SceneEffectBase;->m_FrontCameraSceneSupportedList:Ljava/util/List;

    goto :goto_0

    :cond_4
    const v0, 0x7fffffff

    invoke-virtual {p0}, Lcom/android/camera/effect/SceneEffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    and-int/lit8 v0, v0, -0x71

    if-nez v1, :cond_5

    and-int/lit8 v0, v0, -0x4

    goto :goto_1

    :cond_5
    and-int/lit8 v0, v0, -0xd

    goto :goto_1
.end method

.method public getDisabledImageSettings()I
    .locals 1

    sget v0, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public releaseCachedResources()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/SceneController;

    invoke-super {p0}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    return-void
.end method
