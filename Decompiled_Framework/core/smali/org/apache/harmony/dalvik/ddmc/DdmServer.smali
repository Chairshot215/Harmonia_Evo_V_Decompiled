.class public Lorg/apache/harmony/dalvik/ddmc/DdmServer;
.super Ljava/lang/Object;
.source "DdmServer.java"


# static fields
.field public static final CLIENT_PROTOCOL_VERSION:I = 0x1

.field private static final CONNECTED:I = 0x1

.field private static final DISCONNECTED:I = 0x2

.field private static mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mRegistrationComplete:Z

.field private static mRegistrationTimedOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcast(I)V
    .locals 5

    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    packed-switch p0, :pswitch_data_0

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->connected()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->disconnected()V

    goto :goto_0

    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static dispatch(I[BII)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7

    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v4

    :cond_0
    :goto_0
    :try_start_0
    sget-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :try_start_1
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_3
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_2
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    invoke-virtual {v1, v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    goto :goto_1
.end method

.method private static native nativeSendChunk(I[BII)V
.end method

.method public static registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static registrationComplete()V
    .locals 2

    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

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

.method public static sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V
    .locals 4

    iget v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    iget-object v1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    iget v2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    iget v3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->nativeSendChunk(I[BII)V

    return-void
.end method

.method public static unregisterHandler(I)Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .locals 3

    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
