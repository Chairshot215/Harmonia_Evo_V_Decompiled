.class Lcom/android/phone/PhoneInterfaceManager$CFUHelper;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CFUHelper"
.end annotation


# static fields
.field private static final GET_CFU_COMPLETE:I = 0x3ea

.field private static final MODE_GET_CFU:I = 0x1

.field private static final MODE_SET_CFU:I = 0x2

.field private static final SET_CFU_COMPLETE:I = 0x3e9


# instance fields
.field private mCfu:Ljava/lang/String;

.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mMode:I

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mResult:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 2848
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2833
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mDone:Z

    .line 2834
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mResult:Z

    .line 2835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mCfu:Ljava/lang/String;

    .line 2836
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mMode:I

    .line 2849
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2850
    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2829
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mMode:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2829
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mCfu:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2829
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->startSetCfu(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2829
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mResult:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2829
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mDone:Z

    return p1
.end method

.method private startGetCfu()V
    .locals 3

    .prologue
    .line 2973
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2974
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2975
    return-void
.end method

.method private startSetCfu(Ljava/lang/String;)V
    .locals 6
    .parameter "cfu"

    .prologue
    const/4 v2, 0x0

    .line 2964
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 2965
    .local v5, callback:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x3

    move-object v3, p1

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2970
    return-void
.end method


# virtual methods
.method declared-synchronized getCFU()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2978
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mMode:I

    .line 2980
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2982
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2983
    :catch_0
    move-exception v0

    .line 2984
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2978
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2988
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->startGetCfu()V

    .line 2990
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_1

    .line 2992
    :try_start_4
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "wait for done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2994
    :catch_1
    move-exception v0

    .line 2996
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2999
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mCfu:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 2854
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2855
    monitor-enter p0

    .line 2856
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CFUHelper;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mHandler:Landroid/os/Handler;

    .line 2918
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2919
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2920
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2921
    return-void

    .line 2919
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setCFU(ZLjava/lang/String;)Z
    .locals 7
    .parameter "enable"
    .parameter "cfu"

    .prologue
    .line 2925
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mMode:I

    .line 2927
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2929
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2930
    :catch_0
    move-exception v6

    .line 2931
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2925
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2935
    :cond_0
    if-nez p1, :cond_1

    .line 2936
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 2937
    .local v5, callback:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2950
    .end local v5           #callback:Landroid/os/Message;
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2952
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2954
    :catch_1
    move-exception v6

    .line 2956
    .restart local v6       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2943
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2944
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->startGetCfu()V

    goto :goto_1

    .line 2946
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->startSetCfu(Ljava/lang/String;)V

    goto :goto_1

    .line 2959
    :cond_3
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v0
.end method
