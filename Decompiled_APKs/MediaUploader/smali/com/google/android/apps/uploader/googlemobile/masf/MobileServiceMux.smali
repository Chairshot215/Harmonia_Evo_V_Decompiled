.class public Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;
.super Lcom/google/android/apps/uploader/googlemobile/common/io/BaseHttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;,
        Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$Listener;
    }
.end annotation


# static fields
.field public static final CONTENT_LOCATION:Ljava/lang/String; = "Content-Location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/binary"

.field private static final DEFAULT_HARD_DELAY:J = 0x64L

.field private static final DEFAULT_SOFT_DELAY:J = 0xaL

.field private static final MAX_CONNECTIONS:I = 0x3

.field public static final MAX_REQUEST_LENGTH:I = 0x8000

.field private static final NUM_WORKER_THREADS:I = 0x1

.field private static final RESPONSE_CACHE_SIZE:I = 0x8

.field public static final STATUS_CODE_SUBREQUEST_TIMED_OUT:I = 0x226

.field public static final STATUS_HEADER:Ljava/lang/String; = "X-Masf-Response-Code"

.field static mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

.field private static workerTimeout:I


# instance fields
.field asyncFactory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

.field bytesReceived:I

.field bytesSent:I

.field connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

.field flushTask:Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

.field hardDeadline:J

.field final hardDelay:J

.field headerRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;

.field listeners:Ljava/util/Vector;

.field mutex:Ljava/lang/Object;

.field nextFlush:J

.field private preEmptQueue:Ljava/util/Hashtable;

.field requestId:I

.field requestQueue:Ljava/util/Vector;

.field requireEndToEndSecure:Z

.field private responseCache:Lcom/google/android/apps/uploader/googlemobile/masf/OneTimeCache;

.field resumeService:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;

.field serverAddress:Ljava/lang/String;

.field final softDelay:J

