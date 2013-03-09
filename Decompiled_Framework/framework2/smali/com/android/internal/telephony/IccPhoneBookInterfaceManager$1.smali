.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GET_RECORD_SIZE Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " #record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    const-string v4, "IccPhoneBookInterfaceManager"

    const-string v6, "handle message: EVENT_GET_SIZE_DONE"

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-static {}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$000()[I

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    :goto_2
    iput-boolean v4, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    move v4, v5

    goto :goto_2

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iput-object v4, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    :cond_2
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "Cannot load ADN records"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v5

    :try_start_5
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    #setter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;
    invoke-static {v6, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$102(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/util/List;)Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "load ADN records success!!"

    #calls: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V

    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v4

    :cond_5
    :try_start_6
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v5

    if-eqz v1, :cond_6

    :try_start_7
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "Cannot add PBK entry"

    #calls: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V

    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ADNErrorType;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    const-string v3, "MemoryFull:"

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AdnFull"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v4

    :cond_7
    :try_start_8
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    goto :goto_5

    :cond_8
    const/4 v4, 0x3

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v5

    if-eqz v1, :cond_9

    :try_start_9
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "Cannot update PBK entry"

    #calls: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V

    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ADNErrorType;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    const-string v3, "MemoryFull:"

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    :cond_9
    :goto_6
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v4

    :cond_a
    const/4 v4, 0x3

    :try_start_a
    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v5

    if-eqz v1, :cond_b

    :try_start_b
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "Cannot delete PBK entry"

    #calls: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V

    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ADNErrorType;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    const/4 v4, 0x3

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
