.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;


# static fields
.field private static final UPLOAD_ALL_THROWABLES:I = -0x1

.field private static maxThrowablePerDay:I

.field private static resetThrowableCounterTimestamp:J

.field private static throwableCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->maxThrowablePerDay:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->log(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 5

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->skipLog()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/LogserviceMessageTypes;->LOG_EXCEPTION_PROTO:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->addLong(IJ)V

    if-eqz p0, :cond_2

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    :cond_2
    const/16 v1, 0x15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v1, 0x16

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;

    const-string v3, "g:log:ex"

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;

    invoke-direct {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->setListener(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;)V

    invoke-virtual {v1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static logImmediate(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->log(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static declared-synchronized setMaxUploadPerDay(I)V
    .locals 2

    const-class v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->maxThrowablePerDay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized skipLog()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-class v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->maxThrowablePerDay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v1, v5

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->resetThrowableCounterTimestamp:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    sput-wide v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->resetThrowableCounterTimestamp:J

    const/4 v1, 0x1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->throwableCounter:I

    move v1, v5

    goto :goto_0

    :cond_1
    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->throwableCounter:I

    sget v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->maxThrowablePerDay:I

    if-ge v1, v2, :cond_2

    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->throwableCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/ExceptionLogService;->throwableCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public requestCompleted(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    .locals 0

    return-void
.end method

.method public requestFailed(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
