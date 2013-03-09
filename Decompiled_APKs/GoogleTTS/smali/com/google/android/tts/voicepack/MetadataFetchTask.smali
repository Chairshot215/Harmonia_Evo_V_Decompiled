.class Lcom/google/android/tts/voicepack/MetadataFetchTask;
.super Landroid/os/AsyncTask;
.source "MetadataFetchTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/google/android/tts/TtsConfig;

.field private final mContext:Landroid/content/Context;

.field private final mFetchUrl:Ljava/lang/String;

.field private final mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

.field private final mUrlRewriter:Lcom/google/android/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/tts/voicepack/MetadataManager;Lcom/google/android/tts/TtsConfig;Lcom/google/android/common/base/Function;)V
    .locals 0
    .parameter "context"
    .parameter "fetchUrl"
    .parameter "manager"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/tts/voicepack/MetadataManager;",
            "Lcom/google/android/tts/TtsConfig;",
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p5, urlRewriter:Lcom/google/android/common/base/Function;,"Lcom/google/android/common/base/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mFetchUrl:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    .line 35
    iput-object p4, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mConfig:Lcom/google/android/tts/TtsConfig;

    .line 36
    iput-object p5, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mUrlRewriter:Lcom/google/android/common/base/Function;

    .line 37
    return-void
.end method

.method private getResponseBytes(Ljava/net/URL;)[B
    .locals 4
    .parameter "url"

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, connection:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 112
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 114
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 115
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    :cond_0
    :goto_0
    return-object v2

    .line 120
    :cond_1
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 120
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 120
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v2
.end method

.method private updateMetadataFromNetwork(Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;)V
    .locals 8
    .parameter "currentMetadata"

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, fetchUrl:Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v5, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mUrlRewriter:Lcom/google/android/common/base/Function;

    iget-object v6, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mFetchUrl:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/google/android/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #fetchUrl:Ljava/net/URL;
    .local v2, fetchUrl:Ljava/net/URL;
    invoke-direct {p0, v2}, Lcom/google/android/tts/voicepack/MetadataFetchTask;->getResponseBytes(Ljava/net/URL;)[B

    move-result-object v4

    .line 80
    .local v4, responseBytes:[B
    if-nez v4, :cond_0

    move-object v1, v2

    .line 106
    .end local v2           #fetchUrl:Ljava/net/URL;
    .end local v4           #responseBytes:[B
    .restart local v1       #fetchUrl:Ljava/net/URL;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/net/MalformedURLException;
    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v1           #fetchUrl:Ljava/net/URL;
    .restart local v2       #fetchUrl:Ljava/net/URL;
    .restart local v4       #responseBytes:[B
    :cond_0
    const/4 v3, 0x0

    .line 86
    .local v3, fetched:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    :try_start_1
    invoke-static {v4}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->parseFrom([B)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 92
    if-eqz p1, :cond_1

    invoke-virtual {v3}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getRevision()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getRevision()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 93
    iget-object v5, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    invoke-virtual {v5, v3}, Lcom/google/android/tts/voicepack/MetadataManager;->writeCachedMetadata(Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    iget-object v5, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    invoke-virtual {v5, v3}, Lcom/google/android/tts/voicepack/MetadataManager;->setMetadataList(Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;)V

    :cond_1
    move-object v1, v2

    .line 106
    .end local v2           #fetchUrl:Ljava/net/URL;
    .restart local v1       #fetchUrl:Ljava/net/URL;
    goto :goto_0

    .line 87
    .end local v1           #fetchUrl:Ljava/net/URL;
    .restart local v2       #fetchUrl:Ljava/net/URL;
    :catch_1
    move-exception v0

    .line 88
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v5, "TTS.MetadataFetchTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing protobuf response : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 89
    .end local v2           #fetchUrl:Ljava/net/URL;
    .restart local v1       #fetchUrl:Ljava/net/URL;
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/tts/voicepack/MetadataFetchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    .line 42
    iget-object v7, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-interface {v7}, Lcom/google/android/tts/TtsConfig;->getMetadataUpdateTime()J

    move-result-wide v5

    .line 43
    .local v5, metadataUpdateTime:J
    iget-object v7, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-interface {v7}, Lcom/google/android/tts/TtsConfig;->getMetadataUpdateFrequencyMs()I

    move-result v7

    int-to-long v3, v7

    .line 44
    .local v3, metadataUpdateFrequency:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 46
    .local v1, currentTime:J
    iget-object v7, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    invoke-virtual {v7}, Lcom/google/android/tts/voicepack/MetadataManager;->readCachedMetadata()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    move-result-object v0

    .line 49
    .local v0, currentMetadata:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    iget-object v7, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    invoke-virtual {v7, v0}, Lcom/google/android/tts/voicepack/MetadataManager;->setMetadataList(Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;)V

    .line 56
    add-long v7, v5, v3

    cmp-long v7, v1, v7

    if-gtz v7, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    .line 59
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/tts/voicepack/MetadataFetchTask;->updateMetadataFromNetwork(Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;)V

    .line 60
    iget-object v7, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Lcom/google/android/tts/TtsConfig;->setMetadataUpdateTime(J)V

    .line 66
    :cond_1
    iget-object v7, p0, Lcom/google/android/tts/voicepack/MetadataFetchTask;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    invoke-virtual {v7}, Lcom/google/android/tts/voicepack/MetadataManager;->markUpdateComplete()V

    .line 67
    const/4 v7, 0x0

    return-object v7
.end method
