.class Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 2856
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private finish(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mResult:Z
    invoke-static {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->access$2102(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;Z)Z

    .line 2912
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mDone:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->access$2202(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;Z)Z

    .line 2913
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2914
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2915
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2859
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2860
    .local v0, ar:Landroid/os/AsyncResult;
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 2908
    :cond_0
    :goto_0
    return-void

    .line 2862
    :pswitch_0
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "SET_CFU_COMPLETE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    monitor-enter v8

    .line 2864
    :try_start_0
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_1

    move v6, v7

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->finish(Z)V

    .line 2865
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2870
    :pswitch_1
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_6

    .line 2871
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v6

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2872
    .local v1, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v6, v1

    if-nez v6, :cond_2

    .line 2873
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    monitor-enter v7

    .line 2874
    const/4 v6, 0x0

    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->finish(Z)V

    .line 2875
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 2877
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    array-length v5, v1

    .local v5, length:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 2878
    aget-object v6, v1, v3

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    .line 2880
    aget-object v4, v1, v3

    .line 2881
    .local v4, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2882
    .local v2, cfu:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2883
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    monitor-enter v7

    .line 2884
    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v6}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->finish(Z)V

    .line 2885
    monitor-exit v7

    goto :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v6

    .line 2887
    :cond_3
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    #getter for: Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mMode:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->access$1800(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;)I

    move-result v6

    if-ne v7, v6, :cond_4

    .line 2888
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mCfu:Ljava/lang/String;
    invoke-static {v6, v2}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->access$1902(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 2889
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    monitor-enter v7

    .line 2890
    const/4 v6, 0x1

    :try_start_3
    invoke-direct {p0, v6}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->finish(Z)V

    .line 2891
    monitor-exit v7

    goto :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v6

    .line 2893
    :cond_4
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    #calls: Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->startSetCfu(Ljava/lang/String;)V
    invoke-static {v6, v2}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->access$2000(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 2877
    .end local v2           #cfu:Ljava/lang/String;
    .end local v4           #info:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2901
    .end local v1           #cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #i:I
    .end local v5           #length:I
    :cond_6
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    monitor-enter v7

    .line 2902
    const/4 v6, 0x0

    :try_start_4
    invoke-direct {p0, v6}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;->finish(Z)V

    .line 2903
    monitor-exit v7

    goto :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v6

    .line 2860
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
