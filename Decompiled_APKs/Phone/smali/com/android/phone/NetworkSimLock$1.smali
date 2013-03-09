.class Lcom/android/phone/NetworkSimLock$1;
.super Landroid/os/Handler;
.source "NetworkSimLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSimLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSimLock;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 97
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const-string v2, "NetworkSimLock"

    const-string v5, "handle event ENABLE_ICC_PIN_COMPLETE"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v5, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    #calls: Lcom/android/phone/NetworkSimLock;->iccLockChanged(Z)V
    invoke-static {v5, v2}, Lcom/android/phone/NetworkSimLock;->access$000(Lcom/android/phone/NetworkSimLock;Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 111
    :pswitch_1
    const-string v2, "NetworkSimLock"

    const-string v3, "handle event TIME_OUT_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSimLock;->enableButton()V

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v2, "NetworkSimLock"

    const-string v5, "handle event QUERY_SUBSIDYLOCK"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 117
    const-string v2, "NetworkSimLock"

    const-string v3, "handle event QUERY_SUBSIDYLOCK fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, type:I
    const-string v2, "NetworkSimLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle event QUERY_SUBSIDYLOCK, type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    #calls: Lcom/android/phone/NetworkSimLock;->CurrentNetworkLockType(I)V
    invoke-static {v2, v1}, Lcom/android/phone/NetworkSimLock;->access$100(Lcom/android/phone/NetworkSimLock;I)V

    .line 123
    invoke-static {}, Lcom/android/phone/NetworkSimLock;->access$200()I

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    #setter for: Lcom/android/phone/NetworkSimLock;->mSimLock:Z
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSimLock;->access$302(Lcom/android/phone/NetworkSimLock;Z)Z

    .line 127
    :goto_2
    const-string v2, "NetworkSimLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimLock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    #getter for: Lcom/android/phone/NetworkSimLock;->mSimLock:Z
    invoke-static {v4}, Lcom/android/phone/NetworkSimLock;->access$300(Lcom/android/phone/NetworkSimLock;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/android/phone/NetworkSimLock;->access$400()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    #calls: Lcom/android/phone/NetworkSimLock;->processUI()V
    invoke-static {v2}, Lcom/android/phone/NetworkSimLock;->access$500(Lcom/android/phone/NetworkSimLock;)V

    goto/16 :goto_0

    .line 126
    :cond_3
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    #setter for: Lcom/android/phone/NetworkSimLock;->mSimLock:Z
    invoke-static {v2, v4}, Lcom/android/phone/NetworkSimLock;->access$302(Lcom/android/phone/NetworkSimLock;Z)Z

    goto :goto_2

    .line 133
    .end local v1           #type:I
    :pswitch_3
    const-string v2, "NetworkSimLock"

    const-string v3, "handle event QUERY_OTHER_SUBSIDYLOCK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 135
    const-string v2, "NetworkSimLock"

    const-string v3, "handle event QUERY_OTHER_SUBSIDYLOCK fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 138
    .restart local v1       #type:I
    const-string v2, "NetworkSimLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle event QUERY_OTHER_SUBSIDYLOCK, type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    #calls: Lcom/android/phone/NetworkSimLock;->CurrentNetworkLockType(I)V
    invoke-static {v2, v1}, Lcom/android/phone/NetworkSimLock;->access$100(Lcom/android/phone/NetworkSimLock;I)V

    .line 140
    invoke-static {}, Lcom/android/phone/NetworkSimLock;->access$200()I

    move-result v2

    if-nez v2, :cond_5

    .line 141
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    const v3, 0x7f0e049b

    #calls: Lcom/android/phone/NetworkSimLock;->rebootDeviceDialog(I)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSimLock;->access$600(Lcom/android/phone/NetworkSimLock;I)V

    goto/16 :goto_0

    .line 143
    :cond_5
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$1;->this$0:Lcom/android/phone/NetworkSimLock;

    #calls: Lcom/android/phone/NetworkSimLock;->unlockOthersTypeLockDialog()V
    invoke-static {v2}, Lcom/android/phone/NetworkSimLock;->access$700(Lcom/android/phone/NetworkSimLock;)V

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
