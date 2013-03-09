.class Lcom/htc/painting/engine/HtcPaintingView$4;
.super Ljava/lang/Object;
.source "HtcPaintingView.java"

# interfaces
.implements Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/HtcPaintingView;->startWorkers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/HtcPaintingView;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$4;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskBegin(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 0
    .parameter "key"
    .parameter "result"

    .prologue
    .line 326
    return-void
.end method

.method public onTaskEnd(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 1
    .parameter "key"
    .parameter "result"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$4;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPaintingView;->postInvalidate()V

    .line 339
    return-void
.end method

.method public onTaskRunning(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;I)V
    .locals 0
    .parameter "key"
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 333
    return-void
.end method
