.class Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;
.super Landroid/os/HandlerThread;
.source "ImageFileCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbDBWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;
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

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageFileCacheManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageFileCacheManager;)V
    .locals 2
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->this$0:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    .line 507
    const-string v0, "FileCacheMonitor"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->mdbHandler:Landroid/os/Handler;

    .line 509
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 518
    new-instance v0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$1;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$1;-><init>(Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->mdbHandler:Landroid/os/Handler;

    .line 562
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->mdbHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->mdbHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->mdbHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    :cond_0
    return-void
.end method
