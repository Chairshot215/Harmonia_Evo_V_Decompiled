.class Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;
.super Landroid/os/AsyncTask;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetAutoDownloadStateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/SharedPreferences;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mDownloadManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/util/DownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field mIsRoaming:Z


# direct methods
.method constructor <init>(ZLcom/android/mms/util/DownloadManager;)V
    .locals 1
    .parameter "isRoaming"
    .parameter "downloadManager"

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 133
    iput-boolean p1, p0, Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;->mIsRoaming:Z

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;->mDownloadManager:Ljava/lang/ref/WeakReference;

    .line 135
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    check-cast p1, [Landroid/content/SharedPreferences;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;->doInBackground([Landroid/content/SharedPreferences;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/SharedPreferences;)Ljava/lang/Void;
    .locals 4
    .parameter "sharedPreferences"

    .prologue
    .line 139
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 142
    .local v0, sharedPreference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;->mDownloadManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/DownloadManager;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;->mDownloadManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/DownloadManager;

    iget-boolean v3, p0, Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;->mIsRoaming:Z

    invoke-static {v0, v3}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    #setter for: Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z
    invoke-static {v2, v3}, Lcom/android/mms/util/DownloadManager;->access$002(Lcom/android/mms/util/DownloadManager;Z)Z

    .line 149
    monitor-exit v1

    .line 150
    const/4 v1, 0x0

    return-object v1

    .line 149
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
