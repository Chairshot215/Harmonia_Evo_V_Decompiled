.class public Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;
.super Ljava/lang/Object;
.source "SpeechServiceHttpClient.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;


# instance fields
.field private mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private mHttpClient:Landroid/net/http/AndroidHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 56
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    .line 59
    .local v1, helper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/Utils;->buildUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 60
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getNetworkTimeout()I

    move-result v0

    .line 61
    .local v0, connectionTimeoutMillis:I
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 62
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 63
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v2}, Lcom/google/protos/speech/service/SpeechService;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 64
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 65
    return-void
.end method

.method private addMultiProto(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 144
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "multiproto"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private post(Ljava/lang/String;[B)Ljava/io/InputStream;
    .locals 9
    .parameter "speechServerUrl"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 155
    .local v1, entity:Lorg/apache/http/entity/ByteArrayEntity;
    const-string v6, "application/octet-stream"

    invoke-virtual {v1, v6}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 161
    iget-object v6, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v6, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 162
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 163
    .local v5, statusCode:I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 164
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 165
    .local v4, responseStream:Ljava/io/InputStream;
    return-object v4

    .line 167
    .end local v4           #responseStream:Ljava/io/InputStream;
    :cond_0
    new-instance v6, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "POST failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v7, "POST failed"

    invoke-direct {v6, v7, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private readMessage(Ljava/io/DataInputStream;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 138
    .local v2, length:I
    new-array v0, v2, [B

    .line 139
    .local v0, buf:[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 140
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v3

    .end local v0           #buf:[B
    .end local v2           #length:I
    :goto_0
    return-object v3

    .line 134
    :catch_0
    move-exception v1

    .line 136
    .local v1, ex:Ljava/io/EOFException;
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "SpeechServiceHttpClient"

    const-string v1, "Closing the HTTP client."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 184
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 187
    :cond_0
    return-void
.end method

.method public post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 5
    .parameter "p"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechServerUrl()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Ljava/lang/String;[B)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 81
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 84
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "SpeechServiceHttpClient"

    const-string v4, "Exception occured while posting a message over HTTP"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    new-instance v3, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v4, "Error encoding message"

    invoke-direct {v3, v4, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "p"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 92
    .local p2, messages:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .parameter "serverUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 97
    .local p2, messages:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 98
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "No messages"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 101
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v6, out:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 104
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    .line 107
    .local v5, message:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    invoke-virtual {v5}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->toByteArray()[B

    move-result-object v1

    .line 108
    .local v1, data:[B
    array-length v10, v1

    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 109
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v1           #data:[B
    .end local v5           #message:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->addMultiProto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, url:Ljava/lang/String;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v8, responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$ResponseMessage;>;"
    :goto_1
    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->readMessage(Ljava/io/DataInputStream;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v7

    .local v7, responseMessage:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    if-eqz v7, :cond_2

    .line 119
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 123
    .end local v7           #responseMessage:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .end local v8           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$ResponseMessage;>;"
    :catchall_0
    move-exception v10

    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    throw v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #i:I
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v6           #out:Ljava/io/DataOutputStream;
    .end local v9           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 126
    .local v2, ex:Ljava/io/IOException;
    new-instance v10, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v11, "Error encoding message"

    invoke-direct {v10, v11, v2}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 123
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #i:I
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v6       #out:Ljava/io/DataOutputStream;
    .restart local v7       #responseMessage:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .restart local v8       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$ResponseMessage;>;"
    .restart local v9       #url:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v8
.end method
