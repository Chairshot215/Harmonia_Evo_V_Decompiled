.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.super Ljava/lang/Object;
.source "DataRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;
    }
.end annotation


# static fields
.field public static final MAX_WORKER_THREAD_COUNT:I

.field private static volatile instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private static requestId:I


# instance fields
.field protected volatile active:Z

.field protected bytesReceived:I

.field protected bytesSent:I

.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field protected connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

.field protected cookie:J

.field protected final debug:Z

.field protected final defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

.field protected final distributionChannel:Ljava/lang/String;

.field private errorRetryTime:J

.field private firstConnectionErrorTime:J

.field protected globalSpecialUrlArguments:Ljava/lang/String;

.field private volatile lastActiveTime:J

.field private lastException:Ljava/lang/Throwable;

.field private lastExceptionTime:J

.field private volatile lastSuccessTime:J

.field private final listeners:Ljava/util/Vector;

.field private maxNetworkErrorRetryTimeout:J

.field protected volatile mockLostDataConnection:Z

.field private volatile networkErrorMode:Z

.field private volatile networkSpeedBytesPerSecond:I

.field protected final platformID:Ljava/lang/String;

.field protected final properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field protected volatile serverAddress:Ljava/lang/String;

.field protected final softwareVersion:Ljava/lang/String;

.field private volatile suspendCount:I

.field protected thirdPartyServers:Ljava/util/Vector;

.field private final threadDispatchLock:Ljava/lang/Object;

.field protected warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

.field private volatile workerForegroundThreadCount:I

.field private volatile workerSubmissionThreadCount:I

.field private volatile workerThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    const/4 v0, 0x4

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->MAX_WORKER_THREAD_COUNT:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    iput-object p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    iput-boolean p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-direct {v0, p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/common/Clock;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Ljava/util/Vector;B)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->loadOrRequestCookie()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->CLIENT_PROPERTIES_REQUEST_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-void
.end method

