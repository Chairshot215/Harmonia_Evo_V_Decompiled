.class public abstract Lcom/android/camera/effect/GpuEffectBase;
.super Lcom/android/camera/effect/EffectBase;
.source "GpuEffectBase.java"


# instance fields
.field private m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

.field private final m_ColorEffectName:Ljava/lang/String;

.field private final m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

.field private m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V
    .locals 1

    const-string v0, "none"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;Lcom/android/camera/effect/GpuEffectInfo;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;Lcom/android/camera/effect/GpuEffectInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    iput-object p3, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/effect/GpuEffectBase;->m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    return-void
.end method

.method public static isSupportedInCurrentDevice(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/camera/effect/GpuEffectController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getColorEffectController()Lcom/android/camera/effect/ColorEffectController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getGpuEffectController()Lcom/android/camera/effect/GpuEffectController;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/ColorEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectName:Ljava/lang/String;

    invoke-static {v2, v5, v4, v4, v3}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/effect/GpuEffectBase;->m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/effect/GpuEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-virtual {v1}, Lcom/android/camera/effect/GpuEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/GpuEffectBase;->m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    invoke-static {v2, v5, v4, v4, v3}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    return-void
.end method

.method public getCapabilities()I
    .locals 2

    const/16 v0, 0x2a

    const v1, 0x7fffffd5

    return v1
.end method

.method protected final getColorEffectController()Lcom/android/camera/effect/ColorEffectController;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    const-string v1, "Color Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/ColorEffectController;

    iput-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    iget-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    goto :goto_0
.end method

.method protected final getGpuEffectController()Lcom/android/camera/effect/GpuEffectController;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    const-string v1, "GPU Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/GpuEffectController;

    iput-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    iget-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    goto :goto_0
.end method

.method public releaseCachedResources()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    iput-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    invoke-super {p0}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    return-void
.end method
