.class Ljava/lang/ProcessManager$ProcessImpl;
.super Ljava/lang/Process;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessImpl"
.end annotation


# instance fields
.field private final errorStream:Ljava/io/InputStream;

.field private exitValue:Ljava/lang/Integer;

.field private final exitValueMutex:Ljava/lang/Object;

.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Ljava/io/OutputStream;

.field private final pid:I


# direct methods
.method constructor <init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    iput p1, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p4, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p2, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    new-instance v0, Ljava/lang/ProcessManager$ProcessOutputStream;

    invoke-direct {v0, p3, v1}, Ljava/lang/ProcessManager$ProcessOutputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method static synthetic access$300(Ljava/lang/ProcessManager$ProcessImpl;)I
    .locals 1

    iget v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v2, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    sget v3, Llibcore/io/OsConstants;->SIGKILL:I

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->kill(II)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to destroy process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public exitValue()I
    .locals 3

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v2, "Process has not yet terminated."

    invoke-direct {v0, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method setExitValue(I)V
    .locals 2

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process[pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitFor()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method
