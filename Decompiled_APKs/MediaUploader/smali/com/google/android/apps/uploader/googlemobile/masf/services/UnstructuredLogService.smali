.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/UnstructuredLogService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/LogserviceMessageTypes;->LOG_DATA_PROTO:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setLong(IJ)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/apps/uploader/googlemobile/masf/services/LogserviceMessageTypes;->LOG_DATA_PROTO:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertProtoBuf(IILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;

    const-string v3, "g:log:u"

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/UnstructuredLogService;

    invoke-direct {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/UnstructuredLogService;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->setListener(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;)V

    invoke-virtual {v1, v0, v5}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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
