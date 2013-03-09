.class public Lcom/android/camera/effect/AquaEffect;
.super Lcom/android/camera/effect/ColorEffectBase;
.source "AquaEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "aqua"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/ColorEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    return-void
.end method
