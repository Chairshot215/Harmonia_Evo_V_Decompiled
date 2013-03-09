.class public interface abstract Landroid/webkit/WebView$OnWebViewTabEffectListener;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWebViewTabEffectListener"
.end annotation


# virtual methods
.method public abstract onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract onIsTabDialogShowing()Z
.end method

.method public abstract onMultiTouchBouncingMinScale(Landroid/webkit/WebView;Z)V
.end method

.method public abstract onPaintTabEffect(Landroid/graphics/Bitmap;Landroid/webkit/WebView;Landroid/graphics/Canvas;FLandroid/graphics/PointF;IZI)V
.end method

.method public abstract onResetTabEffect(Landroid/webkit/WebView;)V
.end method
