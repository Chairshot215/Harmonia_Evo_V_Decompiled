.class public Lorg/apache/harmony/luni/util/DeleteOnExit;
.super Ljava/lang/Thread;
.source "DeleteOnExit.java"


# static fields
.field private static instance:Lorg/apache/harmony/luni/util/DeleteOnExit;


# instance fields
.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/util/DeleteOnExit;->files:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/apache/harmony/luni/util/DeleteOnExit;
    .locals 3

    const-class v1, Lorg/apache/harmony/luni/util/DeleteOnExit;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/harmony/luni/util/DeleteOnExit;->instance:Lorg/apache/harmony/luni/util/DeleteOnExit;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/luni/util/DeleteOnExit;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/DeleteOnExit;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/util/DeleteOnExit;->instance:Lorg/apache/harmony/luni/util/DeleteOnExit;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sget-object v2, Lorg/apache/harmony/luni/util/DeleteOnExit;->instance:Lorg/apache/harmony/luni/util/DeleteOnExit;

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    :cond_0
    sget-object v0, Lorg/apache/harmony/luni/util/DeleteOnExit;->instance:Lorg/apache/harmony/luni/util/DeleteOnExit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/harmony/luni/util/DeleteOnExit;->files:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/util/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/util/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    iget-object v1, p0, Lorg/apache/harmony/luni/util/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lorg/apache/harmony/luni/util/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/harmony/luni/util/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
