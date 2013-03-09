.class public Lcom/htc/urlshortener/ShortenUrl;
.super Lcom/htc/urlshortener/UrlShorteningOperation;
.source "ShortenUrl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShortenUrl"

.field public static final PARAM_LONG_URL:Ljava/lang/String; = "longUrl"

.field public static final PARAM_URL_SERVER:Ljava/lang/String; = "domain"


# instance fields
.field private mLongUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
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

.field private final mShortenedUrls:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;)V
    .locals 1
    .parameter "reqIntent"
    .parameter "listener"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/htc/urlshortener/UrlShorteningOperation;-><init>(Landroid/content/Intent;Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;)V

    .line 30
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/urlshortener/ShortenUrl;->mParams:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/urlshortener/ShortenUrl;->mShortenedUrls:Ljava/util/Map;

    .line 37
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
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/htc/urlshortener/ShortenUrl;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/urlshortener/ShortenUrl;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "longUrl"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 45
    :cond_0
    new-instance v6, Lcom/htc/urlshortener/UrlShorteningException;

    const/16 v7, 0x384

    const-string v8, "Unable to buildHttpRequestUrl!"

    invoke-direct {v6, v7, v8}, Lcom/htc/urlshortener/UrlShorteningException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/htc/urlshortener/ShortenUrl;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "domain"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mShortenServer:Ljava/lang/String;

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v6, "is.gd"

    iget-object v7, p0, Lcom/htc/urlshortener/ShortenUrl;->mShortenServer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 55
    const-string v6, "http://is.gd/api.php?longurl="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "http://http://"

    const-string v9, "http://"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_2
    :goto_0
    const-string v6, "ShortenUrl"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 57
    :cond_3
    const-string v6, "TinyURL"

    iget-object v7, p0, Lcom/htc/urlshortener/ShortenUrl;->mShortenServer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 58
    const-string v6, "http://tinyurl.com/api-create.php?url="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "http://http://"

    const-string v9, "http://"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_4
    const-string v6, "t.cn"

    iget-object v7, p0, Lcom/htc/urlshortener/ShortenUrl;->mShortenServer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 61
    const-string v6, "http://api.t.sina.com.cn/short_url/shorten.json?source=3551174478"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, longUrl:Ljava/lang/String;
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "url_long"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 68
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #longUrl:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_7

    const-string v6, "http://api.bit.ly/"

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v6, "shorten"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_6

    .line 74
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mParams:Ljava/util/Map;

    const-string v7, "version"

    const-string v8, "2.0.1"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_6
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mParams:Ljava/util/Map;

    const-string v7, "login"

    invoke-static {}, Lcom/htc/urlshortener/ShortenUrl;->getAuthenticatedLogin()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mParams:Ljava/util/Map;

    const-string v7, "apiKey"

    invoke-static {}, Lcom/htc/urlshortener/ShortenUrl;->getApiKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mParams:Ljava/util/Map;

    const-string v7, "format"

    const-string v8, "json"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mParams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 81
    .local v3, param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, key:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 83
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 68
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    :cond_7
    const-string v6, "http://api.bit.ly/v3/"

    goto :goto_2

    .line 89
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_8
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .restart local v2       #longUrl:Ljava/lang/String;
    const-string v6, "longUrl"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 95
    .end local v2           #longUrl:Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public getShortenedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "longUrl"

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v2, p0, Lcom/htc/urlshortener/ShortenUrl;->mShortenedUrls:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v1

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/htc/urlshortener/ShortenUrl;->mShortenedUrls:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 198
    .local v0, shortenedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 202
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseJSON(Ljava/lang/String;)V
    .locals 23
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/urlshortener/UrlShorteningException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const-string v20, "is.gd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mShortenServer:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v20, "TinyURL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mShortenServer:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 111
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v18, shortenedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mShortenedUrls:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v18           #shortenedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    const-string v20, "t.cn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mShortenServer:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 117
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 118
    .local v11, jsonarr:Lorg/json/JSONArray;
    if-nez v11, :cond_3

    .line 119
    const-string v20, "ShortenUrl"

    const-string v21, "jsonarr == null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mShortenedUrls:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 124
    :cond_3
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    .line 126
    :try_start_0
    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 127
    .local v14, obj:Lorg/json/JSONObject;
    if-eqz v14, :cond_4

    const-string v20, "url_long"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "url_long"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    const-string v20, "url_short"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "url_short"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 129
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .restart local v18       #shortenedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v20, "url_short"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mShortenedUrls:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v14           #obj:Lorg/json/JSONObject;
    .end local v18           #shortenedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 133
    :catch_0
    move-exception v4

    .line 134
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 140
    .end local v4           #e:Lorg/json/JSONException;
    .end local v8           #i:I
    .end local v11           #jsonarr:Lorg/json/JSONArray;
    :cond_5
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/urlshortener/ShortenUrl;->preprocessJSON(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    .line 143
    .local v10, json:Lorg/json/JSONObject;
    const-string v20, "results"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    const-string v20, "results"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 144
    const-string v20, "results"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 145
    .local v16, results:Lorg/json/JSONObject;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 146
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 147
    .local v13, next:Ljava/lang/Object;
    const/4 v12, 0x0

    .line 148
    .local v12, longUrl:Ljava/lang/String;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object v12, v13

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 151
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 152
    .local v15, result:Lorg/json/JSONObject;
    const-string v20, "statusCode"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    const-string v20, "ERROR"

    const-string v21, "statusCode"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 154
    const-string v20, "errorCode"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 155
    .local v5, errorCode:I
    const-string v20, "errorMessage"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, errorMsg:Ljava/lang/String;
    const-string v20, "ShortenUrl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "parseJSON "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 160
    .end local v5           #errorCode:I
    .end local v6           #errorMsg:Ljava/lang/String;
    :cond_7
    const-string v20, "shortUrl"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 161
    .local v17, shortUrl:Ljava/lang/String;
    const-string v20, "userHash"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 162
    .local v19, userHash:Ljava/lang/String;
    const-string v20, "hash"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, globalHash:Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .restart local v18       #shortenedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mShortenedUrls:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 170
    .end local v7           #globalHash:Ljava/lang/String;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v12           #longUrl:Ljava/lang/String;
    .end local v13           #next:Ljava/lang/Object;
    .end local v15           #result:Lorg/json/JSONObject;
    .end local v16           #results:Lorg/json/JSONObject;
    .end local v17           #shortUrl:Ljava/lang/String;
    .end local v18           #shortenedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #userHash:Ljava/lang/String;
    :cond_8
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 171
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 172
    .local v3, data:Lorg/json/JSONObject;
    const-string v20, "long_url"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "long_url"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "url"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "url"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "hash"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "hash"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "global_hash"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "global_hash"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 178
    const-string v20, "long_url"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 179
    .restart local v12       #longUrl:Ljava/lang/String;
    const-string v20, "url"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 180
    .restart local v17       #shortUrl:Ljava/lang/String;
    const-string v20, "hash"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 181
    .restart local v19       #userHash:Ljava/lang/String;
    const-string v20, "global_hash"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .restart local v7       #globalHash:Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .restart local v18       #shortenedUrlHash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mShortenedUrls:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/urlshortener/ShortenUrl;->mLongUrls:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
