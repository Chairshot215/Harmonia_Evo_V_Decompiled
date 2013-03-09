.class public interface abstract Lcom/scalado/camera/hdr/HDR$HDRListener;
.super Ljava/lang/Object;
.source "HDR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr/HDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HDRListener"
.end annotation


# virtual methods
.method public abstract onIntermediateJpeg([BIF)V
.end method

.method public abstract onIntermediatePostview([BIF)V
.end method

.method public abstract onIntermediateShutter(I)V
.end method
