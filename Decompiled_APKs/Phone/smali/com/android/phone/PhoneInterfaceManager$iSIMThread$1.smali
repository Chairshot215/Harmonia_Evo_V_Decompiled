.class Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;)V
    .locals 0
    .parameter

    .prologue
    .line 3626
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 3629
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3630
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3679
    :goto_0
    return-void

    .line 3632
    :pswitch_0
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "REQUEST_QUERY_ISIM_SUPPORTED_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    monitor-enter v3

    .line 3634
    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 3635
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v1, v2, v4

    .line 3636
    .local v1, data:I
    if-eqz v1, :cond_0

    .line 3637
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mResult:Z
    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->access$2302(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Z)Z

    .line 3640
    .end local v1           #data:I
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z
    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->access$2402(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Z)Z

    .line 3641
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3642
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 3643
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3646
    :pswitch_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "REQUEST_ISIM_READ_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    monitor-enter v3

    .line 3648
    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 3649
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mStringResult:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->access$2502(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Ljava/lang/String;)Ljava/lang/String;

    .line 3651
    :cond_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z
    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->access$2402(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Z)Z

    .line 3652
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3653
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 3654
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 3657
    :pswitch_2
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "REQUEST_SET_ISIM_AUTH_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    monitor-enter v3

    .line 3659
    :try_start_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 3660
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mStringResult:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->access$2502(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Ljava/lang/String;)Ljava/lang/String;

    .line 3662
    :cond_2
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z
    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->access$2402(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Z)Z

    .line 3663
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3664
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 3665
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 3668
    :pswitch_3
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "REQUEST_RESET_WSIM_STAT_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    monitor-enter v3

    .line 3670
    :try_start_3
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 3671
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mResult:Z
    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->access$2302(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Z)Z

    .line 3673
    :cond_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z
    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->access$2402(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Z)Z

    .line 3674
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3675
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 3676
    monitor-exit v3

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 3630
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
