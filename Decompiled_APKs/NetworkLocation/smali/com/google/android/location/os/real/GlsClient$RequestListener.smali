.class Lcom/google/android/location/os/real/GlsClient$RequestListener;
.super Ljava/lang/Object;
.source "GlsClient.java"

# interfaces
.implements Lcom/google/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/os/real/GlsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestListener"
.end annotation


# instance fields
.field private multipartRequest:Lcom/google/masf/protocol/Request;

.field private final query:Z

.field private final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/location/os/real/GlsClient;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/GlsClient;Z)V
    .locals 2
    .parameter
    .parameter "query"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->this$0:Lcom/google/android/location/os/real/GlsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-boolean p2, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->query:Z

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlsClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "-query"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->tag:Ljava/lang/String;

    .line 320
    return-void

    .line 319
    :cond_0
    const-string v0, "-upload"

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized requestCompleted(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V
    .locals 6
    .parameter "request"
    .parameter "response"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->multipartRequest:Lcom/google/masf/protocol/Request;

    if-eq p1, v4, :cond_0

    .line 364
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Response to unexpected request."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 366
    :cond_0
    const/4 v2, 0x0

    .line 368
    .local v2, protoResponse:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz p2, :cond_1

    .line 369
    :try_start_1
    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 370
    .local v1, is:Ljava/io/InputStream;
    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 371
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    .end local v2           #protoResponse:Lcom/google/common/io/protocol/ProtoBuf;
    .local v3, protoResponse:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_2
    invoke-virtual {v3, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 373
    #calls: Lcom/google/android/location/os/real/GlsClient;->extractPlatformKey(Lcom/google/common/io/protocol/ProtoBuf;)V
    invoke-static {v3}, Lcom/google/android/location/os/real/GlsClient;->access$400(Lcom/google/common/io/protocol/ProtoBuf;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    .line 379
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #protoResponse:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v2       #protoResponse:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    :goto_0
    :try_start_3
    iget-boolean v4, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->query:Z

    if-eqz v4, :cond_2

    .line 380
    iget-object v4, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->this$0:Lcom/google/android/location/os/real/GlsClient;

    #getter for: Lcom/google/android/location/os/real/GlsClient;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;
    invoke-static {v4}, Lcom/google/android/location/os/real/GlsClient;->access$300(Lcom/google/android/location/os/real/GlsClient;)Lcom/google/android/location/os/real/CallbackRunner;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/location/os/real/CallbackRunner;->glsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 382
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->multipartRequest:Lcom/google/masf/protocol/Request;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->tag:Ljava/lang/String;

    const-string v5, "requestCompleted()"

    invoke-static {v4, v5, v0}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 376
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #protoResponse:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #protoResponse:Lcom/google/common/io/protocol/ProtoBuf;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #protoResponse:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v2       #protoResponse:Lcom/google/common/io/protocol/ProtoBuf;
    goto :goto_1
.end method

.method public declared-synchronized requestFailed(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->multipartRequest:Lcom/google/masf/protocol/Request;

    if-eq p1, v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response to unexpected request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 390
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->query:Z

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->this$0:Lcom/google/android/location/os/real/GlsClient;

    #getter for: Lcom/google/android/location/os/real/GlsClient;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;
    invoke-static {v0}, Lcom/google/android/location/os/real/GlsClient;->access$300(Lcom/google/android/location/os/real/GlsClient;)Lcom/google/android/location/os/real/CallbackRunner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/CallbackRunner;->glsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 393
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->multipartRequest:Lcom/google/masf/protocol/Request;

    .line 394
    iget-object v0, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->tag:Ljava/lang/String;

    const-string v1, "requestFailed"

    invoke-static {v0, v1, p2}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    monitor-exit p0

    return-void
.end method

.method declared-synchronized sendRpc(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 9
    .parameter "request"
    .parameter "cellularPlatformProfile"

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->multipartRequest:Lcom/google/masf/protocol/Request;

    if-eqz v5, :cond_0

    .line 324
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Gls request still outstanding."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 327
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    #calls: Lcom/google/android/location/os/real/GlsClient;->createPlatformProfile(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v6, p2}, Lcom/google/android/location/os/real/GlsClient;->access$000(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 329
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 330
    .local v3, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->this$0:Lcom/google/android/location/os/real/GlsClient;

    #calls: Lcom/google/android/location/os/real/GlsClient;->generateDebugInfo()Z
    invoke-static {v5}, Lcom/google/android/location/os/real/GlsClient;->access$100(Lcom/google/android/location/os/real/GlsClient;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 331
    const/16 v5, 0x63

    invoke-virtual {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 332
    .local v0, debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v0           #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v5, Lcom/google/android/location/protocol/LocserverMessageTypes;->GDEBUG_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 334
    .restart local v0       #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v5, 0x63

    invoke-virtual {v3, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->this$0:Lcom/google/android/location/os/real/GlsClient;

    #calls: Lcom/google/android/location/os/real/GlsClient;->updateDebugProfileLocked(Lcom/google/common/io/protocol/ProtoBuf;)V
    invoke-static {v5, v0}, Lcom/google/android/location/os/real/GlsClient;->access$200(Lcom/google/android/location/os/real/GlsClient;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 340
    .end local v0           #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    .local v2, payload:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    :try_start_3
    new-instance v6, Lcom/google/android/location/os/real/MultipartZippedRequest;

    iget-boolean v5, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->query:Z

    if-eqz v5, :cond_4

    const-string v5, "g:loc/ql"

    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Lcom/google/android/location/os/real/MultipartZippedRequest;-><init>(Ljava/lang/String;I[B)V

    iput-object v6, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->multipartRequest:Lcom/google/masf/protocol/Request;

    .line 353
    iget-object v5, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->multipartRequest:Lcom/google/masf/protocol/Request;

    invoke-virtual {v5, p0}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    .line 354
    iget-object v5, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->multipartRequest:Lcom/google/masf/protocol/Request;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/masf/protocol/Request;->setSentCount(I)V

    .line 355
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v4

    .line 356
    .local v4, serviceMux:Lcom/google/masf/MobileServiceMux;
    iget-object v5, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->multipartRequest:Lcom/google/masf/protocol/Request;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    .end local v4           #serviceMux:Lcom/google/masf/MobileServiceMux;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v5, "GlsClient"

    const-string v6, "query(): unable to write request to payload"

    invoke-static {v5, v6, v1}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    iget-boolean v5, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->query:Z

    if-eqz v5, :cond_3

    .line 346
    iget-object v5, p0, Lcom/google/android/location/os/real/GlsClient$RequestListener;->this$0:Lcom/google/android/location/os/real/GlsClient;

    #getter for: Lcom/google/android/location/os/real/GlsClient;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;
    invoke-static {v5}, Lcom/google/android/location/os/real/GlsClient;->access$300(Lcom/google/android/location/os/real/GlsClient;)Lcom/google/android/location/os/real/CallbackRunner;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/location/os/real/CallbackRunner;->glsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_1

    .line 351
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    const-string v5, "g:loc/ul"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
