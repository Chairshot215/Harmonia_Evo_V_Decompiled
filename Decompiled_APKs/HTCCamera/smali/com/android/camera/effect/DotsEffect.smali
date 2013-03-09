.class public final Lcom/android/camera/effect/DotsEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "DotsEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# instance fields
.field private m_DotSize:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 11

    const/16 v2, 0x32

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v7, "dots"

    new-instance v8, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v9, "5_dots"

    new-array v10, v6, [Lcom/android/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v3

    invoke-direct {v8, v9, v10}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    invoke-direct {p0, v7, p1, v8}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V

    iput v2, p0, Lcom/android/camera/effect/DotsEffect;->m_DotSize:I

    return-void
.end method


# virtual methods
.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 1

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/camera/effect/DotsEffect;->m_DotSize:I

    invoke-super {p0, p1}, Lcom/android/camera/effect/GpuEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method public getDotSize()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/DotsEffect;->m_DotSize:I

    return v0
.end method

.method public setDotSize(I)V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/effect/DotsEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/DotsEffect;->getGpuEffectController()Lcom/android/camera/effect/GpuEffectController;

    move-result-object v7

    if-eqz v7, :cond_1

    iput p1, p0, Lcom/android/camera/effect/DotsEffect;->m_DotSize:I

    invoke-virtual {v7}, Lcom/android/camera/effect/GpuEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/4 v6, 0x1

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-static {v8, v9, v3, v3, v0}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No GPU effect controller to change dot size"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
