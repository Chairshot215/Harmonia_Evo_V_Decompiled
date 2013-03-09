.class final Ljava/lang/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessManager$ProcessOutputStream;,
        Ljava/lang/ProcessManager$ProcessInputStream;,
        Ljava/lang/ProcessManager$ProcessReferenceQueue;,
        Ljava/lang/ProcessManager$ProcessReference;,
        Ljava/lang/ProcessManager$ProcessImpl;
    }
.end annotation


# static fields
.field private static final instance:Ljava/lang/ProcessManager;


# instance fields
.field private final processReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ProcessManager$ProcessReference;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ProcessManager;

    invoke-direct {v0}, Ljava/lang/ProcessManager;-><init>()V

    sput-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    new-instance v1, Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;-><init>()V

    iput-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    new-instance v0, Ljava/lang/ProcessManager$1;

    const-class v1, Ljava/lang/ProcessManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessManager$1;-><init>(Ljava/lang/ProcessManager;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ProcessManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ProcessManager;->watchChildren()V

    return-void
.end method

.method private cleanUp()V
    .locals 4

    :goto_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;->poll()Ljava/lang/ProcessManager$ProcessReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    iget v3, v0, Ljava/lang/ProcessManager$ProcessReference;->processId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method private static native exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static getInstance()Ljava/lang/ProcessManager;
    .locals 1

    sget-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    return-object v0
.end method

.method private onExit(II)V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Ljava/lang/ProcessManager;->cleanUp()V

    iget-object v3, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ProcessManager$ProcessReference;

    move-object v2, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ProcessManager$ProcessReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ProcessManager$ProcessImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/ProcessManager$ProcessImpl;->setExitValue(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private waitForMoreChildren()V
    .locals 4

    iget-object v2, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v3, "unexpected interrupt"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private watchChildren()V
    .locals 7

    new-instance v3, Llibcore/util/MutableInt;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Llibcore/util/MutableInt;-><init>(I)V

    :goto_0
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v6}, Llibcore/io/Os;->waitpid(ILlibcore/util/MutableInt;I)I

    move-result v2

    iget v4, v3, Llibcore/util/MutableInt;->value:I

    invoke-static {v4}, Llibcore/io/OsConstants;->WIFEXITED(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Llibcore/util/MutableInt;->value:I

    invoke-static {v4}, Llibcore/io/OsConstants;->WEXITSTATUS(I)I

    move-result v1

    :goto_1
    invoke-direct {p0, v2, v1}, Ljava/lang/ProcessManager;->onExit(II)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v4, v0, Llibcore/io/ErrnoException;->errno:I

    sget v5, Llibcore/io/OsConstants;->ECHILD:I

    if-ne v4, v5, :cond_3

    invoke-direct {p0}, Ljava/lang/ProcessManager;->waitForMoreChildren()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget v4, v3, Llibcore/util/MutableInt;->value:I

    invoke-static {v4}, Llibcore/io/OsConstants;->WIFSIGNALED(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Llibcore/util/MutableInt;->value:I

    invoke-static {v4}, Llibcore/io/OsConstants;->WTERMSIG(I)I

    move-result v1

    goto :goto_1

    :cond_1
    iget v4, v3, Llibcore/util/MutableInt;->value:I

    invoke-static {v4}, Llibcore/io/OsConstants;->WIFSTOPPED(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Llibcore/util/MutableInt;->value:I

    invoke-static {v4}, Llibcore/io/OsConstants;->WSTOPSIG(I)I

    move-result v1

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected status from waitpid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    :cond_0
    move-object/from16 v0, p1

    array-length v8, v0

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    :cond_1
    invoke-virtual/range {p1 .. p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v3, v8

    :goto_0
    move-object v10, v2

    array-length v14, v10

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_4

    aget-object v9, v10, v13

    if-nez v9, :cond_3

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    move-object v10, v3

    array-length v14, v10

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_6

    aget-object v12, v10, v13

    if-nez v12, :cond_5

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    new-instance v6, Ljava/io/FileDescriptor;

    invoke-direct {v6}, Ljava/io/FileDescriptor;-><init>()V

    new-instance v7, Ljava/io/FileDescriptor;

    invoke-direct {v7}, Ljava/io/FileDescriptor;-><init>()V

    if-nez p3, :cond_7

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    move-object/from16 v19, v0

    monitor-enter v19

    move/from16 v8, p4

    :try_start_0
    invoke-static/range {v2 .. v8}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    :try_start_1
    new-instance v16, Ljava/lang/ProcessManager$ProcessImpl;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v5, v6, v7}, Ljava/lang/ProcessManager$ProcessImpl;-><init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    new-instance v17, Ljava/lang/ProcessManager$ProcessReference;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8}, Ljava/lang/ProcessManager$ProcessReference;-><init>(Ljava/lang/ProcessManager$ProcessImpl;Ljava/lang/ProcessManager$ProcessReferenceQueue;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v16

    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :catch_0
    move-exception v11

    :try_start_2
    new-instance v18, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error running exec(). Command: "

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v20, " Working Directory: "

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v20, " Environment: "

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v18

    :catchall_0
    move-exception v8

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8
.end method
