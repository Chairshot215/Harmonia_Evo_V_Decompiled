.class Lcom/android/smith/ClientSocket$ClientSocketThread$1;
.super Landroid/os/Handler;
.source "ClientSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/smith/ClientSocket$ClientSocketThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;


# direct methods
.method constructor <init>(Lcom/android/smith/ClientSocket$ClientSocketThread;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const v6, 0xffe7

    const/4 v8, -0x1

    .line 376
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 546
    const-string v3, "SM:ClientSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #calls: Lcom/android/smith/ClientSocket$ClientSocketThread;->unLock()V
    invoke-static {v3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$800(Lcom/android/smith/ClientSocket$ClientSocketThread;)V

    .line 549
    return-void

    .line 379
    :pswitch_0
    const-string v3, "SM:ClientSocket"

    const-string v4, "MSG_SOCKET_OPEN begin"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v5, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v3, v6}, Lcom/android/smith/ClientSocket;->openDirect(Ljava/lang/String;I)Z

    move-result v3

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v4, v3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$402(Lcom/android/smith/ClientSocket$ClientSocketThread;Z)Z

    .line 389
    const-string v3, "SM:ClientSocket"

    const-string v4, "MSG_SOCKET_OPEN end"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$400(Lcom/android/smith/ClientSocket$ClientSocketThread;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/smith/ClientSocket$OnSocketEventListener;->onSocketOpened(Z)V

    goto :goto_0

    .line 398
    :pswitch_1
    const-string v3, "SM:ClientSocket"

    const-string v4, "MSG_SOCKET_OPEN_SERVICE begin"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 408
    .local v2, service:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, v4, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    const-string v5, "127.0.0.1"

    invoke-virtual {v4, v5, v6}, Lcom/android/smith/ClientSocket;->openDirect(Ljava/lang/String;I)Z

    move-result v4

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v3, v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$402(Lcom/android/smith/ClientSocket$ClientSocketThread;Z)Z

    .line 410
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$400(Lcom/android/smith/ClientSocket$ClientSocketThread;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 414
    :try_start_0
    const-string v3, "/data/data/com.android.smith/bin/smithd"

    invoke-static {v3}, Lcom/android/smith/Device;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 416
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #setter for: Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;
    invoke-static {v3, v9}, Lcom/android/smith/ClientSocket;->access$502(Lcom/android/smith/ClientSocket;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 425
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, v4, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    const-string v5, "127.0.0.1"

    invoke-virtual {v4, v5, v6}, Lcom/android/smith/ClientSocket;->openDirect(Ljava/lang/String;I)Z

    move-result v4

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v3, v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$402(Lcom/android/smith/ClientSocket$ClientSocketThread;Z)Z

    .line 428
    :cond_1
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$400(Lcom/android/smith/ClientSocket$ClientSocketThread;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    invoke-virtual {v3, v2}, Lcom/android/smith/ClientSocket;->issueServiceCommandReturnIntDirect(Ljava/lang/String;)I

    move-result v1

    .line 432
    .local v1, port:I
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    invoke-virtual {v3}, Lcom/android/smith/ClientSocket;->closeDirect()V

    .line 434
    if-ne v1, v8, :cond_3

    .line 436
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v3, v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$402(Lcom/android/smith/ClientSocket$ClientSocketThread;Z)Z

    .line 444
    .end local v1           #port:I
    :cond_2
    :goto_2
    const-string v3, "SM:ClientSocket"

    const-string v4, "MSG_SOCKET_OPEN_SERVICE end"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 448
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$400(Lcom/android/smith/ClientSocket$ClientSocketThread;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/smith/ClientSocket$OnSocketEventListener;->onSocketOpened(Z)V

    goto/16 :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SM:ClientSocket"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 440
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #port:I
    :cond_3
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, v4, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    const-string v5, "127.0.0.1"

    invoke-virtual {v4, v5, v1}, Lcom/android/smith/ClientSocket;->openDirect(Ljava/lang/String;I)Z

    move-result v4

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v3, v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$402(Lcom/android/smith/ClientSocket$ClientSocketThread;Z)Z

    goto :goto_2

    .line 459
    .end local v1           #port:I
    .end local v2           #service:Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, v4, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    invoke-virtual {v4}, Lcom/android/smith/ClientSocket;->isConnectedDirect()Z

    move-result v4

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v3, v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$402(Lcom/android/smith/ClientSocket$ClientSocketThread;Z)Z

    .line 461
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$400(Lcom/android/smith/ClientSocket$ClientSocketThread;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/smith/ClientSocket$OnSocketEventListener;->isSocketConnected(Z)V

    goto/16 :goto_0

    .line 474
    :pswitch_3
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, v4, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    invoke-virtual {v4}, Lcom/android/smith/ClientSocket;->isClosedDirect()Z

    move-result v4

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v3, v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$402(Lcom/android/smith/ClientSocket$ClientSocketThread;Z)Z

    .line 476
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 478
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$400(Lcom/android/smith/ClientSocket$ClientSocketThread;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/smith/ClientSocket$OnSocketEventListener;->isSocketClosed(Z)V

    goto/16 :goto_0

    .line 490
    :pswitch_4
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I
    invoke-static {v3, v8}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$602(Lcom/android/smith/ClientSocket$ClientSocketThread;I)I

    .line 492
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B
    invoke-static {v3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$700(Lcom/android/smith/ClientSocket$ClientSocketThread;)[B

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B
    invoke-static {v3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$700(Lcom/android/smith/ClientSocket$ClientSocketThread;)[B

    move-result-object v3

    array-length v3, v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ge v3, v4, :cond_5

    .line 494
    :cond_4
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget v4, p1, Landroid/os/Message;->arg2:I

    new-array v4, v4, [B

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B
    invoke-static {v3, v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$702(Lcom/android/smith/ClientSocket$ClientSocketThread;[B)[B

    .line 497
    :cond_5
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v4, v4, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    iget-object v5, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B
    invoke-static {v5}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$700(Lcom/android/smith/ClientSocket$ClientSocketThread;)[B

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/smith/ClientSocket;->readDirect([BII)I

    move-result v4

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I
    invoke-static {v3, v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$602(Lcom/android/smith/ClientSocket$ClientSocketThread;I)I

    .line 499
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I
    invoke-static {v3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$600(Lcom/android/smith/ClientSocket$ClientSocketThread;)I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 501
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B
    invoke-static {v3, v9}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$702(Lcom/android/smith/ClientSocket$ClientSocketThread;[B)[B

    .line 504
    :cond_6
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 506
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I
    invoke-static {v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$600(Lcom/android/smith/ClientSocket$ClientSocketThread;)I

    move-result v4

    iget-object v5, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B
    invoke-static {v5}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$700(Lcom/android/smith/ClientSocket$ClientSocketThread;)[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/smith/ClientSocket$OnSocketEventListener;->onSocketRead(I[B)V

    goto/16 :goto_0

    .line 517
    :pswitch_5
    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v5, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/smith/ClientSocket;->writeDirect([BII)Z

    move-result v3

    #setter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v4, v3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$402(Lcom/android/smith/ClientSocket$ClientSocketThread;Z)Z

    .line 519
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 521
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    #getter for: Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z
    invoke-static {v4}, Lcom/android/smith/ClientSocket$ClientSocketThread;->access$400(Lcom/android/smith/ClientSocket$ClientSocketThread;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/smith/ClientSocket$OnSocketEventListener;->onSocketWrite(Z)V

    goto/16 :goto_0

    .line 526
    :pswitch_6
    const-string v3, "SM:ClientSocket"

    const-string v4, "MSG_SOCKET_CLOSE begin"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    invoke-virtual {v3}, Lcom/android/smith/ClientSocket;->closeDirect()V

    .line 536
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 538
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 540
    iget-object v3, p0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;->this$1:Lcom/android/smith/ClientSocket$ClientSocketThread;

    iget-object v3, v3, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v3}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/smith/ClientSocket$OnSocketEventListener;->onSocketClosed()V

    .line 543
    :cond_7
    const-string v3, "SM:ClientSocket"

    const-string v4, "MSG_SOCKET_CLOSE end"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
