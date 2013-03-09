.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 22
    .parameter "response"

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 42
    .local v9, now:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 44
    .local v5, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v11, 0x0

    .line 45
    .local v11, serverDate:J
    const-wide/16 v14, 0x0

    .line 46
    .local v14, serverExpires:J
    const-wide/16 v16, 0x0

    .line 47
    .local v16, softExpire:J
    const-wide/16 v7, 0x0

    .line 48
    .local v7, maxAge:J
    const/4 v3, 0x0

    .line 50
    .local v3, hasCacheControl:Z
    const/4 v13, 0x0

    .line 53
    .local v13, serverEtag:Ljava/lang/String;
    const-string v20, "Date"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 54
    .local v4, headerValue:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 55
    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v11

    .line 58
    :cond_0
    const-string v20, "Cache-Control"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #headerValue:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 59
    .restart local v4       #headerValue:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 60
    const/4 v3, 0x1

    .line 61
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 62
    .local v19, tokens:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_6

    .line 63
    aget-object v20, v19, v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 64
    .local v18, token:Ljava/lang/String;
    const-string v20, "no-cache"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "no-store"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 100
    .end local v6           #i:I
    .end local v18           #token:Ljava/lang/String;
    .end local v19           #tokens:[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 66
    .restart local v6       #i:I
    .restart local v18       #token:Ljava/lang/String;
    .restart local v19       #tokens:[Ljava/lang/String;
    :cond_2
    const-string v20, "max-age="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 68
    const/16 v20, 0x8

    :try_start_0
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 62
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 71
    :cond_4
    const-string v20, "must-revalidate"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, "proxy-revalidate"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 72
    :cond_5
    const-wide/16 v7, 0x0

    goto :goto_2

    .line 77
    .end local v6           #i:I
    .end local v18           #token:Ljava/lang/String;
    .end local v19           #tokens:[Ljava/lang/String;
    :cond_6
    const-string v20, "Expires"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #headerValue:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 78
    .restart local v4       #headerValue:Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 79
    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v14

    .line 82
    :cond_7
    const-string v20, "ETag"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #serverEtag:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 86
    .restart local v13       #serverEtag:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 87
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v7

    add-long v16, v9, v20

    .line 93
    :cond_8
    :goto_3
    new-instance v2, Lcom/android/volley/Cache$Entry;

    invoke-direct {v2}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 94
    .local v2, entry:Lcom/android/volley/Cache$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 95
    iput-object v13, v2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 96
    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 97
    iget-wide v0, v2, Lcom/android/volley/Cache$Entry;->softTtl:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 98
    iput-wide v11, v2, Lcom/android/volley/Cache$Entry;->serverDate:J

    goto :goto_1

    .line 88
    .end local v2           #entry:Lcom/android/volley/Cache$Entry;
    :cond_9
    const-wide/16 v20, 0x0

    cmp-long v20, v11, v20

    if-lez v20, :cond_8

    cmp-long v20, v14, v11

    if-ltz v20, :cond_8

    .line 90
    sub-long v20, v14, v11

    add-long v16, v9, v20

    goto :goto_3

    .line 69
    .restart local v6       #i:I
    .restart local v18       #token:Ljava/lang/String;
    .restart local v19       #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v20

    goto :goto_2
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, contentType:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 123
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, params:[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 125
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, pair:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 127
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 134
    .end local v1           #i:I
    .end local v2           #pair:[Ljava/lang/String;
    .end local v3           #params:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 124
    .restart local v1       #i:I
    .restart local v2       #pair:[Ljava/lang/String;
    .restart local v3       #params:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1           #i:I
    .end local v2           #pair:[Ljava/lang/String;
    .end local v3           #params:[Ljava/lang/String;
    :cond_1
    const-string v4, "ISO-8859-1"

    goto :goto_1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 3
    .parameter "dateStr"

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 112
    :goto_0
    return-wide v1

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method
