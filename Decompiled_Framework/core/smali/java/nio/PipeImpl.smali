.class final Ljava/nio/PipeImpl;
.super Ljava/nio/channels/Pipe;
.source "PipeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/PipeImpl$1;,
        Ljava/nio/PipeImpl$PipeSinkChannel;,
        Ljava/nio/PipeImpl$PipeSourceChannel;,
        Ljava/nio/PipeImpl$FdCloser;
    }
.end annotation


# instance fields
.field private final sink:Ljava/nio/PipeImpl$PipeSinkChannel;

.field private final source:Ljava/nio/PipeImpl$PipeSourceChannel;


# direct methods
.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/channels/Pipe;-><init>()V

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2}, Llibcore/io/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v2, Ljava/nio/PipeImpl$PipeSinkChannel;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Ljava/nio/PipeImpl$PipeSinkChannel;-><init>(Ljava/nio/PipeImpl;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V

    iput-object v2, p0, Ljava/nio/PipeImpl;->sink:Ljava/nio/PipeImpl$PipeSinkChannel;

    new-instance v2, Ljava/nio/PipeImpl$PipeSourceChannel;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Ljava/nio/PipeImpl$PipeSourceChannel;-><init>(Ljava/nio/PipeImpl;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V

    iput-object v2, p0, Ljava/nio/PipeImpl;->source:Ljava/nio/PipeImpl$PipeSourceChannel;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public sink()Ljava/nio/channels/Pipe$SinkChannel;
    .locals 1

    iget-object v0, p0, Ljava/nio/PipeImpl;->sink:Ljava/nio/PipeImpl$PipeSinkChannel;

    return-object v0
.end method

.method public source()Ljava/nio/channels/Pipe$SourceChannel;
    .locals 1

    iget-object v0, p0, Ljava/nio/PipeImpl;->source:Ljava/nio/PipeImpl$PipeSourceChannel;

    return-object v0
.end method
