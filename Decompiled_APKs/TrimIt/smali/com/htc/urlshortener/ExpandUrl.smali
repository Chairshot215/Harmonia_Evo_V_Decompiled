.class public Lcom/htc/urlshortener/ExpandUrl;
.super Lcom/htc/urlshortener/UrlShorteningOperation;
.source "ExpandUrl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExpandUrl"

.field public static final PARAM_SHORT_URL:Ljava/lang/String; = "shortUrl"


# instance fields
.field private final mExpandedUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mParams:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;)V
    .locals 1
    .parameter "reqIntent"
    .parameter "listener"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/urlshortener/UrlShorteningOperation;-><init>(Landroid/content/Intent;Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;)V

    .line 27
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/urlshortener/ExpandUrl;->mParams:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/urlshortener/ExpandUrl;->mExpandedUrls:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method protected buildHttpRequestUrl()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/htc/urlshortener/UrlShorteningException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/urlshortener/ExpandUrl;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/htc/urlshortener/ExpandUrl;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "shortUrl"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .local v5, shortUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 42
    .end local v5           #shortUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v7, Lcom/htc/urlshortener/UrlShorteningException;

    const/16 v8, 0x384

    const-string v9, "Unable to buildHttpRequestUrl!"

    invoke-direct {v7, v8, v9}, Lcom/htc/urlshortener/UrlShorteningException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 47
    .restart local v5       #shortUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://api.bit.ly/v3/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "expand"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/htc/urlshortener/ExpandUrl;->mParams:Ljava/util/Map;

    const-string v8, "login"

    invoke-static {}, Lcom/htc/urlshortener/ExpandUrl;->getAuthenticatedLogin()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v7, p0, Lcom/htc/urlshortener/ExpandUrl;->mParams:Ljava/util/Map;

    const-string v8, "apiKey"

    invoke-static {}, Lcom/htc/urlshortener/ExpandUrl;->getApiKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v7, p0, Lcom/htc/urlshortener/ExpandUrl;->mParams:Ljava/util/Map;

    const-string v8, "format"

    const-string v9, "json"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v7, p0, Lcom/htc/urlshortener/ExpandUrl;->mParams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .local v2, param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 56
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v6, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 63
    .local v4, shortUrl:Ljava/lang/String;
    const-string v7, "shortUrl"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v4, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 68
    .end local v4           #shortUrl:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 72
    :cond_4
    const-string v7, "ExpandUrl"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getExpandedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "shortUrl"

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lcom/htc/urlshortener/ExpandUrl;->mExpandedUrls:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v1

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/htc/urlshortener/ExpandUrl;->mExpandedUrls:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 136
    .local v0, expandedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 140
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseJSON(Ljava/lang/String;)V
    .locals 18
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/urlshortener/UrlShorteningException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v15, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/htc/urlshortener/ExpandUrl;->preprocessJSON(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    .line 83
    .local v10, json:Lorg/json/JSONObject;
    const-string v15, "data"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "data"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 84
    const-string v15, "data"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 85
    .local v2, data:Lorg/json/JSONObject;
    const-string v15, "expand"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "expand"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 86
    const-string v15, "expand"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 87
    .local v6, expands:Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v9, v15, :cond_6

    .line 88
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 89
    .local v4, expand:Lorg/json/JSONObject;
    const-string v15, "error"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 90
    const/4 v8, 0x0

    .local v8, hash:Ljava/lang/String;
    const/4 v13, 0x0

    .line 91
    .local v13, short_url:Ljava/lang/String;
    const-string v15, "hash"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 92
    const-string v15, "hash"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    :cond_0
    const-string v15, "short_url"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 95
    const-string v15, "short_url"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 97
    :cond_1
    const-string v15, "error"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, errorMsg:Ljava/lang/String;
    const-string v15, "ExpandUrl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "parseJSON "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .end local v8           #hash:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v3           #errorMsg:Ljava/lang/String;
    .end local v13           #short_url:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 98
    .restart local v3       #errorMsg:Ljava/lang/String;
    .restart local v8       #hash:Ljava/lang/String;
    .restart local v13       #short_url:Ljava/lang/String;
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    move-object v8, v13

    goto :goto_1

    :cond_4
    const-string v8, ""

    goto :goto_1

    .line 106
    .end local v3           #errorMsg:Ljava/lang/String;
    .end local v8           #hash:Ljava/lang/String;
    .end local v13           #short_url:Ljava/lang/String;
    :cond_5
    const-string v15, "long_url"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "long_url"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "short_url"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "short_url"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "user_hash"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "user_hash"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "global_hash"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "global_hash"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 114
    const-string v15, "long_url"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, longUrl:Ljava/lang/String;
    const-string v15, "short_url"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, shortUrl:Ljava/lang/String;
    const-string v15, "user_hash"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, userHash:Ljava/lang/String;
    const-string v15, "global_hash"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, globalHash:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v5, expandedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/urlshortener/ExpandUrl;->mExpandedUrls:Ljava/util/Map;

    invoke-interface {v15, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 127
    .end local v2           #data:Lorg/json/JSONObject;
    .end local v4           #expand:Lorg/json/JSONObject;
    .end local v5           #expandedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #expands:Lorg/json/JSONArray;
    .end local v7           #globalHash:Ljava/lang/String;
    .end local v9           #i:I
    .end local v11           #longUrl:Ljava/lang/String;
    .end local v12           #shortUrl:Ljava/lang/String;
    .end local v14           #userHash:Ljava/lang/String;
    :cond_6
    return-void
.end method
