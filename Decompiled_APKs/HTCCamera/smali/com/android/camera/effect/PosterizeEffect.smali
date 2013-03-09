.class public final Lcom/android/camera/effect/PosterizeEffect;
.super Lcom/android/camera/effect/ColorEffectBase;
.source "PosterizeEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "posterize"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/ColorEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    return-void
.end method
