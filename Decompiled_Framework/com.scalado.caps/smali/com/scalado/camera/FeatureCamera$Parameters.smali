.class public interface abstract Lcom/scalado/camera/FeatureCamera$Parameters;
.super Ljava/lang/Object;
.source "FeatureCamera.java"

# interfaces
.implements Lcom/scalado/camera/Camera$Parameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Parameters"
.end annotation


# virtual methods
.method public abstract getBurstCaptureInterval()I
.end method

.method public abstract getBurstRetroactiveCaptures()I
.end method

.method public abstract getBurstTotalCaptures()I
.end method

.method public abstract getExposureBracketing()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxBurstRetroactiveCaptures()I
.end method

.method public abstract getMaxBurstTotalCaptures()I
.end method

.method public abstract getZeroShutterLag()Z
.end method

.method public abstract isBurstIntervalSupported()Z
.end method

.method public abstract isExposureBracketingSupported()Z
.end method

.method public abstract isZeroShutterLagSupported()Z
.end method

.method public abstract setBurstCaptureInterval(I)V
.end method

.method public abstract setBurstRetroactiveCaptures(I)V
.end method

.method public abstract setBurstTotalCaptures(I)V
.end method

.method public varargs abstract setExposureBracketing([I)V
.end method

.method public abstract setZeroShutterLag(Z)V
.end method
