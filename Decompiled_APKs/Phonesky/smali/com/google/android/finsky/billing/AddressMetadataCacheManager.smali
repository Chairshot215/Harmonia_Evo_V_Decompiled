.class public Lcom/google/android/finsky/billing/AddressMetadataCacheManager;
.super Ljava/lang/Object;
.source "AddressMetadataCacheManager.java"

# interfaces
.implements Lcom/android/i18n/addressinput/ClientCacheManager;


# instance fields
.field private final mCache:Lcom/android/volley/Cache;


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;)V
    .locals 0
    .parameter "cache"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;->mCache:Lcom/android/volley/Cache;

    .line 26
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    .line 31
    iget-object v2, p0, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;->mCache:Lcom/android/volley/Cache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddressMetadataCacheManager-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 32
    .local v1, entry:Lcom/android/volley/Cache$Entry;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    :cond_0
    const-string v2, ""

    .line 36
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/volley/Cache$Entry;->data:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 not supported."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAddressServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingAddressServerUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "data"

    .prologue
    .line 45
    new-instance v1, Lcom/android/volley/Cache$Entry;

    invoke-direct {v1}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 47
    .local v1, entry:Lcom/android/volley/Cache$Entry;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/volley/Cache$Entry;->data:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 52
    iget-wide v2, v1, Lcom/android/volley/Cache$Entry;->serverDate:J

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 53
    iget-object v2, p0, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;->mCache:Lcom/android/volley/Cache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddressMetadataCacheManager-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 54
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 not supported."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
