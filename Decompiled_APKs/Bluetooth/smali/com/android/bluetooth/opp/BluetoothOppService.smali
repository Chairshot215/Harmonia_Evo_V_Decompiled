.class public Lcom/android/bluetooth/opp/BluetoothOppService;
.super Landroid/app/Service;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;,
        Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final MEDIA_SCANNED:I = 0x2

.field private static final MEDIA_SCANNED_FAILED:I = 0x3

.field private static final MSG_INCOMING_CONNECTION_RETRY:I = 0x4

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BtOpp Service"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatchId:I

.field private mBatchs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIncomingRetries:I

.field private mListenStarted:Z

.field private mMediaScanInProgress:Z

.field private mNewChars:Landroid/database/CharArrayBuffer;

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

.field private mOldChars:Landroid/database/CharArrayBuffer;

.field private mPendingConnection:Ljavax/obex/ObexTransport;

.field private mPendingUpdate:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

.field private mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private mShares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

.field private mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

.field private userAccepted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->userAccepted:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    .line 130
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    .line 216
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    .line 336
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 933
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->trimDatabase(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->userAccepted:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateShare(Landroid/database/Cursor;IZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startSocketListener()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->createServerSession(Ljavax/obex/ObexTransport;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/opp/BluetoothOppService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createServerSession(Ljavax/obex/ObexTransport;)V
    .locals 1
    .parameter "transport"

    .prologue
    .line 330
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;-><init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->preStart()V

    .line 334
    return-void
.end method

.method private deleteShare(I)V
    .locals 5
    .parameter "arrayPos"

    .prologue
    .line 745
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 753
    .local v2, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-wide v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v1

    .line 754
    .local v1, i:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 755
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 756
    .local v0, batch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->hasShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->cancelBatch()V

    .line 760
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 762
    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    .line 765
    .end local v0           #batch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 766
    return-void
.end method

.method private findBatchWithTimeStamp(J)I
    .locals 3
    .parameter "timestamp"

    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 797
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-wide v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mTimestamp:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 801
    .end local v0           #i:I
    :goto_1
    return v0

    .line 796
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 801
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private insertShare(Landroid/database/Cursor;I)V
    .locals 21
    .parameter "cursor"
    .parameter "arrayPos"

    .prologue
    .line 522
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hint"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "direction"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "destination"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "visibility"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "confirm"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "total_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "current_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v15, "timestamp"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v16, "scanned"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    :goto_0
    invoke-direct/range {v2 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIIZ)V

    .line 557
    .local v2, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 560
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->isObsolete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v4, 0x1eb

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 573
    :cond_0
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->isReadyToStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 574
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v3, :cond_1

    .line 578
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 590
    .local v19, i:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 596
    .end local v19           #i:Ljava/io/InputStream;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 597
    new-instance v20, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 598
    .local v20, newBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 599
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v3, :cond_5

    .line 604
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v4, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 612
    :cond_2
    :goto_1
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v3, :cond_6

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 650
    .end local v20           #newBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_3
    :goto_2
    return-void

    .line 522
    .end local v2           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 579
    .restart local v2       #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :catch_0
    move-exception v17

    .line 580
    .local v17, e:Ljava/io/FileNotFoundException;
    const-string v3, "BtOpp Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t open file for OUTBOUND info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v4, 0x190

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    .line 583
    .end local v17           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v17

    .line 584
    .local v17, e:Ljava/lang/SecurityException;
    const-string v3, "BtOpp Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for OUTBOUND info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v4, 0x190

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    .line 591
    .end local v17           #e:Ljava/lang/SecurityException;
    .restart local v19       #i:Ljava/io/InputStream;
    :catch_2
    move-exception v18

    .line 592
    .local v18, ex:Ljava/io/IOException;
    const-string v3, "BtOpp Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error when close file for OUTBOUND info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 605
    .end local v18           #ex:Ljava/io/IOException;
    .end local v19           #i:Ljava/io/InputStream;
    .restart local v20       #newBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_5
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 608
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v4, v1, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto/16 :goto_1

    .line 616
    :cond_6
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v3, :cond_3

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    goto/16 :goto_2

    .line 624
    .end local v20           #newBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_7
    iget-wide v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v19

    .line 625
    .local v19, i:I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_8

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_2

    .line 631
    :cond_8
    new-instance v20, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 632
    .restart local v20       #newBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 633
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private needAction(I)Z
    .locals 2
    .parameter "arrayPos"

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 843
    .local v0, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    const/4 v1, 0x0

    .line 846
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V
    .locals 7
    .parameter "batch"

    .prologue
    const/4 v6, 0x1

    .line 806
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 809
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 811
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 812
    .local v2, nextBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    if-ne v3, v6, :cond_1

    .line 839
    .end local v0           #i:I
    .end local v2           #nextBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_0
    :goto_1
    return-void

    .line 816
    .restart local v0       #i:I
    .restart local v2       #nextBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_1
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v3, :cond_2

    .line 818
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v3, p0, v4, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 819
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    goto :goto_1

    .line 821
    :cond_2
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    if-eqz v3, :cond_3

    .line 826
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 828
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 829
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v1

    .line 830
    .local v1, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-ne v3, v6, :cond_0

    .line 832
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->setConfirmed()V

    goto :goto_1

    .line 809
    .end local v1           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scanFile(Landroid/database/Cursor;I)Z
    .locals 8
    .parameter "cursor"
    .parameter "arrayPos"

    .prologue
    const/4 v3, 0x1

    .line 855
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 856
    .local v1, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    monitor-enter p0

    .line 859
    :try_start_0
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->scanDrmFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 860
    .local v0, drmItem:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 861
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 862
    .local v2, updateValues:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v4, "mimetype"

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    monitor-exit p0

    .line 873
    .end local v2           #updateValues:Landroid/content/ContentValues;
    :goto_0
    return v3

    .line 868
    :cond_0
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    if-nez v4, :cond_1

    .line 869
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    .line 870
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v1, v5}, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;Landroid/os/Handler;)V

    .line 871
    monitor-exit p0

    goto :goto_0

    .line 875
    .end local v0           #drmItem:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 873
    .restart local v0       #drmItem:Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private shouldScanFile(I)Z
    .locals 3
    .parameter "arrayPos"

    .prologue
    const/4 v1, 0x1

    .line 879
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 880
    .local v0, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    .line 206
    :cond_0
    return-void
.end method

.method private startSocketListener()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->start(Landroid/os/Handler;)Z

    .line 317
    return-void
.end method

.method private stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "old"
    .parameter "cursor"
    .parameter "column"

    .prologue
    const/4 v7, 0x0

    .line 769
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 770
    .local v1, index:I
    if-nez p1, :cond_1

    .line 771
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 792
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 773
    .restart local p1
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    if-nez v5, :cond_2

    .line 774
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    .line 776
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, v1, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 777
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget v2, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 778
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 779
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 781
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v5, v2, :cond_5

    .line 782
    :cond_4
    new-instance v5, Landroid/database/CharArrayBuffer;

    invoke-direct {v5, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    .line 784
    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    iget-object v4, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 785
    .local v4, oldArray:[C
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v3, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 786
    .local v3, newArray:[C
    invoke-virtual {p1, v7, v2, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 787
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 788
    aget-char v5, v4, v0

    aget-char v6, v3, v0

    if-eq v5, v6, :cond_6

    .line 789
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 787
    .restart local p1
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static trimDatabase(Landroid/content/ContentResolver;)V
    .locals 18
    .parameter "contentResolver"

    .prologue
    .line 886
    const-string v7, "visibility=1"

    .line 890
    .local v7, INVISIBLE:Ljava/lang/String;
    const-string v10, "direction=0 AND status>=200 AND visibility=1"

    .line 893
    .local v10, WHERE_INVISIBLE_COMPLETE_OUTBOUND:Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "direction=0 AND status>=200 AND visibility=1"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 898
    .local v13, delNum:I
    const-string v9, "direction=1 AND status>200 AND visibility=1"

    .line 901
    .local v9, WHERE_INVISIBLE_COMPLETE_INBOUND_FAILED:Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "direction=1 AND status>200 AND visibility=1"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 907
    const-string v8, "direction=1 AND status=200 AND visibility=1"

    .line 910
    .local v8, WHERE_INBOUND_SUCCESS:Ljava/lang/String;
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const-string v4, "direction=1 AND status=200 AND visibility=1"

    const/4 v5, 0x0

    const-string v6, "_id"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 914
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 931
    :goto_0
    return-void

    .line 918
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 919
    .local v17, recordNum:I
    const/16 v1, 0x3e8

    move/from16 v0, v17

    if-le v0, v1, :cond_1

    .line 920
    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x3e8

    move/from16 v16, v0

    .line 922
    .local v16, numToDelete:I
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 923
    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 924
    .local v11, columnId:I
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 925
    .local v14, id:J
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 930
    .end local v11           #columnId:I
    .end local v14           #id:J
    .end local v16           #numToDelete:I
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private updateFromProvider()V
    .locals 1

    .prologue
    .line 364
    monitor-enter p0

    .line 365
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    .line 366
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 368
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->start()V

    .line 370
    :cond_0
    monitor-exit p0

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateShare(Landroid/database/Cursor;IZ)V
    .locals 12
    .parameter "cursor"
    .parameter "arrayPos"
    .parameter "userAccepted"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 653
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 654
    .local v3, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    const-string v8, "status"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 656
    .local v7, statusColumn:I
    const-string v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 657
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    const-string v9, "uri"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 658
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    const-string v9, "hint"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 659
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    const-string v9, "_data"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 660
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string v9, "mimetype"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 661
    const-string v8, "direction"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 662
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    const-string v9, "destination"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 663
    const-string v8, "visibility"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 665
    .local v6, newVisibility:I
    const/4 v1, 0x0

    .line 666
    .local v1, confirmed:Z
    const-string v8, "confirm"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 669
    .local v4, newConfirm:I
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v8, :cond_1

    if-eqz v6, :cond_1

    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v4, :cond_1

    .line 672
    :cond_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 675
    :cond_1
    iput v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 677
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-nez v8, :cond_2

    if-eqz v4, :cond_2

    .line 679
    const/4 v1, 0x1

    .line 681
    :cond_2
    const-string v8, "confirm"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 683
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 685
    .local v5, newStatus:I
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 687
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 690
    :cond_3
    iput v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 691
    const-string v8, "total_bytes"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:I

    .line 692
    const-string v8, "current_bytes"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:I

    .line 694
    const-string v8, "timestamp"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 695
    const-string v8, "scanned"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 697
    if-eqz v1, :cond_4

    .line 700
    iget-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v2

    .line 701
    .local v2, i:I
    if-eq v2, v10, :cond_4

    .line 702
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 703
    .local v0, batch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 704
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->setConfirmed()V

    .line 708
    .end local v0           #batch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .end local v2           #i:I
    :cond_4
    iget-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v2

    .line 709
    .restart local v2       #i:I
    if-eq v2, v10, :cond_6

    .line 710
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 711
    .restart local v0       #batch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 714
    :cond_5
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v8, :cond_a

    .line 715
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez v8, :cond_8

    .line 716
    const-string v8, "BtOpp Service"

    const-string v9, "Unexpected error! mTransfer is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :goto_1
    iput-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 736
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    .line 739
    .end local v0           #batch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_6
    return-void

    .line 695
    .end local v2           #i:I
    :cond_7
    const/4 v8, 0x0

    goto :goto_0

    .line 717
    .restart local v0       #batch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .restart local v2       #i:I
    :cond_8
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 718
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto :goto_1

    .line 720
    :cond_9
    const-string v8, "BtOpp Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected error! batch id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t match mTransfer id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 725
    :cond_a
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez v8, :cond_b

    .line 726
    const-string v8, "BtOpp Service"

    const-string v9, "Unexpected error! mServerTransfer is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_3
    iput-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto :goto_2

    .line 727
    :cond_b
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_c

    .line 728
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto :goto_3

    .line 730
    :cond_c
    const-string v8, "BtOpp Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected error! batch id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t match mServerTransfer id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private visibleNotification(I)Z
    .locals 2
    .parameter "arrayPos"

    .prologue
    .line 850
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 851
    .local v0, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->hasCompletionNotification()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Bluetooth OPP Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 148
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 150
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 151
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    .line 152
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    .line 153
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    .line 154
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    .line 155
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 156
    iput v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 157
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 158
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    .line 159
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 160
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->finishNotification()V

    .line 162
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppService$1;

    const-string v3, "trimDatabase"

    invoke-direct {v2, p0, v3, v0}, Lcom/android/bluetooth/opp/BluetoothOppService$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppService$1;->start()V

    .line 169
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 174
    const-string v2, "BtOpp Service"

    const-string v3, "Local BT device is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    .line 181
    return-void

    .line 176
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startListener()V

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 323
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 324
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->stop()V

    .line 326
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 187
    .local v0, retCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 189
    const-string v1, "BtOpp Service"

    const-string v2, "Local BT device is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    .line 195
    :cond_0
    return v0

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startListener()V

    goto :goto_0
.end method
