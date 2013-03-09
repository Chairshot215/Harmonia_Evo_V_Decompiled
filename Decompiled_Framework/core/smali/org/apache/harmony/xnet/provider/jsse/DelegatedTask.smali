.class public Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;
.super Ljava/lang/Object;
.source "DelegatedTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final action:Ljava/lang/Runnable;

.field private final handshaker:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->action:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->handshaker:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->handshaker:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->action:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->handshaker:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
