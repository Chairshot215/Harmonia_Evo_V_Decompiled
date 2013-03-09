.class public Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;
.super Ljava/lang/Object;
.source "DirectTcpConnectionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReaderRunnable"
.end annotation


# instance fields
.field private volatile mRunning:Z

.field final synthetic this$0:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;


# direct methods
.method protected constructor <init>(Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->this$0:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    .line 204
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const-wide/32 v7, 0x1d4c0

    const/4 v6, 0x0

    .line 212
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    .line 213
    const v4, 0x10006

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 216
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v1, v4, v7

    .line 217
    .local v1, nextTimeout:J
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    if-eqz v4, :cond_2

    .line 218
    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->this$0:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->readPacket()[B

    move-result-object v3

    .line 219
    .local v3, packet:[B
    iget-boolean v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    if-nez v4, :cond_0

    .line 220
    const-string v4, "DirectTcpConnectionImpl"

    const-string v5, "Reader - exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 262
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 263
    iput-boolean v6, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    .line 265
    .end local v1           #nextTimeout:J
    .end local v3           #packet:[B
    :goto_1
    return-void

    .line 223
    .restart local v1       #nextTimeout:J
    .restart local v3       #packet:[B
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->this$0:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    invoke-virtual {v4, v3}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->processPacket([B)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-ltz v4, :cond_1

    .line 224
    const-string v4, "DirectTcpConnectionImpl"

    const-string v5, "Reader - timeout - exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 262
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 263
    iput-boolean v6, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    goto :goto_1

    .line 230
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v4

    add-long v1, v4, v7

    .line 231
    goto :goto_0

    .line 262
    .end local v3           #packet:[B
    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 263
    iput-boolean v6, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    goto :goto_1

    .line 232
    .end local v1           #nextTimeout:J
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/net/SocketTimeoutException;
    :try_start_3
    iget-boolean v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    if-eqz v4, :cond_3

    .line 234
    const-string v4, "DirectTcpConnectionImpl"

    const-string v5, "Reader - exception - exit"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->this$0:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    iget-object v4, v4, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    const/4 v5, 0x5

    invoke-interface {v4, v0, v5}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;->onException(Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    :cond_3
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 263
    iput-boolean v6, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    goto :goto_1

    .line 239
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, e:Ljava/io/InterruptedIOException;
    :try_start_4
    iget-boolean v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    if-eqz v4, :cond_4

    .line 241
    const-string v4, "DirectTcpConnectionImpl"

    const-string v5, "Reader - exception - exit"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->this$0:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    iget-object v4, v4, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    const/4 v5, 0x5

    invoke-interface {v4, v0, v5}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;->onException(Ljava/lang/Exception;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 262
    :cond_4
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 263
    iput-boolean v6, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    goto :goto_1

    .line 246
    .end local v0           #e:Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v0

    .line 248
    .local v0, e:Ljava/io/EOFException;
    :try_start_5
    iget-boolean v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    if-eqz v4, :cond_5

    .line 249
    const-string v4, "DirectTcpConnectionImpl"

    const-string v5, "Reader - exception - exit"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->this$0:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    iget-object v4, v4, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    const/4 v5, 0x5

    invoke-interface {v4, v0, v5}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;->onException(Ljava/lang/Exception;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    :cond_5
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 263
    iput-boolean v6, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    goto :goto_1

    .line 254
    .end local v0           #e:Ljava/io/EOFException;
    :catch_3
    move-exception v0

    .line 255
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    iget-boolean v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    if-eqz v4, :cond_6

    .line 256
    const-string v4, "DirectTcpConnectionImpl"

    const-string v5, "Reader - exception - exit"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->this$0:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    iget-object v4, v4, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    const/4 v5, 0x5

    invoke-interface {v4, v0, v5}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;->onException(Ljava/lang/Exception;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 262
    :cond_6
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 263
    iput-boolean v6, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    goto/16 :goto_1

    .line 262
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 263
    iput-boolean v6, p0, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl$ReaderRunnable;->mRunning:Z

    throw v4
.end method
