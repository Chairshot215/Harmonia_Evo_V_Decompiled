.class Lcom/google/android/common/http/TestHttpServer$WorkerThread;
.super Ljava/lang/Thread;
.source "TestHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/TestHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkerThread"
.end annotation


# instance fields
.field private final conn:Lorg/apache/http/HttpServerConnection;

.field private final httpservice:Lorg/apache/http/protocol/HttpService;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V
    .locals 0
    .parameter "httpservice"
    .parameter "conn"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    .line 192
    iput-object p2, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    .line 193
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 196
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 198
    .local v0, context:Lorg/apache/http/protocol/HttpContext;
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    iget-object v3, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-virtual {v2, v3, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    .line 208
    :try_start_1
    iget-object v2, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 211
    :goto_1
    return-void

    .line 202
    :catch_1
    move-exception v1

    .line 203
    .local v1, ex:Ljava/io/IOException;
    :try_start_2
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :try_start_3
    iget-object v2, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 209
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_1

    .line 204
    :catch_3
    move-exception v1

    .line 205
    .local v1, ex:Lorg/apache/http/HttpException;
    :try_start_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecoverable HTTP protocol violation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    :try_start_5
    iget-object v2, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 207
    .end local v1           #ex:Lorg/apache/http/HttpException;
    :catchall_0
    move-exception v2

    .line 208
    :try_start_6
    iget-object v3, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v3}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 207
    :goto_2
    throw v2

    .line 208
    :cond_0
    :try_start_7
    iget-object v2, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 209
    :catch_4
    move-exception v3

    goto :goto_2
.end method
