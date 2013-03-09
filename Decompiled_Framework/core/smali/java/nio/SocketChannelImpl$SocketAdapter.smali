.class Ljava/nio/SocketChannelImpl$SocketAdapter;
.super Ljava/net/Socket;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketAdapter"
.end annotation


# instance fields
.field private final channel:Ljava/nio/SocketChannelImpl;

.field private final socketImpl:Ljava/net/PlainSocketImpl;


# direct methods
.method constructor <init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    iput-object p2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-static {p0}, Ljava/net/SocketUtils;->setCreated(Ljava/net/Socket;)V

    return-void
.end method

.method private checkOpenAndConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #getter for: Ljava/nio/SocketChannelImpl;->status:I
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$200(Ljava/nio/SocketChannelImpl;)I

    move-result v0

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0

    :cond_1
    invoke-super {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #calls: Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$100(Ljava/nio/SocketChannelImpl;)V

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #setter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/SocketChannelImpl;->access$002(Ljava/nio/SocketChannelImpl;Z)Z

    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->close()V

    :goto_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    const/4 v2, 0x3

    #setter for: Ljava/nio/SocketChannelImpl;->status:I
    invoke-static {v0, v2}, Ljava/nio/SocketChannelImpl;->access$202(Ljava/nio/SocketChannelImpl;I)I

    monitor-exit v1

    return-void

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    :cond_1
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #calls: Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$100(Ljava/nio/SocketChannelImpl;)V

    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->setConnected()V

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-super {p0}, Ljava/net/Socket;->isBound()Z

    move-result v1

    #setter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/SocketChannelImpl;->access$002(Ljava/nio/SocketChannelImpl;Z)Z

    :cond_2
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/PlainSocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->checkOpenAndConnected()V

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1}, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    :try_start_0
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->getLocalAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->checkOpenAndConnected()V

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1}, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #getter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$000(Ljava/nio/SocketChannelImpl;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method socketImpl()Ljava/net/PlainSocketImpl;
    .locals 1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    return-object v0
.end method
