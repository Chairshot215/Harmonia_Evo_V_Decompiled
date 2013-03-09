.class Ljava/nio/PipeImpl$PipeSinkChannel;
.super Ljava/nio/channels/Pipe$SinkChannel;
.source "PipeImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/PipeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipeSinkChannel"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private final fd:Ljava/io/FileDescriptor;

.field final synthetic this$0:Ljava/nio/PipeImpl;


# direct methods
.method private constructor <init>(Ljava/nio/PipeImpl;Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->this$0:Ljava/nio/PipeImpl;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/Pipe$SinkChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-object p2, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->fd:Ljava/io/FileDescriptor;

    new-instance v0, Ljava/nio/PipeImpl$FdCloser;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Ljava/nio/PipeImpl$FdCloser;-><init>(Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V

    sget v1, Llibcore/io/OsConstants;->O_WRONLY:I

    invoke-static {v0, p2, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/lang/Object;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/PipeImpl;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/nio/PipeImpl$PipeSinkChannel;-><init>(Ljava/nio/PipeImpl;Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/PipeImpl$PipeSinkChannel;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
