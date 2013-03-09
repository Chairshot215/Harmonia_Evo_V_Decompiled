.class Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;
.super Lcom/google/android/apps/uploader/googlemobile/common/async/AbstractRequest;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncHttpRequestImpl"
.end annotation


# static fields
.field private static final WATCHDOG_DELAY:J = 0x4e20L


# instance fields
.field private connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

.field private factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

.field private method:Ljava/lang/String;

.field private payload:Ljava/io/InputStream;

.field private responseCode:I

.field private responseLength:J

.field private responseStream:Ljava/io/DataInputStream;

.field private responseType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private watchdogDelay:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AbstractRequest;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    return-void
.end method

.method private static debugResponseHeaders(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeConnection(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V

    invoke-super {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AbstractRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseLength()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseStream()Ljava/io/DataInputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWatchdogDelay()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->getTaskRunner()Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$000(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;

    invoke-direct {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;)V

    invoke-virtual {v1, p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->setRequest(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getWatchdogDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->setDelay(J)V

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->schedule()V

    const/4 v0, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyRunning()V

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->createHttpConnection(Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;
    invoke-static {v3, v4, v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$100(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    const-string v3, "Content-Type"

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payload:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payload:Ljava/io/InputStream;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    invoke-static {v3, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    :cond_2
    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v0

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v3

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v6

    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->debugResponseHeaders(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;
    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->registerNetworkSuccess(Z)Z

    :goto_0
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    if-ne v2, v8, :cond_3

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I

    iput-wide v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J

    iput-object v5, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyCompleted()V

    :cond_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;
    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->notifyFailure()V

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    if-ne v2, v8, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_9
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    throw v0

    :cond_6
    :try_start_a
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;
    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->notifyFailure()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
.end method

.method public declared-synchronized setContentType(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMethod(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(Ljava/io/InputStream;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payload:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWatchdogDelay(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->setTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$300(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z

    return-void
.end method

.method public declared-synchronized watchdogFired()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/async/WatchdogException;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/WatchdogException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
