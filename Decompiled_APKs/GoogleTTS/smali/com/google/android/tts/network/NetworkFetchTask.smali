.class public Lcom/google/android/tts/network/NetworkFetchTask;
.super Ljava/lang/Object;
.source "NetworkFetchTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/tts/network/ByteArrayHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBuffer:[B

.field private final mCallback:Landroid/speech/tts/SynthesisCallback;

.field private final mHttpHelper:Lcom/google/android/tts/network/HttpHelper;

.field private final mRequest:Lcom/google/android/tts/GoogleTtsRequest;

.field private final mTimeout:I


# direct methods
.method public constructor <init>(Lcom/google/android/tts/GoogleTtsRequest;ILandroid/speech/tts/SynthesisCallback;Lcom/google/android/tts/network/HttpHelper;)V
    .locals 1
    .parameter "request"
    .parameter "timeout"
    .parameter "callback"
    .parameter "helper"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mBuffer:[B

    .line 32
    iput-object p1, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mRequest:Lcom/google/android/tts/GoogleTtsRequest;

    .line 33
    iput p2, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mTimeout:I

    .line 34
    iput-object p3, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mCallback:Landroid/speech/tts/SynthesisCallback;

    .line 35
    iput-object p4, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mHttpHelper:Lcom/google/android/tts/network/HttpHelper;

    .line 36
    return-void
.end method

.method private checkInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 167
    :cond_0
    return-void
.end method

.method private slurpData(Ljava/net/HttpURLConnection;)[B
    .locals 2
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 104
    .local v0, contentLength:I
    if-lez v0, :cond_0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/google/android/tts/network/NetworkFetchTask;->slurpFixedLengthData(Ljava/net/HttpURLConnection;I)[B

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/tts/network/NetworkFetchTask;->slurpUnknownLengthData(Ljava/net/HttpURLConnection;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private slurpFixedLengthData(Ljava/net/HttpURLConnection;I)[B
    .locals 6
    .parameter "connection"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 113
    new-array v3, p2, [B

    .line 115
    .local v3, response:[B
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 116
    .local v1, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 117
    .local v0, count:I
    const/4 v2, 0x0

    .line 119
    .local v2, offset:I
    :goto_0
    sub-int v4, p2, v2

    const/16 v5, 0x200

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/google/android/tts/network/NetworkFetchTask;->checkInterrupted()V

    .line 121
    add-int/2addr v2, v0

    goto :goto_0

    .line 124
    :cond_0
    return-object v3
.end method

.method private slurpUnknownLengthData(Ljava/net/HttpURLConnection;)[B
    .locals 5
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 137
    .local v2, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 139
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 140
    .local v1, count:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/google/android/tts/network/NetworkFetchTask;->checkInterrupted()V

    .line 142
    iget-object v3, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mBuffer:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private verifyAudioFormat([Lorg/apache/http/HeaderElement;)Z
    .locals 5
    .parameter "elements"

    .prologue
    const/4 v2, 0x0

    .line 149
    array-length v3, p1

    if-lez v3, :cond_0

    .line 150
    aget-object v0, p1, v2

    .line 151
    .local v0, elem:Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, format:Ljava/lang/String;
    const-string v3, "audio/speex"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const/4 v2, 0x1

    .line 158
    .end local v0           #elem:Lorg/apache/http/HeaderElement;
    .end local v1           #format:Ljava/lang/String;
    :goto_0
    return v2

    .line 157
    :cond_0
    const-string v3, "NetworkFetchTask"

    const-string v4, "Received unexpected audio format : "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public call()Lcom/google/android/tts/network/ByteArrayHolder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v6, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mHttpHelper:Lcom/google/android/tts/network/HttpHelper;

    iget-object v8, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mRequest:Lcom/google/android/tts/GoogleTtsRequest;

    iget v9, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mTimeout:I

    invoke-virtual {v6, v8, v9}, Lcom/google/android/tts/network/HttpHelper;->getConnection(Lcom/google/android/tts/GoogleTtsRequest;I)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-object v7

    .line 57
    :cond_0
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v6, "content-type"

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v6, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v3, header:Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v3}, Lorg/apache/http/message/BasicHeader;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 61
    .local v2, elements:[Lorg/apache/http/HeaderElement;
    invoke-direct {p0, v2}, Lcom/google/android/tts/network/NetworkFetchTask;->verifyAudioFormat([Lorg/apache/http/HeaderElement;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 66
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Invalid response data"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .end local v2           #elements:[Lorg/apache/http/HeaderElement;
    .end local v3           #header:Lorg/apache/http/message/BasicHeader;
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/io/IOException;
    const-string v6, "NetworkFetchTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mRequest:Lcom/google/android/tts/GoogleTtsRequest;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "I/O error during synthesis :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v6, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mCallback:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v6}, Landroid/speech/tts/SynthesisCallback;->error()V

    .line 85
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 71
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #elements:[Lorg/apache/http/HeaderElement;
    .restart local v3       #header:Lorg/apache/http/message/BasicHeader;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/tts/network/NetworkFetchTask;->checkInterrupted()V

    .line 72
    invoke-direct {p0, v0}, Lcom/google/android/tts/network/NetworkFetchTask;->slurpData(Ljava/net/HttpURLConnection;)[B

    move-result-object v5

    .line 73
    .local v5, responseBytes:[B
    if-eqz v5, :cond_2

    array-length v6, v5

    if-nez v6, :cond_3

    :cond_2
    move-object v6, v7

    :goto_1
    move-object v7, v6

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/google/android/tts/network/ByteArrayHolder;

    invoke-direct {v6, v5}, Lcom/google/android/tts/network/ByteArrayHolder;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 87
    .end local v2           #elements:[Lorg/apache/http/HeaderElement;
    .end local v3           #header:Lorg/apache/http/message/BasicHeader;
    .end local v5           #responseBytes:[B
    :catch_1
    move-exception v4

    .line 88
    .local v4, ie:Ljava/lang/InterruptedException;
    const-string v6, "NetworkFetchTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/tts/network/NetworkFetchTask;->mRequest:Lcom/google/android/tts/GoogleTtsRequest;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Interrupted while waiting for all data to be received."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/tts/network/NetworkFetchTask;->call()Lcom/google/android/tts/network/ByteArrayHolder;

    move-result-object v0

    return-object v0
.end method
