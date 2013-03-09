.class public Lcom/android/mms/transport/WspEventHandler;
.super Ljava/lang/Object;
.source "WspEventHandler.java"

# interfaces
.implements Lcom/android/mms/wsp/EventHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/io/ByteArrayOutputStream;

.field private mErrorID:I

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mOnProgress:Z

.field private mToken:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transport/WspEventHandler;->mData:Ljava/io/ByteArrayOutputStream;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transport/WspEventHandler;->mErrorID:I

    .line 40
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/transport/WspEventHandler;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 43
    iput-object p1, p0, Lcom/android/mms/transport/WspEventHandler;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/transport/WspEventHandler;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getErrorId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/mms/transport/WspEventHandler;->mErrorID:I

    return v0
.end method

.method public onData([BI)V
    .locals 3
    .parameter "data"
    .parameter "len"

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transport/WspEventHandler;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onEndData()V
    .locals 4

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/transport/WspEventHandler;->mOnProgress:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/mms/transport/WspEventHandler;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/transport/WspEventHandler;->mToken:J

    const/16 v3, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transport/ProgressBroadcaster;->broadcast(Landroid/content/Context;JI)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transport/WspEventHandler;->mOnProgress:Z

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transport/WspEventHandler;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 62
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "description"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/mms/transport/WspEventHandler;->mOnProgress:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/mms/transport/WspEventHandler;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/transport/WspEventHandler;->mToken:J

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transport/ProgressBroadcaster;->broadcast(Landroid/content/Context;JI)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transport/WspEventHandler;->mOnProgress:Z

    .line 71
    :cond_0
    iput p1, p0, Lcom/android/mms/transport/WspEventHandler;->mErrorID:I

    .line 72
    iget-object v0, p0, Lcom/android/mms/transport/WspEventHandler;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 73
    return-void
.end method

.method public onHeaders(Lcom/android/mms/wsp/Headers;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 77
    return-void
.end method

.method public onSentProgress(II)V
    .locals 4
    .parameter "sentSize"
    .parameter "totalSize"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/mms/transport/WspEventHandler;->mOnProgress:Z

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transport/WspEventHandler;->mOnProgress:Z

    .line 108
    iget-object v0, p0, Lcom/android/mms/transport/WspEventHandler;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/transport/WspEventHandler;->mToken:J

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transport/ProgressBroadcaster;->broadcast(Landroid/content/Context;JI)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transport/WspEventHandler;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/transport/WspEventHandler;->mToken:J

    mul-int/lit8 v3, p1, 0x64

    div-int/2addr v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transport/ProgressBroadcaster;->broadcast(Landroid/content/Context;JI)V

    .line 114
    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "reasonPhrase"

    .prologue
    .line 89
    return-void
.end method

.method public setProgerssToken(J)V
    .locals 0
    .parameter "token"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/android/mms/transport/WspEventHandler;->mToken:J

    .line 102
    return-void
.end method

.method public waitForComplete()V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transport/WspEventHandler;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Mms"

    const-string v2, "background thread WspTransport has been interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
