.class Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
.super Ljava/net/ServerSocket;
.source "ServerSocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/ServerSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerSocketAdapter"
.end annotation


# instance fields
.field private final channelImpl:Ljava/nio/ServerSocketChannelImpl;


# direct methods
.method constructor <init>(Ljava/nio/ServerSocketChannelImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    iput-object p1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #getter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v1}, Ljava/nio/ServerSocketChannelImpl;->access$000(Ljava/nio/ServerSocketChannelImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    const/4 v1, 0x1

    #setter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/ServerSocketChannelImpl;->access$002(Ljava/nio/ServerSocketChannelImpl;Z)Z

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    const/4 v1, 0x1

    #setter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/ServerSocketChannelImpl;->access$002(Ljava/nio/ServerSocketChannelImpl;Z)Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl;->close()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    return-object v0
.end method

.method public implAccept(Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    invoke-virtual {p1}, Ljava/nio/SocketChannelImpl;->setConnected()V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/nio/SocketChannelImpl;->setBound(Z)V

    invoke-virtual {p1}, Ljava/nio/SocketChannelImpl;->finishAccept()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_1
    throw v2
.end method

.method public isBound()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #getter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v0}, Ljava/nio/ServerSocketChannelImpl;->access$000(Ljava/nio/ServerSocketChannelImpl;)Z

    move-result v0

    return v0
.end method
