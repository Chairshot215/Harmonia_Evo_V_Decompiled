.class public Lcom/android/camera/effect/SepiaEffect;
.super Lcom/android/camera/effect/ColorEffectBase;
.source "SepiaEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const-string v0, "vintage-sepia"

    const-string v1, "sepia"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/effect/ColorEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;)V

    return-void
.end method
