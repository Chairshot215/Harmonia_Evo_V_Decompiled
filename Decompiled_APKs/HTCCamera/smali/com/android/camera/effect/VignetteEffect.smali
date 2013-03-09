.class public final Lcom/android/camera/effect/VignetteEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "VignetteEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# static fields
.field private static final DEFAULT_RADIUS:I


# instance fields
.field private m_Radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x400199999999999aL

    div-double/2addr v0, v2

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/effect/VignetteEffect;->DEFAULT_RADIUS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v7, "vignette"

    new-instance v8, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v9, "4_spotlight"

    const/4 v0, 0x2

    new-array v10, v0, [Lcom/android/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/16 v2, 0x46

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v3

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v5, Lcom/android/camera/effect/VignetteEffect;->DEFAULT_RADIUS:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v6

    invoke-direct {v8, v9, v10}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    invoke-direct {p0, v7, p1, v8}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V

    sget v0, Lcom/android/camera/effect/VignetteEffect;->DEFAULT_RADIUS:I

    iput v0, p0, Lcom/android/camera/effect/VignetteEffect;->m_Radius:I

    return-void
.end method


# virtual methods
.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 1

    sget v0, Lcom/android/camera/effect/VignetteEffect;->DEFAULT_RADIUS:I

    iput v0, p0, Lcom/android/camera/effect/VignetteEffect;->m_Radius:I

    invoke-super {p0, p1}, Lcom/android/camera/effect/GpuEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method public getAppliedImageSettings()Lcom/android/camera/ImageSettings;
    .locals 2

    invoke-super {p0}, Lcom/android/camera/effect/GpuEffectBase;->getAppliedImageSettings()Lcom/android/camera/ImageSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Integer;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/VignetteEffect;->m_Radius:I

    return v0
.end method

.method public setRadius(I)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/camera/effect/VignetteEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/VignetteEffect;->getGpuEffectController()Lcom/android/camera/effect/GpuEffectController;

    move-result-object v7

    if-eqz v7, :cond_1

    iput p1, p0, Lcom/android/camera/effect/VignetteEffect;->m_Radius:I

    invoke-virtual {v7}, Lcom/android/camera/effect/GpuEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    add-int/2addr v4, p1

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-static {v8, v9, v10, v10, v0}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No GPU effect controller to change radius"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