.field taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4e20

    sput v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->workerTimeout:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/BaseHttpConnectionFactory;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requestQueue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requestId:I

    iput v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->bytesSent:I

    iput v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->bytesReceived:I

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->softDelay:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->hardDelay:J

    iput-boolean v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requireEndToEndSecure:Z

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;

    const-string v5, "g"

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->headerRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    invoke-direct {v2}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    const-string v1, "MobileServiceMux TaskRunner"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->start()V

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getConnectionFactory()Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->serverAddress:Ljava/lang/String;

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    const-string v4, "MobileServiceMux AsyncHttpRequestFactory"

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->asyncFactory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->asyncFactory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->start()V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/WindowResumeService;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->headerRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/WindowResumeService;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->resumeService:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/OneTimeCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/OneTimeCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->responseCache:Lcom/google/android/apps/uploader/googlemobile/masf/OneTimeCache;

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->flushTask:Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->processRequests()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->preEmptQueue:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->errorRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->handleResponses(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->disposeRequests([Ljava/lang/Object;)V

    return-void
.end method

.method public static deInitialize()V
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->asyncFactory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->asyncFactory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->stop()V

    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->stop()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    :cond_2
    return-void
.end method

.method private disposeRequests([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object p0, p1, v0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->dispose()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private errorRequests([Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object p0, p1, v0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->getListener()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;->requestFailed(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getListeners()[Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$Listener;
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$Listener;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    return-object v0
.end method

.method private handleResponse(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->getListener()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;->requestCompleted(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->notifyRequestComplete(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->bufferAndDetach()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->bufferAndDetach()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->bufferAndDetach()V

    throw v0
.end method

.method private handleResponses(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;[Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-interface {p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->getResponseCode()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->getResponseType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->hasException()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->getException()Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->notifyConnectionDisallowed([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->notifyConnectionDisallowed([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x1f6

    if-ne v1, v3, :cond_4

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/ConnectionException;

    invoke-direct {v2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/ConnectionException;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_5

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/ConnectionException;

    invoke-direct {v2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/ConnectionException;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->errorRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->notifyNetworkError(I)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    const-string v1, "application/binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad content-type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_7
    :try_start_0
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->bytesReceived:I

    int-to-long v1, v1

    invoke-interface {p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->getResponseLength()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->bytesReceived:I

    invoke-interface {p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->getResponseStream()Ljava/io/DataInputStream;

    move-result-object v1

    new-instance v4, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;

    invoke-direct {v4, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;-><init>(Ljava/io/DataInputStream;)V

    move v5, v8

    :goto_1
    array-length v1, p2

    if-ge v5, v1, :cond_b

    invoke-virtual {v4}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->getNextResponse()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

    move-result-object v3

    if-eqz v3, :cond_b

    move v2, v8

    :goto_2
    array-length v1, p2

    if-ge v2, v1, :cond_d

    aget-object v1, p2, v2

    check-cast v1, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->getId()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getId()I

    move-result v7

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    aput-object v6, p2, v2

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_a

    instance-of v1, v3, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;

    if-eqz v1, :cond_c

    instance-of v1, v2, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;

    if-eqz v1, :cond_c

    move-object v0, v2

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;

    move-object v1, v0

    check-cast v3, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->removeExtraResponses(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;)Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getStatusCode()I

    move-result v3

    const/16 v6, 0x226

    if-ne v3, v6, :cond_9

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->bufferAndDetach()V

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/ConnectionException;

    invoke-direct {v1, v3}, Lcom/google/android/apps/uploader/googlemobile/masf/ConnectionException;-><init>(I)V

    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V

    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_9
    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->handleResponse(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_a
    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getStreamLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->bufferAndDetach()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_b
    :try_start_5
    invoke-virtual {v4}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/ProtocolReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_6

    :cond_c
    move-object v1, v3

    goto :goto_4

    :cond_d
    move-object v2, v9

    goto/16 :goto_3
.end method

.method public static declared-synchronized initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v6, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mux:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-class v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    monitor-enter v0

    :try_start_0
    sput p5, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->workerTimeout:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized nextRequestId()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyConnectionDisallowed([Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Connection disallowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->errorRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->notifyNetworkError(I)V

    return-void
.end method

.method private notifyNetworkError(I)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getListeners()[Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$Listener;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$Listener;->onNetworkError(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyRequestComplete(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getListeners()[Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$Listener;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$Listener;->onRequestComplete(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processRequests()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->processRequests([Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private processRequests([Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;)V
    .locals 8

    :try_start_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->headerRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;->getStreamLength()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    move v5, v1

    :goto_0
    array-length v1, p1

    if-ge v4, v1, :cond_2

    aget-object v2, p1, v4

    instance-of v1, v2, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->responseCache:Lcom/google/android/apps/uploader/googlemobile/masf/OneTimeCache;

    invoke-virtual {v7, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/OneTimeCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    :try_start_2
    aput-object v6, p1, v4

    check-cast v1, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->handleResponse(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v5

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextRequestId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->setId(I)V

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->getStreamLength()I

    move-result v1

    add-int/2addr v1, v5

    const v6, 0x8000

    if-le v1, v6, :cond_3

    invoke-direct {p0, v3}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->sendRequests(Ljava/util/Vector;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->headerRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;->getStreamLength()I

    move-result v1

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    :goto_3
    const/4 v5, 0x0

    aput-object v5, p1, v4

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->getStreamLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->sendRequests(Ljava/util/Vector;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_3
.end method

.method private removeExtraResponses(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;)Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;
    .locals 10

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/SimpleRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->getRoot()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;-><init>(IILcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;)V

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->getBodyParts()[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    move-result-object v5

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, v5

    if-ge v6, v0, :cond_2

    aget-object v7, v5, v6

    invoke-virtual {v7}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;->getProperties()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "Content-Location"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;->getProperties()Ljava/util/Hashtable;

    move-result-object v1

    const-string v8, "X-Masf-Response-Code"

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->getId()I

    move-result v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v8, v9, v1, v7}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;-><init>(IILcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;)V

    invoke-virtual {v4, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v7}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;->addBodyPart(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v7}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;->addBodyPart(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v2

    :goto_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;

    iget-object v6, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->responseCache:Lcom/google/android/apps/uploader/googlemobile/masf/OneTimeCache;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;->toMultipartResponse()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/OneTimeCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponseBuilder;->toMultipartResponse()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;

    move-result-object v0

    return-object v0
.end method

.method private requeueRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->shouldRetry()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->getRetryTimeout()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;JZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->getListener()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;->requestFailed(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private requeueRequests([Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requeueRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    aput-object v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scheduleFlush()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextFlush:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const-wide/16 v4, 0x64

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->hardDeadline:J

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextFlush:J

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->flushTask:Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    iget-wide v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->setDeadline(J)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->flushTask:Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->schedule()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->hardDeadline:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextFlush:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextFlush:J

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->hardDeadline:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->hardDeadline:J

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextFlush:J

    goto :goto_0
.end method

.method private sendRequests(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->asyncFactory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->serverAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->createAsyncHttpRequest(Ljava/lang/String;)Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;

    move-result-object v2

    const-string v3, "POST"

    invoke-interface {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->setMethod(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->headerRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;

    invoke-virtual {v4}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HeaderRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;

    invoke-direct {v5, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-interface {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->setPayload(Ljava/io/InputStream;)V

    sget v3, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->workerTimeout:I

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->setWatchdogDelay(J)V

    const-string v3, "application/binary"

    invoke-interface {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->setContentType(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    new-instance v5, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;

    invoke-direct {v5, p0, v2, v1, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;I)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->submit(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->resumeService:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->cancelRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V

    return-void
.end method

.method public createConnection(Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public disposeResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->resumeService:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->disposeRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V

    return-void
.end method

.method public flushRequests()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->processRequests()V

    return-void
.end method

.method public getBytesReceived()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->bytesReceived:I

    return v0
.end method

.method public getBytesSent()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->bytesSent:I

    return v0
.end method

.method public getNetworkWorkedThisSession()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->getNetworkWorkedThisSession()Z

    move-result v0

    return v0
.end method

.method public getResumableChunkSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->resumeService:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->getChunkSize()I

    move-result v0

    return v0
.end method

.method public isEndToEndSecure()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requireEndToEndSecure:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHttps()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->serverAddress:Ljava/lang/String;

    const-string v1, "https:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->isNetworkAvailable()I

    move-result v0

    return v0
.end method

.method public declared-synchronized peekRequestId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized requireEndToEndSecure(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->isHttps()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "End to end secure not possible: not https"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requireEndToEndSecure:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setResumableChunkSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->resumeService:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->setChunkSize(I)V

    return-void
.end method

.method public submitPreemptableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;JZLjava/lang/String;)V
    .locals 4

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;

    invoke-direct {v1, p0, p1, p5, p4}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/String;Z)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->preEmptQueue:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->preEmptQueue:Ljava/util/Hashtable;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->preEmptQueue:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->preEmptQueue:Ljava/util/Hashtable;

    invoke-virtual {v0, p5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->cancel()I

    :cond_1
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-direct {v0, v3, v1}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->preEmptQueue:Ljava/util/Hashtable;

    invoke-virtual {v1, p5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->setDelay(J)V

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->schedule()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V

    return-void
.end method

.method public submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;J)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;JZ)V

    return-void
.end method

.method public submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;JZ)V
    .locals 3

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$2;

    invoke-direct {v0, p0, p1, p4}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$2;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->setDelay(J)V

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->schedule()V

    return-void
.end method

.method public submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->scheduleFlush()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public submitResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->resumeService:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V

    return-void
.end method
