.class public interface abstract Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
.super Ljava/lang/Object;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoramaListener"
.end annotation


# virtual methods
.method public abstract onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V
.end method

.method public abstract onDirectionChanged(Lcom/scalado/caps/autorama/Direction;)V
.end method

.method public abstract onIntermediateCaptureStart(I)V
.end method

.method public abstract onIntermediateJpeg(Lcom/scalado/base/Buffer;I)V
.end method

.method public abstract onIntermediatePostview(Lcom/scalado/base/Image;I)V
.end method

.method public abstract onIntermediateShutter(I)V
.end method

.method public abstract onTracking(FFLcom/scalado/base/Image;)V
.end method
