.class Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;
.super Ljava/lang/Thread;
.source "ProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshDownloadProgressThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/ProgressActivity;


# direct methods
.method private constructor <init>(Lcom/android/updater/ui/ProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/ui/ProgressActivity;Lcom/android/updater/ui/ProgressActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;-><init>(Lcom/android/updater/ui/ProgressActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 331
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v2}, Lcom/android/updater/ui/ProgressActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    :goto_0
    return-void

    .line 338
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/updater/ui/ProgressActivity;->access$400(Lcom/android/updater/ui/ProgressActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :try_start_1
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/updater/ui/ProgressActivity;->access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 340
    const-string v2, "UpdaterAPK | ProgressActivity"

    const-string v4, "No download record!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit v3

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "UpdaterAPK | ProgressActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RefreshDownloadProgressThread run() error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/updater/ui/ProgressActivity;->access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 344
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/updater/ui/ProgressActivity;->access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    const-string v2, "UpdaterAPK | ProgressActivity"

    const-string v4, "In Thread: No more record for cursor!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v3

    goto :goto_0

    .line 349
    :cond_2
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v2}, Lcom/android/updater/ui/ProgressActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    monitor-exit v3

    goto :goto_0

    .line 354
    :cond_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 355
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mRefreshDownloadProgressHandler:Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;
    invoke-static {v2}, Lcom/android/updater/ui/ProgressActivity;->access$600(Lcom/android/updater/ui/ProgressActivity;)Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
