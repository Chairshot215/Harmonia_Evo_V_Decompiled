.class Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;
.super Landroid/os/Handler;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadManagerHandler"
.end annotation


# instance fields
.field private mInfo:Lcom/android/providers/downloads/DownloadInfo;

.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "info"
    .parameter "content"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 135
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 147
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    monitor-enter v1

    .line 150
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mHasAPNResult:Z

    if-ne v0, v2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iput-boolean v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mHasAPNResult:Z

    .line 157
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;->this$0:Lcom/android/providers/downloads/DownloadService;

    #calls: Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadService;->access$000(Lcom/android/providers/downloads/DownloadService;)V

    goto :goto_0
.end method
