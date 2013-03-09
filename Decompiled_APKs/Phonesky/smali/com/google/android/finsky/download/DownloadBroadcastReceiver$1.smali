.class Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;
.super Landroid/os/AsyncTask;
.source "DownloadBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Landroid/net/Uri;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadBroadcastReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$contentUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadBroadcastReceiver;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->this$0:Lcom/google/android/finsky/download/DownloadBroadcastReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->val$contentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 2
    .parameter "fileUri"

    .prologue
    .line 97
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->this$0:Lcom/google/android/finsky/download/DownloadBroadcastReceiver;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    #calls: Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->getHttpStatusForUri(Landroid/net/Uri;)I
    invoke-static {v0, v1}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->access$000(Lcom/google/android/finsky/download/DownloadBroadcastReceiver;Landroid/net/Uri;)I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "httpStatus"

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-static {}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->access$100()Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getDownloadByContentUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/Download;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 104
    .local v0, download:Lcom/google/android/finsky/download/InternalDownload;
    if-nez v0, :cond_0

    .line 105
    const-string v1, "DownloadBroadcastReceiver could not find download in queue."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/InternalDownload;->setHttpStatus(I)V

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->val$action:Ljava/lang/String;

    const-string v2, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-static {}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->access$100()Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyClicked(Lcom/google/android/finsky/download/InternalDownload;)V

    goto :goto_0

    .line 113
    :cond_1
    const-string v1, "DownloadBroadcastReceiver received invalid HTTP status of -1"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->val$action:Ljava/lang/String;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    const-string v1, "Received ACTION_DOWNLOAD_COMPLETE %d for %s - dropping because already in state %s."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    invoke-static {}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->access$100()Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/download/Download$DownloadState;->SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    goto :goto_0

    .line 127
    :cond_4
    invoke-static {}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->access$100()Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    goto :goto_0

    .line 130
    :cond_5
    const-string v1, "Invalid DownloadBroadcastReceiver intent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
