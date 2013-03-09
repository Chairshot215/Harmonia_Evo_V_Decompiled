.class public final Ljavax/obex/ClientSession;
.super Ljavax/obex/ObexSession;
.source "ClientSession.java"


# instance fields
.field private mConnectionId:[B

.field private final mInput:Ljava/io/InputStream;

.field private mObexConnected:Z

.field private mOpen:Z

.field private final mOutput:Ljava/io/OutputStream;

.field private mRequestActive:Z

.field private maxPacketSize:I


# direct methods
.method public constructor <init>(Ljavax/obex/ObexTransport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/obex/ObexSession;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    const/16 v0, 0x100

    iput v0, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    invoke-interface {p1}, Ljavax/obex/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-interface {p1}, Ljavax/obex/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z

    return-void
.end method

.method private declared-synchronized setRequestActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "OBEX request is already being performed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    iget-object v0, p0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/16 v7, 0x10

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    iget-boolean v4, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Already connected to server"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    const/4 v3, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v4, p1, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v4, :cond_1

    new-array v4, v7, [B

    iput-object v4, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    iget-object v4, p1, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v5, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-static {p1, v6}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    array-length v4, v0

    add-int/2addr v3, v4

    :cond_2
    new-array v1, v3, [B

    aput-byte v7, v1, v6

    aput-byte v6, v1, v8

    const/4 v4, 0x2

    const/4 v5, -0x1

    aput-byte v5, v1, v4

    const/4 v4, 0x3

    const/4 v5, -0x2

    aput-byte v5, v1, v4

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    array-length v4, v1

    add-int/lit8 v4, v4, 0x3

    const v5, 0xfffe

    if-le v4, v5, :cond_4

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Packet size exceeds max packet size"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v2, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    iget v4, v2, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_5

    iput-boolean v8, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    :cond_5
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    return-object v2
.end method

.method public delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v0

    invoke-interface {v0}, Ljavax/obex/Operation;->getResponseCode()I

    invoke-interface {v0}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v1

    invoke-interface {v0}, Ljavax/obex/Operation;->close()V

    return-object v1
.end method

.method public disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-boolean v2, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not connected to the server"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p1, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v2, :cond_1

    new-array v2, v6, [B

    iput-object v2, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    iget-object v2, p1, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v3, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    invoke-static {v2, v4, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v2, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v2, :cond_2

    new-array v2, v5, [B

    iput-object v2, p1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    iget-object v2, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    iget-object v3, p1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-static {p1, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    iget v3, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    if-le v2, v3, :cond_4

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Packet size exceeds max packet size"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    new-array v0, v2, [B

    const/16 v2, -0x35

    aput-byte v2, v0, v4

    iget-object v2, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    const/4 v3, 0x1

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    const/16 v2, 0x81

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    invoke-virtual {p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-boolean v1, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not connected to the server"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    if-nez p1, :cond_3

    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    :cond_1
    :goto_0
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v1, :cond_2

    new-array v1, v4, [B

    iput-object v1, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    iget-object v2, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    new-instance v1, Ljavax/obex/ClientOperation;

    iget v2, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v0, v3}, Ljavax/obex/ClientOperation;-><init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V

    return-object v1

    :cond_3
    move-object v0, p1

    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v1, :cond_1

    new-array v1, v5, [B

    iput-object v1, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v2, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getConnectionID()J
    .locals 2

    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    invoke-static {v0}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-boolean v1, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not connected to the server"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    if-nez p1, :cond_3

    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    :cond_1
    :goto_0
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v1, :cond_2

    new-array v1, v4, [B

    iput-object v1, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    iget-object v2, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    new-instance v1, Ljavax/obex/ClientOperation;

    iget v2, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    invoke-direct {v1, v2, p0, v0, v3}, Ljavax/obex/ClientOperation;-><init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V

    return-object v1

    :cond_3
    move-object v0, p1

    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v1, :cond_1

    new-array v1, v5, [B

    iput-object v1, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v2, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x3

    const v13, 0xfffe

    if-le v12, v13, :cond_0

    new-instance v12, Ljava/io/IOException;

    const-string v13, "header too large "

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move/from16 v0, p1

    int-to-byte v12, v0

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez p2, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v12

    move-object/from16 v0, p3

    iput v12, v0, Ljavax/obex/HeaderSet;->responseCode:I

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v12

    shl-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v13

    or-int v8, v12, v13

    const v12, 0xfffe

    if-le v8, v12, :cond_2

    new-instance v12, Ljava/io/IOException;

    const-string v13, "Packet received exceeds packet size limit"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x3

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x3

    int-to-byte v12, v12

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x3

    if-le v8, v12, :cond_b

    const/4 v6, 0x0

    const/16 v12, 0x80

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v12

    shl-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Ljavax/obex/ClientSession;->maxPacketSize:I

    move-object/from16 v0, p0

    iget v12, v0, Ljavax/obex/ClientSession;->maxPacketSize:I

    const v13, 0xfc00

    if-le v12, v13, :cond_3

    const v12, 0xfc00

    move-object/from16 v0, p0

    iput v12, v0, Ljavax/obex/ClientSession;->maxPacketSize:I

    :cond_3
    const/4 v12, 0x7

    if-le v8, v12, :cond_4

    add-int/lit8 v12, v8, -0x7

    new-array v6, v12, [B

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v12, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    :goto_1
    add-int/lit8 v12, v8, -0x7

    if-eq v5, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    array-length v13, v6

    sub-int/2addr v13, v5

    invoke-virtual {v12, v6, v5, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    add-int/2addr v5, v12

    goto :goto_1

    :cond_4
    const/4 v12, 0x1

    :goto_2
    return v12

    :cond_5
    add-int/lit8 v12, v8, -0x3

    new-array v6, v12, [B

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v12, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    :goto_3
    add-int/lit8 v12, v8, -0x3

    if-eq v5, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    array-length v13, v6

    sub-int/2addr v13, v5

    invoke-virtual {v12, v6, v5, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    add-int/2addr v5, v12

    goto :goto_3

    :cond_6
    const/16 v12, 0xff

    move/from16 v0, p1

    if-ne v0, v12, :cond_7

    const/4 v12, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p3

    invoke-static {v0, v6}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    move-result-object v4

    if-eqz p4, :cond_8

    if-eqz v4, :cond_8

    const/4 v12, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v12}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V

    :cond_8
    move-object/from16 v0, p3

    iget-object v12, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v12, :cond_9

    const/4 v12, 0x4

    new-array v12, v12, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/obex/ClientSession;->mConnectionId:[B

    move-object/from16 v0, p3

    iget-object v12, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ClientSession;->mConnectionId:[B

    const/4 v15, 0x0

    const/16 v16, 0x4

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    move-object/from16 v0, p3

    iget-object v12, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v12, :cond_a

    move-object/from16 v0, p3

    iget-object v12, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/obex/ClientSession;->handleAuthResp([B)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    new-instance v12, Ljava/io/IOException;

    const-string v13, "Authentication Failed"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_a
    move-object/from16 v0, p3

    iget v12, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v13, 0xc1

    if-ne v12, v13, :cond_b

    move-object/from16 v0, p3

    iget-object v12, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x4e

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, p3

    iget-object v12, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v12, v12

    add-int/lit8 v12, v12, 0x3

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, p3

    iget-object v12, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v12, v12

    add-int/lit8 v12, v12, 0x3

    int-to-byte v12, v12

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, p3

    iget-object v12, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v12, 0x0

    move-object/from16 v0, p3

    iput-object v12, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    const/4 v12, 0x0

    move-object/from16 v0, p3

    iput-object v12, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    new-array v10, v12, [B

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const/4 v13, 0x3

    const/4 v14, 0x0

    array-length v15, v10

    invoke-static {v12, v13, v10, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v10, v2, v3}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v12

    goto/16 :goto_2

    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_2
.end method

.method public setAuthenticator(Ljavax/obex/Authenticator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authenticator may not be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    return-void
.end method

.method public setConnectionID(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection ID is not in a valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, p2}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    return-void
.end method

.method public setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x4

    const/16 v9, 0x10

    const/4 v8, 0x0

    iget-boolean v6, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Not connected to the server"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    const/4 v5, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_4

    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    :cond_1
    :goto_0
    iget-object v6, v2, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v6, :cond_2

    new-array v6, v9, [B

    iput-object v6, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    iget-object v6, v2, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v7, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    invoke-static {v6, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v6, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v6, :cond_3

    new-array v6, v10, [B

    iput-object v6, v2, Ljavax/obex/HeaderSet;->mConnectionID:[B

    iget-object v6, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    iget-object v7, v2, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v6, v8, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    invoke-static {v2, v8}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v1

    array-length v6, v1

    add-int/2addr v5, v6

    iget v6, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    if-le v5, v6, :cond_5

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Packet size exceeds max packet size"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    move-object v2, p1

    iget-object v6, v2, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v6, :cond_1

    new-array v6, v9, [B

    iput-object v6, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    iget-object v6, v2, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v7, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    invoke-static {v6, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    if-nez p3, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    new-array v3, v5, [B

    int-to-byte v6, v0

    aput-byte v6, v3, v8

    const/4 v6, 0x1

    aput-byte v8, v3, v6

    if-eqz v2, :cond_8

    const/4 v6, 0x2

    array-length v7, v1

    invoke-static {v1, v8, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    const/16 v6, 0x85

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v3, v4, v7}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    invoke-virtual {p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    return-object v4
.end method

.method declared-synchronized setRequestInactive()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
