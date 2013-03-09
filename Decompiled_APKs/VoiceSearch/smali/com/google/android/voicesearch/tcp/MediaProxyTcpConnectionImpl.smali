.class public Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;
.super Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;
.source "MediaProxyTcpConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;
    }
.end annotation


# instance fields
.field private final mStunId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "stunId"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;-><init>(Ljava/lang/String;II)V

    .line 54
    const-string v0, "stunId"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->mStunId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private static createStunBindingRequest(Ljava/lang/String;)[B
    .locals 4
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunPacket;

    sget-object v3, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-direct {v0, v3}, Lcom/google/android/voicesearch/tcp/StunPacket;-><init>(Lcom/google/android/voicesearch/tcp/StunMessageType;)V

    .line 150
    .local v0, packet:Lcom/google/android/voicesearch/tcp/StunPacket;
    new-instance v1, Lcom/google/android/voicesearch/tcp/StunAttribute;

    sget-object v3, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_USERNAME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-direct {v1, v3}, Lcom/google/android/voicesearch/tcp/StunAttribute;-><init>(Lcom/google/android/voicesearch/tcp/StunAttributeType;)V

    .line 152
    .local v1, usernameAttr:Lcom/google/android/voicesearch/tcp/StunAttribute;
    const-string v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 153
    .local v2, usernamebytes:[B
    new-instance v3, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$1;

    invoke-direct {v3, v2}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$1;-><init>([B)V

    invoke-virtual {v1, v3}, Lcom/google/android/voicesearch/tcp/StunAttribute;->setData(Lcom/google/android/voicesearch/tcp/StunAttributeData;)V

    .line 163
    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/tcp/StunPacket;->addAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)V

    .line 164
    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;->asByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private handleStun(Lcom/google/android/voicesearch/tcp/StunPacket;)V
    .locals 5
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->isReaderThreadRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/tcp/StunPacket;->getType()Lcom/google/android/voicesearch/tcp/StunMessageType;

    move-result-object v2

    sget-object v3, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

    if-eq v2, v3, :cond_1

    .line 78
    :cond_0
    const-string v2, "MediaProxyTcpConnectionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected stun packet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunPacket;

    sget-object v2, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-direct {v0, v2}, Lcom/google/android/voicesearch/tcp/StunPacket;-><init>(Lcom/google/android/voicesearch/tcp/StunMessageType;)V

    .line 84
    .local v0, packet:Lcom/google/android/voicesearch/tcp/StunPacket;
    sget-object v2, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_USERNAME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {p1, v2}, Lcom/google/android/voicesearch/tcp/StunPacket;->getAttribute(Lcom/google/android/voicesearch/tcp/StunAttributeType;)Lcom/google/android/voicesearch/tcp/StunAttribute;

    move-result-object v1

    .line 86
    .local v1, usernameAttr:Lcom/google/android/voicesearch/tcp/StunAttribute;
    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/tcp/StunPacket;->addAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)V

    .line 87
    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/tcp/StunPacket;->setTransactionIDForResponse(Lcom/google/android/voicesearch/tcp/StunPacket;)V

    .line 88
    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;->asByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->sendRequest([B)V

    .line 89
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    invoke-interface {v2}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;->onConnectionAlive()V

    goto :goto_0
.end method

.method private receiveStunResponsePacket()Lcom/google/android/voicesearch/tcp/StunPacket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->readPacket()[B

    move-result-object v2

    .line 127
    .local v2, rdata:[B
    invoke-static {v2}, Lcom/google/android/voicesearch/tcp/StunPacket;->fromByteArray([B)Lcom/google/android/voicesearch/tcp/StunPacket;

    move-result-object v1

    .line 128
    .local v1, packet:Lcom/google/android/voicesearch/tcp/StunPacket;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunPacket;->getType()Lcom/google/android/voicesearch/tcp/StunMessageType;

    move-result-object v3

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    if-ne v3, v4, :cond_0

    .line 129
    const-string v3, "MediaProxyTcpConnectionImpl"

    const-string v4, "#receiveStunResponsePacket"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v1

    .line 132
    :cond_0
    new-instance v3, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad STUN response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    .end local v1           #packet:Lcom/google/android/voicesearch/tcp/StunPacket;
    .end local v2           #rdata:[B
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/EOFException;
    new-instance v3, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v4, "STUN connection closed"

    invoke-direct {v3, v4, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 136
    .end local v0           #e:Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, e:Ljava/net/SocketTimeoutException;
    new-instance v3, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v4, "STUN packet read timed out"

    invoke-direct {v3, v4, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 138
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v4, "STUN packet read error."

    invoke-direct {v3, v4, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private setupStun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->mStunId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->createStunBindingRequest(Ljava/lang/String;)[B

    move-result-object v2

    .line 99
    .local v2, stunBytes:[B
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 100
    new-instance v1, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;

    invoke-direct {v1, p0, v2}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;-><init>(Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;[B)V

    .line 101
    .local v1, stunBinderThread:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;
    invoke-direct {p0}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->receiveStunResponsePacket()Lcom/google/android/voicesearch/tcp/StunPacket;

    .line 107
    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->notifyResposeReceived()V

    .line 108
    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->join()V

    .line 110
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const v4, 0x1d4c0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    return-void

    .line 111
    .end local v1           #stunBinderThread:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;
    .end local v2           #stunBytes:[B
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v4, "Failed to establish stun connection"

    invoke-direct {v3, v4, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 115
    new-instance v3, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v4, "Failed to establish stun connection"

    invoke-direct {v3, v4, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected processPacket([B)Z
    .locals 2
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lcom/google/android/voicesearch/tcp/StunPacket;->headerFromByteArray([B)Lcom/google/android/voicesearch/tcp/StunPacket;

    move-result-object v0

    .line 66
    .local v0, stunPacket:Lcom/google/android/voicesearch/tcp/StunPacket;
    if-nez v0, :cond_0

    .line 67
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->processPacket([B)Z

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/tcp/StunPacket;->readBody([B)V

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->handleStun(Lcom/google/android/voicesearch/tcp/StunPacket;)V

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public start(Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;)V
    .locals 0
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->setupStun()V

    .line 60
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->start(Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;)V

    .line 61
    return-void
.end method
