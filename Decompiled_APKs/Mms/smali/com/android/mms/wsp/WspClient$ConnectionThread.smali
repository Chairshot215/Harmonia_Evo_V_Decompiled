.class Lcom/android/mms/wsp/WspClient$ConnectionThread;
.super Ljava/lang/Thread;
.source "WspClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/wsp/WspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionThread"
.end annotation


# instance fields
.field private mKeepRunning:Z

.field private mWspBridge:Lcom/android/mms/wsp/WspWrapper;

.field private mWspSession:I

.field final synthetic this$0:Lcom/android/mms/wsp/WspClient;


# direct methods
.method constructor <init>(Lcom/android/mms/wsp/WspClient;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->this$0:Lcom/android/mms/wsp/WspClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mKeepRunning:Z

    .line 84
    new-instance v0, Lcom/android/mms/wsp/WspWrapper;

    invoke-direct {v0}, Lcom/android/mms/wsp/WspWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    return-void
.end method

.method private doNetworkTransmission(Lcom/android/mms/wsp/WspRequest;)V
    .locals 13
    .parameter "req"

    .prologue
    const/16 v12, 0x60

    const/16 v11, -0xc

    const/4 v10, 0x2

    .line 218
    const/4 v5, 0x0

    .line 219
    .local v5, res:I
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getRequestId()I

    move-result v3

    .line 220
    .local v3, id:I
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getEventHandler()Lcom/android/mms/wsp/EventHandler;

    move-result-object v1

    .line 221
    .local v1, eventHandler:Lcom/android/mms/wsp/EventHandler;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v7, value:Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v9, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v8, v9, v3, v7}, Lcom/android/mms/wsp/WspWrapper;->nativePeekGetData(IILandroid/content/ContentValues;)I

    move-result v5

    .line 224
    const-string v8, "data"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 225
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0, v1, v0}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyData(Lcom/android/mms/wsp/EventHandler;[B)V

    .line 229
    :cond_0
    iget-object v8, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v9, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v8, v9, v3}, Lcom/android/mms/wsp/WspWrapper;->nativeGetReqBytesSent(II)I

    move-result v6

    .line 230
    .local v6, sentBytesLen:I
    invoke-virtual {p1, v6}, Lcom/android/mms/wsp/WspRequest;->setBytesSent(I)V

    .line 232
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getMethodData()[B

    move-result-object v4

    .line 233
    .local v4, methodData:[B
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getMethod()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 234
    array-length v8, v4

    invoke-direct {p0, v1, v6, v8}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifySentProgress(Lcom/android/mms/wsp/EventHandler;II)V

    .line 237
    :cond_1
    iget-object v8, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v9, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v8, v9, v3}, Lcom/android/mms/wsp/WspWrapper;->nativeGetReqBytesReceived(II)I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/mms/wsp/WspRequest;->setBytesReceived(I)V

    .line 240
    if-gtz v5, :cond_2

    if-ne v5, v11, :cond_6

    .line 242
    :cond_2
    if-ne v5, v11, :cond_3

    .line 243
    const/4 v5, 0x0

    .line 246
    :cond_3
    new-instance v2, Lcom/android/mms/wsp/Headers;

    invoke-direct {v2}, Lcom/android/mms/wsp/Headers;-><init>()V

    .line 247
    .local v2, headers:Lcom/android/mms/wsp/Headers;
    iget-object v8, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v9, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v8, v9, v3, v2}, Lcom/android/mms/wsp/WspWrapper;->nativeGetResponseHeader(IILcom/android/mms/wsp/Headers;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 249
    const-string v8, "content-length"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/android/mms/wsp/Headers;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2}, Lcom/android/mms/wsp/Headers;->getStatus()I

    move-result v8

    invoke-direct {p0, v1, v8}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyStatus(Lcom/android/mms/wsp/EventHandler;I)V

    .line 253
    invoke-direct {p0, v1, v2}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyHeaders(Lcom/android/mms/wsp/EventHandler;Lcom/android/mms/wsp/Headers;)V

    .line 256
    :cond_4
    invoke-virtual {p1, v5}, Lcom/android/mms/wsp/WspRequest;->setBytesReceived(I)V

    .line 257
    const/4 v8, -0x8

    invoke-virtual {p1, v8}, Lcom/android/mms/wsp/WspRequest;->setStatus(I)V

    .line 299
    .end local v2           #headers:Lcom/android/mms/wsp/Headers;
    :cond_5
    :goto_0
    :sswitch_0
    return-void

    .line 258
    :cond_6
    const/16 v8, -0xa

    if-ne v5, v8, :cond_7

    .line 261
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getMethod()I

    move-result v8

    if-ne v8, v12, :cond_5

    .line 263
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getBytesSent()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getMethodData()[B

    move-result-object v9

    array-length v9, v9

    if-le v8, v9, :cond_5

    .line 264
    const/4 v8, -0x7

    invoke-virtual {p1, v8}, Lcom/android/mms/wsp/WspRequest;->setStatus(I)V

    goto :goto_0

    .line 268
    :cond_7
    sparse-switch v5, :sswitch_data_0

    .line 295
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 274
    :sswitch_1
    const-string v8, "method abort"

    invoke-direct {p0, p1, v10, v8}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 278
    :sswitch_2
    const/4 v8, 0x5

    const-string v9, "timeout"

    invoke-direct {p0, p1, v8, v9}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 282
    :sswitch_3
    const-string v8, "invalid URL"

    invoke-direct {p0, p1, v10, v8}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 286
    :sswitch_4
    const-string v8, "network error"

    invoke-direct {p0, p1, v10, v8}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 291
    :sswitch_5
    const-string v8, "disconnect"

    invoke-direct {p0, p1, v10, v8}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        -0x12 -> :sswitch_0
        -0xd -> :sswitch_4
        -0xb -> :sswitch_5
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private doWspCheck(Lcom/android/mms/wsp/WspRequest;)V
    .locals 3
    .parameter "req"

    .prologue
    .line 175
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mKeepRunning:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getRequestId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/wsp/WspWrapper;->nativeDeleteRequest(II)Z

    .line 198
    :cond_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v0, v1}, Lcom/android/mms/wsp/WspWrapper;->nativeGetWspState(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 193
    :sswitch_0
    const/16 v0, 0x9

    const-string v1, "hasn\'t initialized WSP session"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->processRequest(Lcom/android/mms/wsp/WspRequest;)V

    goto :goto_0

    .line 189
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->peekWspSession(Lcom/android/mms/wsp/WspRequest;)V

    goto :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private initWspStackForReq(Lcom/android/mms/wsp/WspRequest;)V
    .locals 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/wsp/WspClient$WspStackException;
        }
    .end annotation

    .prologue
    .line 158
    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v2, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v1, v2}, Lcom/android/mms/wsp/WspWrapper;->nativeGetGateway(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, originGateway:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getGateway()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v2, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v1, v2}, Lcom/android/mms/wsp/WspWrapper;->nativeGetPort(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getPort()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 172
    .end local v0           #originGateway:Ljava/lang/String;
    :goto_0
    return-void

    .line 167
    .restart local v0       #originGateway:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->unloadWspStack()V

    .line 170
    .end local v0           #originGateway:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getGateway()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getHeaders()Lcom/android/mms/wsp/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/wsp/Headers;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->loadWspStack(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private loadRequest(Lcom/android/mms/wsp/WspRequest;)V
    .locals 10
    .parameter "req"

    .prologue
    const/16 v9, 0x60

    .line 369
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getMethod()I

    move-result v2

    .line 371
    .local v2, method:I
    const/16 v0, 0x40

    if-eq v2, v0, :cond_0

    if-eq v2, v9, :cond_0

    .line 374
    const/16 v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid method:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getRequestId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getHeaders()Lcom/android/mms/wsp/Headers;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/wsp/Headers;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v3, v4, v7}, Lcom/android/mms/wsp/WspWrapper;->nativeReopenRequestNewUrl(IILjava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_1
    if-ne v2, v9, :cond_4

    .line 399
    const/4 v0, -0x5

    invoke-virtual {p1, v0}, Lcom/android/mms/wsp/WspRequest;->setStatus(I)V

    .line 403
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/mms/wsp/WspRequest;->setState(I)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getMethodData()[B

    move-result-object v5

    .line 385
    .local v5, data:[B
    if-nez v5, :cond_2

    const/4 v6, 0x0

    .line 386
    .local v6, dataLen:I
    :goto_3
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getHeaders()Lcom/android/mms/wsp/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/wsp/Headers;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/wsp/WspWrapper;->nativeOpenRequest(IILjava/lang/String;Ljava/lang/String;[BILjava/lang/String;)I

    move-result v8

    .line 389
    .local v8, id:I
    if-nez v8, :cond_3

    .line 390
    const/4 v0, 0x2

    const-string v1, "Failed to create WSP request"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v6           #dataLen:I
    .end local v8           #id:I
    :cond_2
    array-length v6, v5

    goto :goto_3

    .line 395
    .restart local v6       #dataLen:I
    .restart local v8       #id:I
    :cond_3
    invoke-virtual {p1, v8}, Lcom/android/mms/wsp/WspRequest;->setRequestId(I)V

    goto :goto_1

    .line 401
    .end local v5           #data:[B
    .end local v6           #dataLen:I
    .end local v8           #id:I
    :cond_4
    const/4 v0, -0x7

    invoke-virtual {p1, v0}, Lcom/android/mms/wsp/WspRequest;->setStatus(I)V

    goto :goto_2
.end method

.method private loadWspStack(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "gateway"
    .parameter "port"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/wsp/WspClient$WspStackException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x10

    .line 91
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/wsp/WspWrapper;->nativeCreateWspSession(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    .line 92
    iget v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/mms/wsp/WspClient$WspStackException;

    const-string v1, "Failed to create WSP session"

    invoke-direct {v0, v1}, Lcom/android/mms/wsp/WspClient$WspStackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v0, v1, p3}, Lcom/android/mms/wsp/WspWrapper;->nativeSetConnectionHeaders(ILjava/lang/String;)Z

    .line 98
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    move-object v2, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/wsp/WspWrapper;->nativeSetParameters(ILjava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v0, v1}, Lcom/android/mms/wsp/WspWrapper;->nativeStartLoad(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->unloadWspStack()V

    .line 103
    new-instance v0, Lcom/android/mms/wsp/WspClient$WspStackException;

    const-string v1, "Failed to set parameters for WSP session"

    invoke-direct {v0, v1}, Lcom/android/mms/wsp/WspClient$WspStackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    return-void
.end method

.method private notifyData(Lcom/android/mms/wsp/EventHandler;[B)V
    .locals 3
    .parameter "eventHandler"
    .parameter "data"

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 304
    :try_start_0
    array-length v1, p2

    invoke-interface {p1, p2, v1}, Lcom/android/mms/wsp/EventHandler;->onData([BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "WSP Stack"

    const-string v2, "Throwable has been caught by onData"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyEndData(Lcom/android/mms/wsp/WspRequest;)V
    .locals 4
    .parameter "req"

    .prologue
    .line 322
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/mms/wsp/WspRequest;->setState(I)V

    .line 324
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getEventHandler()Lcom/android/mms/wsp/EventHandler;

    move-result-object v0

    .line 325
    .local v0, eventHandler:Lcom/android/mms/wsp/EventHandler;
    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    invoke-interface {v0}, Lcom/android/mms/wsp/EventHandler;->onEndData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "WSP Stack"

    const-string v3, "Throwable has been caught by onData"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V
    .locals 4
    .parameter "request"
    .parameter "errorId"
    .parameter "description"

    .prologue
    .line 356
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/android/mms/wsp/WspRequest;->setStatus(I)V

    .line 357
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/mms/wsp/WspRequest;->setState(I)V

    .line 358
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getEventHandler()Lcom/android/mms/wsp/EventHandler;

    move-result-object v0

    .line 359
    .local v0, eventHandler:Lcom/android/mms/wsp/EventHandler;
    if-eqz v0, :cond_0

    .line 361
    :try_start_0
    invoke-interface {v0, p2, p3}, Lcom/android/mms/wsp/EventHandler;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "WSP Stack"

    const-string v3, "Throwable has been caught by onError"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyHeaders(Lcom/android/mms/wsp/EventHandler;Lcom/android/mms/wsp/Headers;)V
    .locals 3
    .parameter "eventHandler"
    .parameter "headers"

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 337
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/mms/wsp/EventHandler;->onHeaders(Lcom/android/mms/wsp/Headers;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "WSP Stack"

    const-string v2, "Throwable has been caught by onHeaders"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifySentProgress(Lcom/android/mms/wsp/EventHandler;II)V
    .locals 3
    .parameter "eventHandler"
    .parameter "sentSize"
    .parameter "totalSize"

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 314
    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/android/mms/wsp/EventHandler;->onSentProgress(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "WSP Stack"

    const-string v2, "Throwable has been caught by onSentProgress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyStatus(Lcom/android/mms/wsp/EventHandler;I)V
    .locals 3
    .parameter "eventHandler"
    .parameter "status"

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 347
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p2, v1}, Lcom/android/mms/wsp/EventHandler;->onStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "WSP Stack"

    const-string v2, "Throwable has been caught by onStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private peekWspSession(Lcom/android/mms/wsp/WspRequest;)V
    .locals 4
    .parameter "req"

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v2, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v1, v2}, Lcom/android/mms/wsp/WspWrapper;->nativePeekReady(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 415
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->unloadWspStack()V
    :try_end_0
    .catch Lcom/android/mms/wsp/WspClient$WspStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect gateway:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getGateway()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    .line 425
    :goto_1
    return-void

    .line 410
    :sswitch_0
    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/android/mms/wsp/WspRequest;->setStatus(I)V

    goto :goto_1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Lcom/android/mms/wsp/WspClient$WspStackException;
    const-string v1, "WSP Stack"

    invoke-virtual {v0}, Lcom/android/mms/wsp/WspClient$WspStackException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private processRequest(Lcom/android/mms/wsp/WspRequest;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/android/mms/wsp/WspRequest;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    :pswitch_0
    return-void

    .line 203
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->loadRequest(Lcom/android/mms/wsp/WspRequest;)V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->doNetworkTransmission(Lcom/android/mms/wsp/WspRequest;)V

    goto :goto_0

    .line 212
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyEndData(Lcom/android/mms/wsp/WspRequest;)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unloadWspStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/wsp/WspClient$WspStackException;
        }
    .end annotation

    .prologue
    .line 109
    iget v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v0, v1}, Lcom/android/mms/wsp/WspWrapper;->nativeStopLoad(I)V

    .line 112
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    iget v1, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    invoke-virtual {v0, v1}, Lcom/android/mms/wsp/WspWrapper;->nativeDestroyWspSession(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/mms/wsp/WspClient$WspStackException;

    const-string v1, "Failed to destory WSP session:"

    invoke-direct {v0, v1}, Lcom/android/mms/wsp/WspClient$WspStackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspSession:I

    .line 117
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 126
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mKeepRunning:Z

    if-eqz v3, :cond_1

    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, req:Lcom/android/mms/wsp/WspRequest;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->this$0:Lcom/android/mms/wsp/WspClient;

    #getter for: Lcom/android/mms/wsp/WspClient;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v3}, Lcom/android/mms/wsp/WspClient;->access$000(Lcom/android/mms/wsp/WspClient;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/mms/wsp/WspRequest;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :goto_1
    if-eqz v2, :cond_0

    .line 138
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->initWspStackForReq(Lcom/android/mms/wsp/WspRequest;)V

    .line 140
    invoke-direct {p0, v2}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->doWspCheck(Lcom/android/mms/wsp/WspRequest;)V
    :try_end_1
    .catch Lcom/android/mms/wsp/WspClient$WspStackException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Lcom/android/mms/wsp/WspClient$WspStackException;
    const/4 v3, 0x7

    invoke-virtual {v1}, Lcom/android/mms/wsp/WspClient$WspStackException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->notifyError(Lcom/android/mms/wsp/WspRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1           #e:Lcom/android/mms/wsp/WspClient$WspStackException;
    :catch_1
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "WSP Stack"

    const-string v4, "background ConnectionThread interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #req:Lcom/android/mms/wsp/WspRequest;
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->unloadWspStack()V
    :try_end_2
    .catch Lcom/android/mms/wsp/WspClient$WspStackException; {:try_start_2 .. :try_end_2} :catch_2

    .line 153
    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mWspBridge:Lcom/android/mms/wsp/WspWrapper;

    .line 154
    return-void

    .line 149
    :catch_2
    move-exception v1

    .line 150
    .local v1, e:Lcom/android/mms/wsp/WspClient$WspStackException;
    const-string v3, "WSP Stack"

    invoke-virtual {v1}, Lcom/android/mms/wsp/WspClient$WspStackException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/wsp/WspClient$ConnectionThread;->mKeepRunning:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->interrupt()V

    .line 122
    return-void
.end method
