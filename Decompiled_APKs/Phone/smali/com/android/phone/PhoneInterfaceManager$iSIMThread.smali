.class Lcom/android/phone/PhoneInterfaceManager$iSIMThread;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "iSIMThread"
.end annotation


# static fields
.field private static final REQUEST_ISIM_READ_COMPLETE:I = 0x65

.field private static final REQUEST_QUERY_ISIM_SUPPORTED_COMPLETE:I = 0x64

.field private static final REQUEST_RESET_WSIM_STAT_COMPLETE:I = 0x67

.field private static final REQUEST_SET_ISIM_AUTH_COMPLETE:I = 0x66


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;

.field private mStringResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 3618
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3605
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z

    .line 3606
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mResult:Z

    .line 3619
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 3620
    return-void
.end method

.method static synthetic access$2302(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3601
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mResult:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3601
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3601
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mStringResult:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method declared-synchronized requestISIMRead(IIIII)Ljava/lang/String;
    .locals 8
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    .line 3715
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3717
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3718
    :catch_0
    move-exception v7

    .line 3719
    .local v7, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3715
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3722
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 3724
    .local v6, callback:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mSimCard:Lcom/android/internal/telephony/IccCard;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccCard;->requestISIMRead(IIIIILandroid/os/Message;)V

    .line 3726
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_1

    .line 3728
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait requestISIMRead for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3730
    :catch_1
    move-exception v7

    .line 3732
    .restart local v7       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 3735
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "requestISIMRead done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mStringResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized requestQueryISIMSupported()Z
    .locals 4

    .prologue
    .line 3688
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3690
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3691
    :catch_0
    move-exception v1

    .line 3692
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3688
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3695
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3697
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/IccCard;->requestQueryISIMSupported(Landroid/os/Message;)V

    .line 3699
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 3701
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait requestQueryISIMSupported for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3703
    :catch_1
    move-exception v1

    .line 3705
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 3708
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "requestQueryISIMSupported done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method

.method declared-synchronized requestResetWSIMState()Z
    .locals 4

    .prologue
    .line 3767
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3769
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3770
    :catch_0
    move-exception v1

    .line 3771
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3767
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3774
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3776
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/IccCard;->requestResetWSIMState(Landroid/os/Message;)V

    .line 3778
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 3780
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait requestResetWSIMState for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3782
    :catch_1
    move-exception v1

    .line 3784
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 3787
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "requestResetWSIMState done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method

.method declared-synchronized requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "command"

    .prologue
    .line 3741
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3743
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3744
    :catch_0
    move-exception v1

    .line 3745
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3741
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3748
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3750
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/IccCard;->requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V

    .line 3752
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 3754
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait requestSetISIMAUTH for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3756
    :catch_1
    move-exception v1

    .line 3758
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 3761
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "requestSetISIMAUTH - done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mStringResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 3624
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3625
    monitor-enter p0

    .line 3626
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$iSIMThread;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->mHandler:Landroid/os/Handler;

    .line 3681
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3682
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3683
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3684
    return-void

    .line 3682
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
