.class Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;
.super Ljava/lang/Thread;
.source "ThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/util/ThreadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/util/ThreadHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-boolean v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mIsStop:Z

    if-nez v1, :cond_1

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    #getter for: Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->access$000(Lcom/htc/android/mail/eassvc/util/ThreadHandler;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget v3, v3, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAliveTime:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    iput-object v1, v2, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    .line 100
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    #getter for: Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->access$000(Lcom/htc/android/mail/eassvc/util/ThreadHandler;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    if-nez v1, :cond_2

    .line 102
    const-string v1, "ThreadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget v4, v4, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAliveTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds, stop thread."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    .line 104
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iput-object v6, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    .line 122
    :cond_1
    return-void

    .line 106
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    const-string v1, "ThreadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAction:Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAction:Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    invoke-interface {v1, v2}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;->run(Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 117
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    :goto_1
    iput-object v6, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    goto/16 :goto_0

    .line 106
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 116
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    if-eqz v1, :cond_5

    .line 117
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 119
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    goto :goto_1

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 117
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 119
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->this$0:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iput-object v6, v2, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    .line 116
    throw v1
.end method
