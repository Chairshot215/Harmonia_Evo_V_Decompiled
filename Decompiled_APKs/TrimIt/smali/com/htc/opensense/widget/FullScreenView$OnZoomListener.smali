.class public interface abstract Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
.super Ljava/lang/Object;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnZoomListener"
.end annotation


# virtual methods
.method public abstract canDoubleClickZoom(FF)Z
.end method

.method public abstract canPinchZoom()Z
.end method

.method public abstract onNeedFitToScreen(I)Z
.end method

.method public abstract onPinchZoom(FF)V
.end method

.method public abstract onPinchZoomEnd()V
.end method

.method public abstract onZoomBegin(F)V
.end method

.method public abstract onZoomEnd(F)V
.end method
