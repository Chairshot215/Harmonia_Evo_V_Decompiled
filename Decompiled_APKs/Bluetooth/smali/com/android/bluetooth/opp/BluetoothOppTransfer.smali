.class public Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.super Ljava/lang/Object;
.source "BluetoothOppTransfer.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;,
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_TIME:I = 0x64

.field private static final CONNECT_WAIT_TIMEOUT:I = 0xafc8

.field private static final D:Z = false

.field private static final OPUSH_UUID16:S = 0x1105s

.field private static final RFCOMM_CONNECTED:I = 0xb

.field private static final RFCOMM_ERROR:I = 0xa

.field private static final SDP_RESULT:I = 0xc

.field private static final SOCKET_ERROR_RETRY:I = 0xd

.field private static final SOCKET_LINK_KEY_ERROR:Ljava/lang/String; = "Invalid exchange"

.field private static final TAG:Ljava/lang/String; = "BtOppTransfer"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

.field private mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

.field private mContext:Landroid/content/Context;

.field private mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

.field private mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

.field private mTimestamp:J

.field private mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V
    .locals 1
    .parameter "context"
    .parameter "powerManager"
    .parameter "batch"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V
    .locals 1
    .parameter "context"
    .parameter "powerManager"
    .parameter "batch"
    .parameter "session"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 567
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 115
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .line 117
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->registerListern(Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;)V

    .line 118
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    return-object v0
.end method

.method private doOpushSdp()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, -0x1

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTimestamp:J

    .line 541
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v0

    .line 542
    .local v0, channel:I
    if-eq v0, v5, :cond_0

    .line 546
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6, v0, v5, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 565
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    move-result v3

    if-nez v3, :cond_1

    .line 554
    const-string v3, "BtOppTransfer"

    const-string v4, "Start SDP query failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6, v0, v5, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 564
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 558
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.UUID"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 559
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private markBatchFailed()V
    .locals 1

    .prologue
    .line 371
    const/16 v0, 0x1eb

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V

    .line 372
    return-void
.end method

.method private markBatchFailed(I)V
    .locals 10
    .parameter "failReason"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xc8

    .line 321
    monitor-enter p0

    .line 323
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v4, :cond_1

    .line 332
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget p1, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 335
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 337
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 341
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v2

    .line 342
    .local v2, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :goto_1
    if-eqz v2, :cond_5

    .line 343
    iget v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ge v4, v8, :cond_3

    .line 344
    iput p1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 346
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .local v3, updateValues:Landroid/content/ContentValues;
    const-string v4, "status"

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    iget v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_4

    .line 350
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 352
    .local v1, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 353
    const-string v4, "hint"

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, "total_bytes"

    iget-wide v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 355
    const-string v4, "mimetype"

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v1           #fileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 363
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v4, v0, v5}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 365
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v3           #updateValues:Landroid/content/ContentValues;
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v2

    goto :goto_1

    .line 327
    .end local v2           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 358
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v2       #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .restart local v3       #updateValues:Landroid/content/ContentValues;
    :cond_4
    iget v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ge v4, v8, :cond_2

    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 359
    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 324
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v2           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .end local v3           #updateValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 368
    .restart local v2       #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_5
    return-void
.end method

.method private markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 5
    .parameter "share"

    .prologue
    const/4 v4, 0x0

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "confirm"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method private processCurrentShare()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 495
    return-void
.end method

.method private startConnectSession()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 521
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    const/16 v3, 0x1105

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannel(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 523
    .local v0, channel:I
    if-eq v0, v4, :cond_0

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTimestamp:J

    .line 527
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 533
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->doOpushSdp()V

    goto :goto_0
.end method

.method private startObexSession()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 455
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 457
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-nez v0, :cond_0

    .line 462
    const-string v0, "BtOppTransfer"

    const-string v1, "Unexpected error happened !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v0, :cond_2

    .line 470
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;-><init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->start(Landroid/os/Handler;)V

    .line 488
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-ne v0, v1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    if-nez v0, :cond_1

    .line 479
    const-string v0, "BtOppTransfer"

    const-string v1, "Unexpected error happened !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V

    .line 481
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    goto :goto_0
.end method

.method private tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 5
    .parameter "share"

    .prologue
    const/4 v4, 0x0

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 768
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 769
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "direction"

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 771
    return-void
.end method


# virtual methods
.method public getBatchId()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    return v0
.end method

.method public onBatchCanceled()V
    .locals 2

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    .line 822
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 823
    return-void
.end method

.method public onShareAdded(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 784
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    .line 785
    .local v0, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 786
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 790
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    .line 796
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->setConfirmed()V

    .line 799
    :cond_0
    return-void
.end method

.method public onShareDeleted(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 813
    return-void
.end method

.method public setConfirmed()V
    .locals 2

    .prologue
    .line 503
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;

    const-string v1, "Server Unblock thread"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljava/lang/String;)V

    .line 512
    .local v0, notifyThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 513
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    const-string v0, "BtOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start transfer when Bluetooth is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V

    .line 403
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BtOpp Transfer Handler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 411
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 412
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    .line 414
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v0, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startConnectSession()V

    goto :goto_0

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    if-eqz v0, :cond_0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->interrupt()V

    .line 436
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-interface {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 448
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 449
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 451
    :cond_2
    return-void

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0
.end method
