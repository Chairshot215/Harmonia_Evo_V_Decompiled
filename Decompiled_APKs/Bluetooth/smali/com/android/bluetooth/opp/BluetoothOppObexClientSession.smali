.class public Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.super Ljava/lang/Object;
.source "BluetoothOppObexClientSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BtOpp ObexClient"

.field private static final V:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mInterrupted:Z

.field private mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 2
    .parameter "context"
    .parameter "transport"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transport is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;[BI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I

    move-result v0

    return v0
.end method

.method public static applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V
    .locals 10
    .parameter "request"
    .parameter "info"

    .prologue
    .line 582
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mDestAddr:Ljava/lang/String;

    .line 583
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    const-string v7, "00:04:48"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 591
    iget-object v2, p1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 593
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 594
    .local v1, c:[C
    const/4 v3, 0x1

    .line 595
    .local v3, firstDot:Z
    const/4 v5, 0x0

    .line 596
    .local v5, modified:Z
    array-length v7, v1

    add-int/lit8 v4, v7, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_4

    .line 597
    aget-char v7, v1, v4

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_3

    .line 598
    if-nez v3, :cond_2

    .line 599
    const/4 v5, 0x1

    .line 600
    const/16 v7, 0x5f

    aput-char v7, v1, v4

    .line 602
    :cond_2
    const/4 v3, 0x0

    .line 596
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 606
    :cond_4
    if-eqz v5, :cond_0

    .line 607
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    .line 608
    .local v6, newFilename:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v6}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 609
    const-string v7, "BtOpp ObexClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending file \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" as \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" to workaround Poloroid filename quirk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readFully(Ljava/io/InputStream;[BI)I
    .locals 3
    .parameter "is"
    .parameter "buffer"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, done:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 118
    sub-int v2, p2, v0

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 119
    .local v1, got:I
    if-gtz v1, :cond_1

    .line 122
    .end local v1           #got:I
    :cond_0
    return v0

    .line 120
    .restart local v1       #got:I
    :cond_1
    add-int/2addr v0, v1

    .line 121
    goto :goto_0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .parameter "share"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 113
    return-void
.end method

.method public start(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->start()V

    .line 93
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->interrupt()V

    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->join()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unblock()V
    .locals 0

    .prologue
    .line 617
    return-void
.end method
