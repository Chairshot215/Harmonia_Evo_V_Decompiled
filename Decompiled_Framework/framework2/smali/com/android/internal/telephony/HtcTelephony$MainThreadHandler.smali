.class final Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;
.super Landroid/os/Handler;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephony;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HtcTelephony;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephony;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query cave"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x67

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCAVE(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query cave result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_1
    monitor-enter v28

    :try_start_0
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request cave"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x65

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request cave result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_2
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_3
    monitor-enter v28

    :try_start_1
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :pswitch_5
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query MD5"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x6b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query MD5 result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_3
    monitor-enter v28

    :try_start_2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    :cond_4
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_7
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request MD5"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v17, v2, v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v16, v2, v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v15, v2, v3

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chapid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; chapchallengelength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; chapchallenge:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x69

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1, v15, v3}, Lcom/android/internal/telephony/Phone;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request MD5 result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_5
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_6
    monitor-enter v28

    :try_start_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    :cond_7
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_9
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query VPM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x6f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query VPM result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_6
    monitor-enter v28

    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    :cond_8
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :pswitch_b
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request VPM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x6d

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->requestVPM(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request VPM result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_7
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_a
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_b
    monitor-enter v28

    :try_start_5
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v28
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    :pswitch_d
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request SSD UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x71

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_e
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request SSD UPDATE result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_8
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_c

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_d
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_e
    monitor-enter v28

    :try_start_6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    :pswitch_f
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query SSD UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x73

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_10
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query SSD UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_9
    monitor-enter v28

    :try_start_7
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    :cond_f
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_11
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request SSD UPDATE CONFIRM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v13, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x75

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v13, v3}, Lcom/android/internal/telephony/Phone;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    const-string v2, "HtcTelephony"

    const-string v3, "get cw request SSD UPDATE CONFIRM result: success"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_a
    monitor-enter v28

    :try_start_8
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v28
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    :cond_10
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get cw request SSD UPDATE CONFIRM result: fail. exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_a

    :pswitch_13
    const-string v2, "HtcTelephony"

    const-string v3, "send CMD_HTC_CW_QUERY_UIMAUTH"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x77

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryUIMAUTH(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_14
    const-string v2, "HtcTelephony"

    const-string v3, "get CMD_HTC_CW_QUERY_UIMAUTH result!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_15

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v32, v2

    check-cast v32, [Ljava/lang/String;

    const-string v33, ""

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len of uimauth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_b
    move-object/from16 v0, v32

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v32, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    aget-object v2, v32, v18

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v14, v14, 0x1

    :cond_11
    :goto_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    :cond_12
    aget-object v2, v32, v18

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "md5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v14, v14, 0x2

    goto :goto_c

    :cond_13
    aget-object v2, v32, v18

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "akacave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    add-int/lit8 v14, v14, 0x4

    goto :goto_c

    :cond_14
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uimauthList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v28

    :try_start_9
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    :cond_15
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :pswitch_15
    const-string v2, "HtcTelephony"

    const-string v3, "send CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x79

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_16
    const-string v2, "HtcTelephony"

    const-string v3, "get CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT result!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v27, v2

    check-cast v27, [I

    const/4 v2, 0x0

    aget v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_e
    monitor-enter v28

    :try_start_a
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v28
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v2

    :cond_16
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :pswitch_17
    const-string v2, "HtcTelephony"

    const-string v3, "send CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x7c

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_18
    const-string v2, "HtcTelephony"

    const-string v3, "get CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_19

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_f
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_17

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_17
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_10
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_18

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_18
    monitor-enter v28

    :try_start_b
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v28
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v2

    :cond_19
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v12, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;

    const/16 v2, 0x7e

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget v3, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->cla:I

    iget v4, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->command:I

    iget v5, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->channel:I

    iget v6, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p1:I

    iget v7, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p2:I

    iget v8, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p3:I

    iget-object v9, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1a

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1a

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_11
    monitor-enter v28

    :try_start_c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v28
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v2

    :cond_1a
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/16 v2, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v10}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1b

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_12
    monitor-enter v28

    :try_start_d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v28
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v2

    :cond_1b
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->lastError:I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$102(Lcom/android/internal/telephony/HtcTelephony;I)I

    goto :goto_12

    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/16 v2, 0x82

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, v10}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1c

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_13
    monitor-enter v28

    :try_start_e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v28
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v2

    :cond_1c
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_13

    :pswitch_1f
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_UICC_AUTHENTICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const-string v4, "7FFF"

    const-string v5, "11"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x86

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_20
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/IccIoResult;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1e

    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sw1"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "sw2"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "payload"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_14
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_1d

    const-string v2, "HtcTelephony"

    const-string v3, "result is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_1d
    monitor-enter v28

    :try_start_f
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v28
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v2

    :cond_1e
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :pswitch_21
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_GET_SECTOR_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x84

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSectorID(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_22
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_GET_SECTOR_ID_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_20

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_15
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_1f

    const-string v2, "HtcTelephony"

    const-string v3, "result is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_1f
    monitor-enter v28

    :try_start_10
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v28
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v2

    :cond_20
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :pswitch_23
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_CSIM_AUTH_RSP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$300(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    if-eqz v11, :cond_21

    :try_start_11
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->mCSIMResult:Landroid/os/Bundle;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$402(Lcom/android/internal/telephony/HtcTelephony;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$300(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v2

    :pswitch_24
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_PERMANENT_DETACH_LTE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const-string v3, "C8260A0000"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v7, 0x89

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_25
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP2"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->access$502(Lcom/android/internal/telephony/HtcTelephony;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$502(Lcom/android/internal/telephony/HtcTelephony;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOldNV_10: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_24

    :cond_22
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can not get NV#10"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v28

    :try_start_12
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_12
    move-exception v2

    monitor-exit v28
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v2

    :cond_23
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_24
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x8a

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_26
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_25

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE_DONE, mOldNV_10.substring(10): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v7, 0xe

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C8270A0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v7, 0xe

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v7, 0x8b

    move-object/from16 v0, v28

    invoke-virtual {v5, v7, v0}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_25
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to set PreferNetwork to CDMA/EvDo!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v28

    :try_start_13
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v28
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v2

    :pswitch_27
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_PERMANENT_DETACH_LTE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_26

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_27

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_17
    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v28

    :try_start_14
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_14
    move-exception v2

    monitor-exit v28
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v2

    :cond_27
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_17

    :pswitch_28
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_AKA"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->rand:[B

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x8d

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_29
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_GBA_BOOTSTRAP"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->rand:[B

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x8f

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_2a
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_GBA_NAF"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v24, v2

    check-cast v24, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x91

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_2b
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_WRITE_GBA_PARAM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mEfid:I

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mData:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x93

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_2c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_29

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_28

    const-string v2, "HtcTelephony"

    const-string v3, "result is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_28
    monitor-enter v28

    :try_start_15
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_15
    move-exception v2

    monitor-exit v28
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v2

    :cond_29
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_18

    :pswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Integer;

    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x95

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_2e
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2a

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_19
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v28

    :try_start_16
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_16
    move-exception v2

    monitor-exit v28
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v2

    :cond_2a
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_19

    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnQuery(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$600(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    goto/16 :goto_0

    :pswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnQueryContResult(ILandroid/os/AsyncResult;)V
    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$700(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnQueryResponse(ILandroid/os/AsyncResult;)V
    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$800(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnUpdate(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$900(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    goto/16 :goto_0

    :pswitch_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnUpdateResponse(IILandroid/os/AsyncResult;)V
    invoke-static {v3, v4, v5, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$1000(Lcom/android/internal/telephony/HtcTelephony;IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnChangeTakeEffect()V
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$1100(Lcom/android/internal/telephony/HtcTelephony;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_21
        :pswitch_22
        :pswitch_1f
        :pswitch_20
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2c
        :pswitch_29
        :pswitch_2c
        :pswitch_2a
        :pswitch_2c
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method
