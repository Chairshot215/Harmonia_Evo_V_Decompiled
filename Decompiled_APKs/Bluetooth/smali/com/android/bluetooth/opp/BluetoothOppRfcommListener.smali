.class public Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
.super Ljava/lang/Object;
.source "BluetoothOppRfcommListener.java"


# static fields
.field private static final CREATE_RETRY_TIME:I = 0xa

.field private static final DEFAULT_OPP_CHANNEL:I = 0xc

.field public static final MSG_INCOMING_BTOPP_CONNECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BtOppRfcommListener"

.field private static final V:Z


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBtOppRfcommChannel:I

.field private mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;

.field private mTcpServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 75
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;-><init>(Landroid/bluetooth/BluetoothAdapter;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;I)V
    .locals 1
    .parameter "adapter"
    .parameter "channel"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 72
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    .line 79
    iput p2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtOppRfcommChannel:I

    .line 80
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtOppRfcommChannel:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 2
    .parameter "callback"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;

    const-string v1, "BtOppRfcommListener"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 182
    const-string v1, "BtOppRfcommListener"

    const-string v2, "stopping Accept Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    .line 197
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 199
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 208
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 215
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "BtOppRfcommListener"

    const-string v2, "Error close mBtServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 211
    :catch_1
    move-exception v1

    goto :goto_1
.end method
