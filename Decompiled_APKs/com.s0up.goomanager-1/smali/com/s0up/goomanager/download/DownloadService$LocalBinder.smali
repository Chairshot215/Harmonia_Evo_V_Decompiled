.class public Lcom/s0up/goomanager/download/DownloadService$LocalBinder;
.super Landroid/os/Binder;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/download/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownload(I)Z
    .locals 3
    .parameter "hashCode"

    .prologue
    .line 707
    iget-object v1, p0, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #getter for: Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/s0up/goomanager/download/DownloadService;->access$1(Lcom/s0up/goomanager/download/DownloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s0up/goomanager/download/Download;

    .line 708
    .local v0, download:Lcom/s0up/goomanager/download/Download;
    iget-object v1, v0, Lcom/s0up/goomanager/download/Download;->continueDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 710
    iget-object v1, v0, Lcom/s0up/goomanager/download/Download;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #getter for: Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/s0up/goomanager/download/DownloadService;->access$1(Lcom/s0up/goomanager/download/DownloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCurrentDownloads()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/s0up/goomanager/download/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #getter for: Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/s0up/goomanager/download/DownloadService;->access$1(Lcom/s0up/goomanager/download/DownloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public setOnUpdateListener(Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #setter for: Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;
    invoke-static {v0, p1}, Lcom/s0up/goomanager/download/DownloadService;->access$11(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;)V

    .line 721
    return-void
.end method
