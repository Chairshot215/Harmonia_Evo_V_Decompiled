.class Lcom/google/android/finsky/download/DownloadQueueImpl$7;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Lcom/google/android/finsky/utils/ParameterizedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;->enqueueDownload(Lcom/google/android/finsky/download/InternalDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/utils/ParameterizedRunnable",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$download:Lcom/google/android/finsky/download/InternalDownload;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/InternalDownload;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->val$download:Lcom/google/android/finsky/download/InternalDownload;

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 550
    const-string v0, "Enqueued %s as %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->val$download:Lcom/google/android/finsky/download/InternalDownload;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl$7;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 547
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->run(Landroid/net/Uri;)V

    return-void
.end method
