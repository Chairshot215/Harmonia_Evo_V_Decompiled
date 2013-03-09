.class Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressRunnable"
.end annotation


# instance fields
.field private mDownloadProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field

.field private mNewUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOldUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadProgressManager;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/download/DownloadProgressManager;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, downloadProgressMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/finsky/download/DownloadProgress;>;"
    .local p3, oldUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .local p4, newUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mOldUris:Ljava/util/Set;

    .line 138
    iput-object p4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mNewUris:Ljava/util/Set;

    .line 139
    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mDownloadProgressMap:Ljava/util/Map;

    .line 140
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 144
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    #getter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;
    invoke-static {v4}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$500(Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-result-object v1

    .line 145
    .local v1, downloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mOldUris:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 146
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v1, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getDownloadByContentUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/Download;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 148
    .local v0, download:Lcom/google/android/finsky/download/InternalDownload;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    #getter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;
    invoke-static {v4}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$500(Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->cancel(Lcom/google/android/finsky/download/Download;)V

    goto :goto_0

    .line 154
    .end local v0           #download:Lcom/google/android/finsky/download/InternalDownload;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mNewUris:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 155
    .restart local v3       #uri:Landroid/net/Uri;
    invoke-virtual {v1, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getDownloadByContentUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/Download;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 157
    .restart local v0       #download:Lcom/google/android/finsky/download/InternalDownload;
    if-eqz v0, :cond_2

    .line 168
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mDownloadProgressMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/download/DownloadProgress;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyProgress(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/DownloadProgress;)V

    goto :goto_1

    .line 171
    .end local v0           #download:Lcom/google/android/finsky/download/InternalDownload;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    return-void
.end method
