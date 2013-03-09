.class Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "SimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v6, :cond_0

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SimSmsInterfaceManager drop event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v7, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$302(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    move v5, v4

    :cond_2
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v7, v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-ne v5, v4, :cond_3

    :try_start_2
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v3, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_3

    :try_start_3
    array-length v4, v3

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v5, 0x0

    aget v5, v3, v5

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mReturnedIndex:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;I)I

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :catch_0
    move-exception v2

    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :cond_4
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v6, "Cannot load Sms records"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_6
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    :goto_2
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v7, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4

    :cond_5
    move v4, v5

    goto :goto_2

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_7
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;[B)[B

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4

    :cond_7
    :try_start_8
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v6, "Cannot load singleSms records"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)[B

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v6, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v4, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;[B)[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_9
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iput-object v4, v6, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsc:Ljava/lang/String;

    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v4

    :cond_8
    :try_start_a
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v6, "Cannot load Sms Center"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsc:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_b
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_9

    :goto_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v4

    :cond_9
    :try_start_c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v6, "Cannot update Sms Center"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_5

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_d
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_a

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCarrierID:Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    :goto_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v4

    :cond_a
    :try_start_e
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v6, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCarrierID:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v6, "Cannot get carrier id"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
