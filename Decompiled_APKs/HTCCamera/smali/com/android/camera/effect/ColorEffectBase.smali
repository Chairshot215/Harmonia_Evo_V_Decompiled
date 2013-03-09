.class public abstract Lcom/android/camera/effect/ColorEffectBase;
.super Lcom/android/camera/effect/EffectBase;
.source "ColorEffectBase.java"


# static fields
.field private static m_FrontCameraEffectSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_MainCameraEffectSupportedList:Ljava/util/List;
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
.field private final m_ColorEffect:Ljava/lang/String;

.field private m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

.field private m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0, p1, p2, p1}, Lcom/android/camera/effect/ColorEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    iput-object p3, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffect:Ljava/lang/String;

    return-void
.end method

.method public static isSupportedInCurrentDevice(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private linkToColorEffectController()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/ColorEffectBase;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    const-string v2, "Color Effect Controller"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/ColorEffectController;

    iput-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    iget-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private linkToGpuEffectController()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/ColorEffectBase;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    const-string v2, "GPU Effect Controller"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/GpuEffectController;

    iput-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    iget-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

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

    invoke-direct {p0}, Lcom/android/camera/effect/ColorEffectBase;->linkToColorEffectController()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find color effect controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/ColorEffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/effect/GpuEffectController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/effect/ColorEffectBase;->linkToGpuEffectController()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    invoke-virtual {v0}, Lcom/android/camera/effect/GpuEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessage(Landroid/os/Handler;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    invoke-virtual {v0}, Lcom/android/camera/effect/ColorEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffect:Ljava/lang/String;

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    return-void
.end method

.method public getCapabilities()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/effect/ColorEffectBase;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v3, Lcom/android/camera/effect/ColorEffectBase;->m_MainCameraEffectSupportedList:Ljava/util/List;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    sput-object v3, Lcom/android/camera/effect/ColorEffectBase;->m_MainCameraEffectSupportedList:Ljava/util/List;

    :cond_0
    sget-object v2, Lcom/android/camera/effect/ColorEffectBase;->m_MainCameraEffectSupportedList:Ljava/util/List;

    :goto_0
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Cannot get effect supported list"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-object v3, Lcom/android/camera/effect/ColorEffectBase;->m_FrontCameraEffectSupportedList:Ljava/util/List;

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    sput-object v3, Lcom/android/camera/effect/ColorEffectBase;->m_FrontCameraEffectSupportedList:Ljava/util/List;

    :cond_3
    sget-object v2, Lcom/android/camera/effect/ColorEffectBase;->m_FrontCameraEffectSupportedList:Ljava/util/List;

    goto :goto_0

    :cond_4
    const v0, 0x7fffffff

    iget-object v3, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffect:Ljava/lang/String;

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

.method public releaseCachedResources()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    iput-object v0, p0, Lcom/android/camera/effect/ColorEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    invoke-super {p0}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    return-void
.end method
