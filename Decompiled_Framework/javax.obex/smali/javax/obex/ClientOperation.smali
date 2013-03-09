.class public final Ljavax/obex/ClientOperation;
.super Ljava/lang/Object;
.source "ClientOperation.java"

# interfaces
.implements Ljavax/obex/Operation;
.implements Ljavax/obex/BaseStream;


# instance fields
.field private mEndOfBodySent:Z

.field private mExceptionMessage:Ljava/lang/String;

.field private mGetOperation:Z

.field private mInputOpen:Z

.field private mMaxPacketSize:I

.field private mOperationDone:Z

.field private mParent:Ljavax/obex/ClientSession;

.field private mPrivateInput:Ljavax/obex/PrivateInputStream;

.field private mPrivateInputOpen:Z

.field private mPrivateOutput:Ljavax/obex/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mReplyHeader:Ljavax/obex/HeaderSet;

.field private mRequestHeader:Ljavax/obex/HeaderSet;


# direct methods
.method public constructor <init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    iput p1, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    iput-boolean p4, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    iput-object v3, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    iput-object v3, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-virtual {p3}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p3, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private sendRequest(I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v13, 0x49

    const/16 v12, 0x48

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, -0x1

    iget-object v10, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v10, v9}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v3

    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v10, :cond_0

    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v10}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v1

    :cond_0
    array-length v10, v3

    add-int/lit8 v10, v10, 0x3

    iget v11, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    if-le v10, v11, :cond_7

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v10, v3

    if-eq v2, v10, :cond_6

    iget v10, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    add-int/lit8 v10, v10, -0x3

    invoke-static {v3, v7, v10}, Ljavax/obex/ObexHelper;->findHeaderEnd([BII)I

    move-result v2

    const/4 v10, -0x1

    if-ne v2, v10, :cond_3

    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->abort()V

    const-string v9, "Header larger then can be sent in a packet"

    iput-object v9, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    iput-boolean v8, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-eqz v8, :cond_1

    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateInputStream;->close()V

    :cond_1
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v8, :cond_2

    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->close()V

    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "OBEX Packet exceeds max packet size"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    sub-int v10, v2, v7

    new-array v6, v10, [B

    array-length v10, v6

    invoke-static {v3, v7, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v12, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v10, p1, v6, v11, v12}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    :goto_1
    return v8

    :cond_5
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v10, v10, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v11, 0x90

    if-ne v10, v11, :cond_4

    move v7, v2

    goto :goto_0

    :cond_6
    if-lez v1, :cond_4

    move v8, v9

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-lez v1, :cond_9

    iget v10, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    array-length v11, v3

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x6

    if-le v1, v10, :cond_8

    const/4 v5, 0x1

    iget v10, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    array-length v11, v3

    sub-int/2addr v10, v11

    add-int/lit8 v1, v10, -0x6

    :cond_8
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v10, v1}, Ljavax/obex/PrivateOutputStream;->readBytes(I)[B

    move-result-object v0

    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v10}, Ljavax/obex/PrivateOutputStream;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez v5, :cond_b

    iget-boolean v10, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    if-nez v10, :cond_b

    and-int/lit16 v10, p1, 0x80

    if-eqz v10, :cond_b

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    :goto_2
    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v10, v1

    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz v0, :cond_9

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_9
    iget-boolean v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v10, :cond_a

    if-gtz v1, :cond_a

    iget-boolean v10, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    if-nez v10, :cond_a

    and-int/lit16 v10, p1, 0x80

    if-nez v10, :cond_c

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_3
    const/4 v1, 0x3

    int-to-byte v9, v8

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v9, v1

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/4 v10, 0x0

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v12, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v9, p1, v10, v11, v12}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v5

    goto :goto_1

    :cond_b
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_c
    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    goto :goto_3

    :cond_d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-lez v9, :cond_e

    iget-object v9, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v12, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v9, p1, v10, v11, v12}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_e
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v8, :cond_f

    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_f

    const/4 v5, 0x1

    :cond_f
    move v8, v5

    goto/16 :goto_1
.end method

.method private declared-synchronized startProcessing()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x90

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljavax/obex/PrivateInputStream;

    invoke-direct {v1, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x83

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    :cond_2
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_5

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x82

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    :cond_6
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljavax/obex/ClientOperation;->startProcessing()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x90

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "Operation aborted"

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v1, 0xff

    const/4 v2, 0x0

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response code from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x90

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v2, :cond_4

    if-eqz p2, :cond_1

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_1

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x83

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    if-nez p2, :cond_3

    :try_start_1
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_3

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v1, :cond_2

    new-instance v1, Ljavax/obex/PrivateInputStream;

    invoke-direct {v1, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_4
    if-nez p2, :cond_6

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_6

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    :cond_5
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public ensureNotDone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has completed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->ensureOpen()V

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderLength()I
    .locals 3

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    array-length v1, v0

    return v1
.end method

.method public getLength()J
    .locals 6

    const-wide/16 v2, -0x1

    :try_start_0
    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v5, 0xc3

    invoke-virtual {v4, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMaxPacketSize()I
    .locals 2

    iget v0, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getReceivedHeader()Ljavax/obex/HeaderSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    return-object v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    :cond_1
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more input streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    return-object v0

    :cond_2
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljavax/obex/PrivateInputStream;

    invoke-direct {v0, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    goto :goto_0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureNotDone()V

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more output streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljavax/obex/PrivateOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljavax/obex/PrivateOutputStream;-><init>(Ljavax/obex/BaseStream;I)V

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    return-object v0
.end method

.method public sendHeaders(Ljavax/obex/HeaderSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Operation has already exchanged all data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Headers may not be null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public streamClosed(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v8, 0x83

    const/4 v7, 0x1

    const/16 v6, 0x90

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-nez v2, :cond_6

    if-nez p1, :cond_5

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_5

    const/4 v1, 0x1

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v2, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    array-length v2, v0

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_3

    const/16 v2, 0x82

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    goto :goto_1

    :cond_3
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v2, :cond_4

    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_a

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    :cond_7
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_8

    invoke-direct {p0, v8}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_8
    :goto_3
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_9

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v2, v8, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    goto :goto_3

    :cond_9
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_2

    :cond_a
    if-nez p1, :cond_4

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_4

    const/4 v1, 0x1

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_b

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v2, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    array-length v2, v0

    if-gtz v2, :cond_b

    const/4 v1, 0x0

    :cond_b
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v2, :cond_c

    new-instance v2, Ljavax/obex/PrivateInputStream;

    invoke-direct {v2, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    :cond_c
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_d

    const/4 v1, 0x0

    :cond_d
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    :goto_4
    if-eqz v1, :cond_e

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_e

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v1

    goto :goto_4

    :cond_e
    invoke-direct {p0, v8}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v2, v6, :cond_4

    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto/16 :goto_2
.end method
