.class Ljava/nio/channels/Channels$ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelOutputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v0, v1, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$ChannelOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-static {v2}, Ljava/nio/channels/Channels;->checkBlocking(Ljava/nio/channels/Channel;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v2, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v2, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
