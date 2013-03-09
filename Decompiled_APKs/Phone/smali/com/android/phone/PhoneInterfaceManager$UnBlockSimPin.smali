.class Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnBlockSimPin"
.end annotation


# static fields
.field private static final UNBLOCK_PIN_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 1545
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1536
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mDone:Z

    .line 1537
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mResult:Z

    .line 1546
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 1547
    return-void
.end method

.method static synthetic access$1402(Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1532
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mResult:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1532
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mDone:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1551
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1552
    monitor-enter p0

    .line 1553
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mHandler:Landroid/os/Handler;

    .line 1570
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1571
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1573
    return-void

    .line 1571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "puk"
    .parameter "newpin"

    .prologue
    .line 1577
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1579
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1580
    :catch_0
    move-exception v1

    .line 1581
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1577
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1584
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1586
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1588
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 1590
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1592
    :catch_1
    move-exception v1

    .line 1594
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1597
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method
