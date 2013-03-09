.class Lcom/android/browser/CrashRecoveryHandler$1;
.super Landroid/os/Handler;
.source "CrashRecoveryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/CrashRecoveryHandler;-><init>(Lcom/android/browser/Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/CrashRecoveryHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/CrashRecoveryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 86
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 93
    .local v2, p:Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 94
    .local v3, state:Landroid/os/Bundle;
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    #getter for: Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/browser/CrashRecoveryHandler;->access$000(Lcom/android/browser/CrashRecoveryHandler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "browser_state.parcel.journal"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v5, stateJournal:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v1, fout:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 100
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    #getter for: Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/browser/CrashRecoveryHandler;->access$000(Lcom/android/browser/CrashRecoveryHandler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "browser_state.parcel"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v4, stateFile:Ljava/io/File;
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 105
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 106
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 108
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .end local v3           #state:Landroid/os/Bundle;
    .end local v4           #stateFile:Ljava/io/File;
    .end local v5           #stateJournal:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    const-string v6, "BrowserCrashRecovery"

    const-string v7, "Failed to save persistent state"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v6

    .line 118
    .end local v2           #p:Landroid/os/Parcel;
    :pswitch_1
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    #getter for: Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/browser/CrashRecoveryHandler;->access$000(Lcom/android/browser/CrashRecoveryHandler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "browser_state.parcel"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v3, state:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 124
    .end local v3           #state:Ljava/io/File;
    :pswitch_2
    iget-object v6, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    iget-object v7, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    #calls: Lcom/android/browser/CrashRecoveryHandler;->loadCrashState()Landroid/os/Bundle;
    invoke-static {v7}, Lcom/android/browser/CrashRecoveryHandler;->access$200(Lcom/android/browser/CrashRecoveryHandler;)Landroid/os/Bundle;

    move-result-object v7

    #setter for: Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;
    invoke-static {v6, v7}, Lcom/android/browser/CrashRecoveryHandler;->access$102(Lcom/android/browser/CrashRecoveryHandler;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 125
    iget-object v7, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    monitor-enter v7

    .line 126
    :try_start_2
    iget-object v6, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    const/4 v8, 0x0

    #setter for: Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z
    invoke-static {v6, v8}, Lcom/android/browser/CrashRecoveryHandler;->access$302(Lcom/android/browser/CrashRecoveryHandler;Z)Z

    .line 127
    iget-object v6, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    const/4 v8, 0x1

    #setter for: Lcom/android/browser/CrashRecoveryHandler;->mDidPreload:Z
    invoke-static {v6, v8}, Lcom/android/browser/CrashRecoveryHandler;->access$402(Lcom/android/browser/CrashRecoveryHandler;Z)Z

    .line 128
    iget-object v6, p0, Lcom/android/browser/CrashRecoveryHandler$1;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
