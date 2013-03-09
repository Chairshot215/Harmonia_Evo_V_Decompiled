.class public Ljava/io/FileOutputStream;
.super Ljava/io/OutputStream;
.source "FileOutputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final mode:I

.field private final shouldClose:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v0, Llibcore/io/OsConstants;->O_WRONLY:I

    sget v1, Llibcore/io/OsConstants;->O_CREAT:I

    or-int/2addr v1, v0

    if-eqz p2, :cond_1

    sget v0, Llibcore/io/OsConstants;->O_APPEND:I

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Ljava/io/FileOutputStream;->mode:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ljava/io/FileOutputStream;->mode:I

    invoke-static {v0, v1}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/FileOutputStream;->shouldClose:Z

    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_1
    sget v0, Llibcore/io/OsConstants;->O_TRUNC:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fd == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/FileOutputStream;->shouldClose:Z

    sget v0, Llibcore/io/OsConstants;->O_WRONLY:I

    iput v0, p0, Ljava/io/FileOutputStream;->mode:I

    iget v0, p0, Ljava/io/FileOutputStream;->mode:I

    invoke-static {p0, p1, v0}, Ljava/nio/NioUtils;->newFileChannel(Ljava/lang/Object;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

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

    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->shouldClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v1, p0, Ljava/io/FileOutputStream;->mode:I

    invoke-static {p0, v0, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/lang/Object;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    :cond_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    return-void
.end method
