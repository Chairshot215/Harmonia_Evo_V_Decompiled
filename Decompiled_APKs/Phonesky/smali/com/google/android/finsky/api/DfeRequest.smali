.class public Lcom/google/android/finsky/api/DfeRequest;
.super Lcom/android/volley/Request;
.source "DfeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Lcom/android/volley/Request",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PROTO_DEBUG:Z


# instance fields
.field private mAllowMultipleResponses:Z

.field private final mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private mAvoidBulkCancel:Z

.field private mExtraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mResponseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResponseDelivered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    sget-boolean v0, Lcom/google/android/finsky/utils/DfeLog;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/finsky/api/DfeRequest;->DEBUG:Z

    .line 49
    const-string v0, "DfeProto"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/api/DfeRequest;->PROTO_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .parameter "url"
    .parameter "apiContext"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/DfeApiContext;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    .local p3, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TT;>;"
    const/4 v1, 0x0

    .line 82
    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 61
    iput-boolean v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAllowMultipleResponses:Z

    .line 70
    iput-boolean v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAvoidBulkCancel:Z

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "Empty DFE URL"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/DfeLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_0
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->setShouldCache(Z)V

    .line 87
    new-instance v0, Lcom/google/android/finsky/api/DfeRetryPolicy;

    invoke-direct {v0, p2}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(Lcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 88
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    .line 89
    iput-object p4, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 90
    iput-object p3, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseClass:Ljava/lang/Class;

    .line 91
    return-void

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method private handleServerCommands(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;
    .locals 4
    .parameter "wrapper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    const/4 v1, 0x0

    .line 323
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-object v1

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v0

    .line 330
    .local v0, commands:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getLogErrorStacktrace()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getClearCache()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/volley/Cache;->clear()V

    .line 339
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    new-instance v1, Lcom/google/android/finsky/api/DfeServerError;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getDisplayErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/finsky/api/DfeServerError;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    goto :goto_0
.end method

.method private logProtoResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V
    .locals 8
    .parameter

    .prologue
    .line 200
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->protoLogUrlRegexp:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-class v1, Lcom/google/android/volley/MicroProtoPrinter;

    monitor-enter v1

    .line 203
    :try_start_0
    const-string v0, "DfeProto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v0, "ResponseWrapper"

    const-class v2, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    invoke-static {v0, v2, p1}, Lcom/google/android/volley/MicroProtoPrinter;->prettyPrint(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 208
    const-string v5, "DfeProto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "| "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    monitor-exit v1

    .line 215
    :goto_1
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 212
    :cond_1
    const-string v1, "DfeProto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url does not match regexp: url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / regexp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 393
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/DfeApiContext;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 12
    .parameter "response"

    .prologue
    const-wide/16 v10, 0x0

    .line 274
    invoke-static {p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 275
    .local v1, entry:Lcom/android/volley/Cache$Entry;
    if-nez v1, :cond_0

    .line 276
    const/4 v1, 0x0

    .line 302
    .end local v1           #entry:Lcom/android/volley/Cache$Entry;
    :goto_0
    return-object v1

    .line 279
    .restart local v1       #entry:Lcom/android/volley/Cache$Entry;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 284
    .local v3, now:J
    :try_start_0
    iget-object v6, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Soft-TTL"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 285
    .local v5, softTtlHeader:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 286
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 289
    :cond_1
    iget-object v6, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Hard-TTL"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    .local v2, hardTtlHeader:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 291
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v2           #hardTtlHeader:Ljava/lang/String;
    .end local v5           #softTtlHeader:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-wide v8, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "Invalid TTL: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iput-wide v10, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 296
    iput-wide v10, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    goto :goto_1
.end method

.method private static parseWrapper(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 5
    .parameter "response"
    .parameter "manuallyUnzip"

    .prologue
    const/4 v4, 0x0

    .line 253
    if-eqz p1, :cond_0

    .line 254
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 255
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v2

    .line 268
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v2}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->parseFrom([B)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    if-nez p1, :cond_1

    .line 261
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapper(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v2

    goto :goto_0

    .line 263
    :cond_1
    const-string v2, "Cannot parse response as ResponseWrapper proto."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .end local v0           #e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 265
    :catch_1
    move-exception v0

    .line 266
    .local v0, e:Ljava/io/IOException;
    const-string v2, "IOException while manually unzipping request."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 153
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 381
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->invalidateAuthToken()V

    .line 384
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseDelivered:Z

    if-nez v0, :cond_1

    .line 385
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v0, "Not delivering error response for request=[%s], error=[%s] because response already delivered."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deliverResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 363
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v0

    const-class v1, Lcom/google/android/finsky/remoting/protos/Response$Payload;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseClass:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/volley/MicroProtoHelper;->getParsedResponseFromWrapper(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_2

    .line 366
    iget-boolean v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAllowMultipleResponses:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseDelivered:Z

    if-nez v1, :cond_1

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v1, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 368
    iput-boolean v3, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseDelivered:Z

    .line 376
    :goto_0
    return-void

    .line 370
    :cond_1
    const-string v0, "Not delivering second response for request=[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    :cond_2
    const-string v0, "Null parsed response for request=[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/DfeLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/DfeRequest;->deliverResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V

    return-void
.end method

.method public getAvoidBulkCancel()Z
    .locals 1

    .prologue
    .line 105
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mAvoidBulkCancel:Z

    return v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    invoke-super {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->makeCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 166
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/DfeApiContext;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 167
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 8

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    const/16 v4, 0x26

    const/4 v7, -0x1

    const/16 v5, 0x3f

    .line 127
    invoke-super {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, url:Ljava/lang/String;
    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->ipCountryOverride:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, overrideCountry:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ipCountryOverride="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    :cond_0
    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->mccMncOverride:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    .local v0, mccmnc:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "mccmncOverride="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    :cond_1
    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "skipCache=true"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_2
    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_7

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "showStagingData=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    :cond_3
    return-object v2

    .end local v0           #mccmnc:Ljava/lang/String;
    :cond_4
    move v3, v5

    .line 130
    goto/16 :goto_0

    .restart local v0       #mccmnc:Ljava/lang/String;
    :cond_5
    move v3, v5

    .line 135
    goto/16 :goto_1

    :cond_6
    move v3, v5

    .line 139
    goto :goto_2

    :cond_7
    move v4, v5

    .line 143
    goto :goto_3
.end method

.method public handleNotifications(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V
    .locals 3
    .parameter "wrapper"

    .prologue
    .line 351
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getNotificationManager()Lcom/google/android/finsky/api/DfeNotificationManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getNotificationCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 359
    :cond_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getNotificationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    .line 357
    .local v1, notification:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getNotificationManager()Lcom/google/android/finsky/api/DfeNotificationManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/finsky/api/DfeNotificationManager;->processNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    goto :goto_0
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 4
    .parameter "volleyError"

    .prologue
    .line 307
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    instance-of v2, p1, Lcom/android/volley/ServerError;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapper(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v1

    .line 309
    .local v1, wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    if-eqz v1, :cond_0

    .line 310
    invoke-direct {p0, v1}, Lcom/google/android/finsky/api/DfeRequest;->handleServerCommands(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;

    move-result-object v0

    .line 311
    .local v0, response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    iget-object p1, v0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    .line 314
    .end local v0           #response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    .end local v1           #wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .end local p1
    :cond_0
    return-object p1
.end method

.method public parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 9
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 175
    sget-boolean v4, Lcom/google/android/finsky/api/DfeRequest;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Response size: %d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/DfeLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    invoke-static {p1, v7}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapper(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v3

    .line 177
    .local v3, wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    if-nez v3, :cond_2

    .line 178
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    .line 196
    :cond_1
    :goto_0
    return-object v1

    .line 179
    :cond_2
    sget-boolean v4, Lcom/google/android/finsky/api/DfeRequest;->PROTO_DEBUG:Z

    if-eqz v4, :cond_3

    .line 180
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/DfeRequest;->logProtoResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V

    .line 182
    :cond_3
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/DfeRequest;->handleServerCommands(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;

    move-result-object v1

    .line 183
    .local v1, error:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    if-nez v1, :cond_1

    .line 187
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/api/DfeRequest;->handleNotifications(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V

    .line 189
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeRequest;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 190
    .local v0, cacheEntry:Lcom/android/volley/Cache$Entry;
    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {p0, v3, v0}, Lcom/google/android/finsky/api/DfeRequest;->stripForCache(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;Lcom/android/volley/Cache$Entry;)V

    .line 194
    :cond_4
    invoke-static {v3, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v2

    .line 195
    .local v2, wrappedResponse:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    const-string v4, "DFE response %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/DfeLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 196
    goto :goto_0
.end method

.method public setAllowMultipleResponses(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 119
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAllowMultipleResponses:Z

    .line 120
    return-void
.end method

.method public setAvoidBulkCancel()V
    .locals 1

    .prologue
    .line 98
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mAvoidBulkCancel:Z

    .line 99
    return-void
.end method

.method stripForCache(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;Lcom/android/volley/Cache$Entry;)V
    .locals 9
    .parameter "wrapper"
    .parameter "rootEntry"

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    const/4 v8, 0x1

    .line 221
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchCount()I

    move-result v7

    if-ge v7, v8, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getNotificationCount()I

    move-result v7

    if-ge v7, v8, :cond_0

    .line 249
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v0

    .line 228
    .local v0, cache:Lcom/android/volley/Cache;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 229
    .local v4, now:J
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    .line 230
    .local v6, prefetch:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    new-instance v1, Lcom/android/volley/Cache$Entry;

    invoke-direct {v1}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 231
    .local v1, entry:Lcom/android/volley/Cache$Entry;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v7

    iput-object v7, v1, Lcom/android/volley/Cache$Entry;->data:[B

    .line 232
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getEtag()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 233
    iget-wide v7, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iput-wide v7, v1, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 234
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getTtl()J

    move-result-wide v7

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 235
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getSoftTtl()J

    move-result-wide v7

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 236
    sget-object v7, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, fullCacheUrl:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/finsky/api/DfeRequest;->makeCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v1}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    goto :goto_1

    .line 242
    .end local v1           #entry:Lcom/android/volley/Cache$Entry;
    .end local v2           #fullCacheUrl:Ljava/lang/String;
    .end local v6           #prefetch:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->clearPreFetch()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    .line 244
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->clearCommands()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    .line 246
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->clearNotification()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    .line 248
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->toByteArray()[B

    move-result-object v7

    iput-object v7, p2, Lcom/android/volley/Cache$Entry;->data:[B

    goto :goto_0
.end method
