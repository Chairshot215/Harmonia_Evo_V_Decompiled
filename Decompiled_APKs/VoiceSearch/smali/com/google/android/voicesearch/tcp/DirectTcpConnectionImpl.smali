.class public Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;
.super Ljava/lang/Object;
.source "DirectTcpConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;
    }
.end annotation


# instance fields
.field protected volatile mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

.field protected final mConnectionTimeout:I

.field private final mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private final mInput:Ljava/io/DataInputStream;

.field private final mOutput:Ljava/io/DataOutputStream;

.field private final mReadingRunnable:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;

.field protected final mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .parameter "host"
    .parameter "port"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p3, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mConnectionTimeout:I

    .line 77
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    .line 78
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-static {v2}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 79
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 80
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 81
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 82
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 84
    .local v0, address:Ljava/net/InetSocketAddress;
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2, v0, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 85
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const v3, 0x1d4c0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 87
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mOutput:Ljava/io/DataOutputStream;

    .line 89
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mInput:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 94
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v2}, Lcom/google/protos/speech/service/SpeechService;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 95
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 96
    new-instance v2, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;-><init>(Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mReadingRunnable:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;

    .line 97
    return-void

    .line 90
    .end local v0           #address:Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v3, "Failed to establish connection"

    invoke-direct {v2, v3, v1}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mReadingRunnable:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->cancel()V

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-static {v1}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 131
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    const-string v1, "DirectTcpConnectionImpl"

    const-string v2, "Error closing socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReaderThreadRunning()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mReadingRunnable:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected processPacket([B)Z
    .locals 2
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {p1, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;->onResponseAvailable(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected readPacket()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, len:I
    const/4 v2, 0x0

    .line 188
    .local v2, success:Z
    :try_start_0
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 189
    new-array v1, v0, [B

    .line 190
    .local v1, ret:[B
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const/4 v2, 0x1

    .line 192
    return-object v1

    .line 194
    .end local v1           #ret:[B
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public sendPlainBytes([B)V
    .locals 1
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 166
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 167
    return-void
.end method

.method public sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->sendRequest([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v2, "Failed to send request"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected sendRequest([B)V
    .locals 3
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    array-length v0, p1

    const v1, 0xffff

    if-lt v0, v1, :cond_0

    .line 178
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packet too big:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mOutput:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->sendPlainBytes([B)V

    .line 182
    return-void
.end method

.method public start(Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;)V
    .locals 3
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot start() more than once"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 113
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    .line 114
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mReadingRunnable:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;

    const-string v2, "DirectTcpReader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
