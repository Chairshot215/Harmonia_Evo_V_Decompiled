.class public interface abstract Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;
.super Ljava/lang/Object;
.source "HtcPaintingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/HtcPaintingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCacheListener"
.end annotation


# static fields
.field public static final CACHE_STATE_NOT_READY:I = 0x0

.field public static final CACHE_STATE_READY:I = 0x1

.field public static final CACHE_STATE_RUNNING:I = 0x2


# virtual methods
.method public abstract onCacheStateChanged(II)V
.end method