.method static synthetic access$1002(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$308(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    return v0
.end method

.method static synthetic access$310(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    return v0
.end method

.method static synthetic access$408(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    return v0
.end method

.method static synthetic access$410(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    return v0
.end method

.method static synthetic access$508(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    return v0
.end method

.method static synthetic access$510(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    return v0
.end method

.method static synthetic access$602(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    return-object v0
.end method

.method static synthetic access$800(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)J
    .locals 2

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    return-wide v0
.end method

.method static synthetic access$900(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clearNetworkError()V

    return-void
.end method

.method private addClientPropertiesRequest(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x3e

    invoke-virtual {p2, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    instance-of v2, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private declared-synchronized clearNetworkError()V
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_0
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static containsForegroundRequest(Ljava/util/Vector;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static containsSubmissionRequest(Ljava/util/Vector;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isSubmission()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 7

    const-class v6, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    monitor-enter v6

    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->setLogSaver(Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;)V

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v0
.end method

.method public static getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    return-object v0
.end method

.method private handleError(ILjava/lang/Throwable;)V
    .locals 5

    const-wide/16 v3, 0x7d0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastException:Ljava/lang/Throwable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastExceptionTime:J

    if-eqz p2, :cond_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->notifyFailure()V

    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    if-nez v1, :cond_5

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->usingMDS()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x4

    :cond_2
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_6

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    :goto_1
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    iget-wide v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    :try_start_2
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static saveCookie(J)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v3

    const-string v4, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->savePreferences()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .locals 5

    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->mockLostDataConnection:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    goto :goto_1
.end method

.method public declared-synchronized addDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
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

.method public final addSimpleRequest(I[BZZ)V
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZ)V

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    return-void
.end method

.method public declared-synchronized canDispatchNow()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->MAX_WORKER_THREAD_COUNT:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorkedThisSession()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x17

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addClientPropertiesRequest(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    iget-byte v0, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    if-nez v0, :cond_1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-interface {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->writeRequestData(Ljava/io/DataOutput;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-byte v0, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public declared-synchronized isSuspended()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->suspendCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadOrRequestCookie()J
    .locals 5

    const/4 v4, 0x0

    const-string v2, "SessionID"

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "SessionID"

    invoke-interface {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :cond_0
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;

    invoke-direct {v2, p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V

    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected final maybeNotifyNetworkError(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    if-nez v2, :cond_1

    const-string v1, "DRD: in Error Mode"

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected notifyComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .locals 3

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;->onComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyNetworkError(IZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;->onNetworkError(IZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processDataRequest(Ljava/io/DataInput;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->readResponseData(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_1

    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public declared-synchronized removeDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetConnectionFactory()V
    .locals 1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    return-void
.end method

.method protected serviceRequests(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->onStartServiceRequests(Ljava/lang/Object;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->urlArguments(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    new-instance v12, Ljava/lang/StringBuffer;

    const-string v3, "DRD"

    invoke-direct {v12, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "("

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget v4, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    add-int/lit8 v6, v4, 0x1

    sput v6, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_0

    const-string v3, "|"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverAddress:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v4, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    :try_start_1
    const-string v4, "Content-Type"

    const-string v9, "application/binary"

    invoke-interface {v11, v4, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v4, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v10

    :try_start_2
    invoke-virtual {v10, v3}, Ljava/io/DataOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    array-length v3, v3

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v9

    :try_start_3
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v7

    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v5

    const-string v4, ", "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v15, 0x3e8

    cmp-long v4, v13, v15

    if-gez v4, :cond_6

    const-string v4, "<1s"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/16 v4, 0x1f5

    if-ne v7, v4, :cond_b

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    if-eqz v9, :cond_2

    :try_start_4
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    :try_start_5
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    :try_start_6
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_4
    :goto_4
    const/4 v3, 0x0

    move v4, v3

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_22

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :cond_6
    const-wide/16 v15, 0x3e8

    :try_start_7
    div-long v15, v13, v15

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, "s"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v4, v3

    move-object v5, v10

    move-object v6, v11

    move-object v3, v9

    :goto_6
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    :try_start_9
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_8
    :goto_8
    if-eqz v6, :cond_9

    :try_start_a
    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_9
    :goto_9
    const/4 v3, 0x0

    move v5, v3

    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v5, v3, :cond_21

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v6

    if-nez v6, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_a

    :cond_b
    const/16 v4, 0xc8

    if-eq v7, v4, :cond_f

    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad Response Code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    const/16 v3, 0x1f4

    if-ne v7, v3, :cond_e

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v3, "Server 500 for request types: "

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->onServerFailure()V

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_c

    const/16 v3, 0x2c

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_b

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    :cond_e
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad HTTP response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    const-string v4, "application/binary"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad HTTP content type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad HTTP content type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_10
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v3

    long-to-int v15, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    add-int/2addr v3, v15

    move-object/from16 v0, p0

    iput v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_15

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    if-eqz v9, :cond_11

    :try_start_c
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_11
    :goto_c
    if-eqz v10, :cond_12

    :try_start_d
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_12
    :goto_d
    if-eqz v11, :cond_13

    :try_start_e
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_13
    :goto_e
    const/4 v3, 0x0

    move v4, v3

    :goto_f
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_22

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_f

    :cond_15
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_1a

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->processDataRequest(Ljava/io/DataInput;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_10

    :catch_0
    move-exception v5

    :try_start_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    if-eqz v6, :cond_16

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException processing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_16
    instance-of v6, v5, Ljava/io/EOFException;

    if-eqz v6, :cond_17

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->onServerFailure()V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    if-eqz v6, :cond_17

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No server support for data request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v6

    const/4 v7, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    :cond_17
    const/4 v3, 0x0

    :goto_11
    if-ge v3, v4, :cond_18

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_18
    throw v5

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RuntimeException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    if-eqz v5, :cond_19

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuntimeException processing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_19
    throw v4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    long-to-int v8, v3

    const/16 v3, 0x16

    const-string v4, "fb"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    const/16 v3, 0x16

    const-string v4, "lb"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    long-to-int v7, v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->onFinishServiceRequests(Ljava/lang/Object;JII)V

    const/16 v3, 0x2000

    if-lt v15, v3, :cond_1b

    int-to-long v3, v8

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1b

    mul-int/lit16 v3, v15, 0x3e8

    div-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    :cond_1b
    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3e8

    if-ge v15, v3, :cond_20

    const-string v3, "<1kb"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_12
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    if-eqz v9, :cond_1c

    :try_start_12
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    :cond_1c
    :goto_13
    if-eqz v10, :cond_1d

    :try_start_13
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_1d
    :goto_14
    if-eqz v11, :cond_1e

    :try_start_14
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    :cond_1e
    :goto_15
    const/4 v3, 0x0

    move v4, v3

    :goto_16
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_22

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_1f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_16

    :cond_20
    :try_start_15
    div-int/lit16 v3, v15, 0x3e8

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_12

    :cond_21
    throw v4

    :cond_22
    return-void

    :catch_2
    move-exception v3

    goto/16 :goto_7

    :catch_3
    move-exception v3

    goto/16 :goto_8

    :catch_4
    move-exception v3

    goto/16 :goto_9

    :catch_5
    move-exception v3

    goto/16 :goto_2

    :catch_6
    move-exception v3

    goto/16 :goto_3

    :catch_7
    move-exception v3

    goto/16 :goto_4

    :catch_8
    move-exception v3

    goto/16 :goto_c

    :catch_9
    move-exception v3

    goto/16 :goto_d

    :catch_a
    move-exception v3

    goto/16 :goto_e

    :catch_b
    move-exception v3

    goto :goto_13

    :catch_c
    move-exception v3

    goto :goto_14

    :catch_d
    move-exception v3

    goto :goto_15

    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v5, v8

    move-object v6, v9

    move-object v3, v7

    goto/16 :goto_6

    :catchall_2
    move-exception v3

    move-object v4, v3

    move-object v5, v8

    move-object v6, v11

    move-object v3, v7

    goto/16 :goto_6

    :catchall_3
    move-exception v3

    move-object v4, v3

    move-object v5, v10

    move-object v6, v11

    move-object v3, v7

    goto/16 :goto_6
.end method

.method public setAndroidLoggingId2(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setAndroidMapKey(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setAndroidSignature(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    return-void
.end method

.method protected declared-synchronized snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    return-void
.end method

.method protected urlArguments(Ljava/util/Vector;)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "?"

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&"

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    instance-of v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;

    if-eqz v4, :cond_1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;->getParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_3
    return-object v0
.end method
