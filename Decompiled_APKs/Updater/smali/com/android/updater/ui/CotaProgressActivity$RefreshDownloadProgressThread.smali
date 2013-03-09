.class Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;
.super Ljava/lang/Thread;
.source "CotaProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/CotaProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshDownloadProgressThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/CotaProgressActivity;


# direct methods
.method private constructor <init>(Lcom/android/updater/ui/CotaProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/ui/CotaProgressActivity;Lcom/android/updater/ui/CotaProgressActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;-><init>(Lcom/android/updater/ui/CotaProgressActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/updater/ui/CotaProgressActivity;->access$300(Lcom/android/updater/ui/CotaProgressActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :try_start_1
    iget-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/updater/ui/CotaProgressActivity;->access$400(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 227
    const-string v2, "UpdaterAPK | CotaProgressActivity"

    const-string v4, "No download record!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    monitor-exit v3

    .line 242
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/updater/ui/CotaProgressActivity;->access$400(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 231
    iget-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/updater/ui/CotaProgressActivity;->access$400(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    const-string v2, "UpdaterAPK | CotaProgressActivity"

    const-string v4, "In Thread: No more record for cursor!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit v3

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "UpdaterAPK | CotaProgressActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RefreshDownloadProgressThread run() error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 236
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mRefreshDownloadProgressHandler:Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;
    invoke-static {v2}, Lcom/android/updater/ui/CotaProgressActivity;->access$500(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
