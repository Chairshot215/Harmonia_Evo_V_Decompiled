.class public interface abstract Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;
.super Ljava/lang/Object;
.source "CacheBitmapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/CacheBitmapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnProgressiveTaskListener"
.end annotation


# virtual methods
.method public abstract onTaskBegin(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
.end method

.method public abstract onTaskEnd(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
.end method

.method public abstract onTaskRunning(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;I)V
.end method
