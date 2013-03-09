.class Lcom/android/bluetooth/opp/TestTcpListener;
.super Ljava/lang/Object;
.source "TestActivity.java"


# static fields
.field private static final ACCEPT_WAIT_TIMEOUT:I = 0x1388

.field private static final D:Z = false

.field public static final DEFAULT_OPP_CHANNEL:I = 0xc

.field public static final MSG_INCOMING_BTOPP_CONNECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BtOppRfcommListener"

.field private static final V:Z


# instance fields
.field private mBtOppRfcommChannel:I

.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 375
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/TestTcpListener;-><init>(I)V

    .line 376
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 378
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    .line 379
    iput p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    .line 380
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/TestTcpListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/TestTcpListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/TestTcpListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/TestTcpListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 2
    .parameter "callback"

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 384
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;

    .line 385
    new-instance v0, Lcom/android/bluetooth/opp/TestTcpListener$1;

    const-string v1, "BtOppRfcommListener"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/TestTcpListener$1;-><init>(Lcom/android/bluetooth/opp/TestTcpListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    .line 430
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 444
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0
.end method
