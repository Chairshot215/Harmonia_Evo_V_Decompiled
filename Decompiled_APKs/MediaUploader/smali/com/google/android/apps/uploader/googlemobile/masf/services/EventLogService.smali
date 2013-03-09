.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;
    }
.end annotation


# static fields
.field private static final MAX_EVENT_LOGS_RECORDED:I = 0x14

.field private static outstandingEventLogs:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNewInstanceUnitTests()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    return-void
.end method

.method public static getOutstandingEventLogs()Ljava/util/Vector;
    .locals 4

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getProtoBufType()Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;
    .locals 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/LogserviceMessageTypes;->LOG_EVENT_PROTO:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public static log(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V
    .locals 5

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->recordEventLog([B)V

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;

    const-string v3, "g:log:ev"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;

    invoke-direct {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->setListener(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static recordEventLog([B)V
    .locals 3

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;

    invoke-direct {v2, p0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

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


# virtual methods
.method public requestCompleted(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    .locals 4

    :try_start_0
    check-cast p1, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;->getPayload()[B

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    new-instance v3, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;

    invoke-direct {v3, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestFailed(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
