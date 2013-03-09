.class Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;
.super Ljava/lang/Thread;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderThread"
.end annotation


# instance fields
.field mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

.field mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/htc/htccalendarwidgets/EventLoader;)V
    .locals 0
    .parameter
    .parameter "eventLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;",
            ">;",
            "Lcom/htc/htccalendarwidgets/EventLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 166
    iput-object p2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 182
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 187
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;

    .line 188
    .local v1, request:Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;
    const-string v2, "EventLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoaderThread.run(), mQueue.size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", (1)request : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 193
    invoke-static {}, Lcom/htc/htccalendarwidgets/EventLoader;->access$500()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    const-string v2, "EventLoader"

    const-string v3, "LoaderThread.run(), finally but mQueue is not empty!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_0
    :goto_2
    return-void

    .line 197
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    invoke-interface {v1, v2}, Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;->skipRequest(Lcom/htc/htccalendarwidgets/EventLoader;)V

    .line 200
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #request:Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;
    check-cast v1, Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;

    .line 201
    .restart local v1       #request:Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;
    const-string v2, "EventLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoaderThread.run(), request : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 208
    .end local v1           #request:Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;
    :catch_0
    move-exception v0

    .line 209
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "EventLoader"

    const-string v3, "background LoaderThread interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 213
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 214
    const-string v3, "EventLoader"

    const-string v4, "LoaderThread.run(), finally but mQueue is not empty!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_2
    throw v2

    .line 204
    .restart local v1       #request:Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;
    :cond_3
    :try_start_3
    instance-of v2, v1, Lcom/htc/htccalendarwidgets/EventLoader$ShutdownRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v2, :cond_4

    .line 213
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    const-string v2, "EventLoader"

    const-string v3, "LoaderThread.run(), finally but mQueue is not empty!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    goto :goto_2

    .line 207
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    invoke-interface {v1, v2}, Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;->processRequest(Lcom/htc/htccalendarwidgets/EventLoader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/htc/htccalendarwidgets/EventLoader$ShutdownRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/htc/htccalendarwidgets/EventLoader$ShutdownRequest;-><init>(Lcom/htc/htccalendarwidgets/EventLoader$1;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 176
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "EventLoader"

    const-string v2, "LoaderThread.shutdown() interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
