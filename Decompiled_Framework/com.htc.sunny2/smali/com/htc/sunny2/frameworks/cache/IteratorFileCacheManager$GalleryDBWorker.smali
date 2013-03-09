.class Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;
.super Landroid/os/HandlerThread;
.source "IteratorFileCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryDBWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileCacheMonitor"

.field static final MSG_DB_CLOSE:I = 0x4

.field static final MSG_DB_INIT:I = 0x1

.field static final MSG_DB_INSERT:I = 0x2

.field static final MSG_DB_UPDATE:I = 0x3

.field private static final NAME:Ljava/lang/String; = "FileCacheMonitor"


# instance fields
.field private mdbHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->this$0:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    const-string v0, "FileCacheMonitor"

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->mdbHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    const-wide/16 v0, 0x4b0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$1;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$1;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->mdbHandler:Landroid/os/Handler;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->this$0:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    #calls: Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->closeThumnDB()V
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->access$200(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V

    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->mdbHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->mdbHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->mdbHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
