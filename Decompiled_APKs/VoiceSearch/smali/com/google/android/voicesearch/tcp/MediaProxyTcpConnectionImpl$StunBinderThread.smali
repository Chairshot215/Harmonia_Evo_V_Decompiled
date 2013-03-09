.class Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;
.super Ljava/lang/Thread;
.source "MediaProxyTcpConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StunBinderThread"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private volatile mRunning:Z

.field private final mStunPacket:[B

.field final synthetic this$0:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;[B)V
    .locals 1
    .parameter
    .parameter "stunPacket"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->this$0:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    .line 178
    const-string v0, "StunBinder"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->lock:Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->mRunning:Z

    .line 179
    iput-object p2, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->mStunPacket:[B

    .line 180
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->start()V

    .line 181
    return-void
.end method


# virtual methods
.method public notifyResposeReceived()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->mRunning:Z

    .line 210
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 212
    monitor-exit v1

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 185
    const-wide/16 v1, 0x64

    .line 187
    .local v1, retryDelay:J
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->mRunning:Z

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x640

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 188
    const-string v3, "MediaProxyTcpConnectionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending STUN packet [nextDelay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->this$0:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->mStunPacket:[B

    invoke-virtual {v3, v4}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->sendRequest([B)V

    .line 191
    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :try_start_1
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$StunBinderThread;->lock:Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 193
    monitor-exit v4

    .line 194
    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    const-string v3, "MediaProxyTcpConnectionImpl"

    const-string v4, "Stun request failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 198
    :catch_1
    move-exception v3

    goto :goto_1
.end method
