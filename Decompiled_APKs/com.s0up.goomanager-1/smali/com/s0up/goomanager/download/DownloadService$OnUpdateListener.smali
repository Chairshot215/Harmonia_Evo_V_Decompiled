.class public interface abstract Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;
.super Ljava/lang/Object;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUpdateListener"
.end annotation


# virtual methods
.method public abstract onDownloadCancelled(Lcom/s0up/goomanager/download/Download;)V
.end method

.method public abstract onDownloadCheckingMD5Sum(Lcom/s0up/goomanager/download/Download;)V
.end method

.method public abstract onDownloadErrored(Lcom/s0up/goomanager/download/Download;I)V
.end method

.method public abstract onDownloadFinished(Lcom/s0up/goomanager/download/Download;)V
.end method

.method public abstract onDownloadStarted(Lcom/s0up/goomanager/download/Download;)V
.end method

.method public abstract onDownloadUpdated(Lcom/s0up/goomanager/download/Download;)V
.end method
