.class final Ltwitter4j/CategoryJSONImpl;
.super Ljava/lang/Object;
.source "CategoryJSONImpl.java"

# interfaces
.implements Ltwitter4j/Category;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5d0808d20eabf6f6L


# instance fields
.field private name:Ljava/lang/String;

.field private size:I

.field private slug:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Ltwitter4j/CategoryJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method

.method static createCategoriesList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 6
    .parameter "array"
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 57
    :cond_0
    new-instance v0, Ltwitter4j/ResponseListImpl;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v0, v5, p1}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 59
    .local v0, categories:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 60
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 61
    .local v3, json:Lorg/json/JSONObject;
    new-instance v1, Ltwitter4j/CategoryJSONImpl;

    invoke-direct {v1, v3}, Ltwitter4j/CategoryJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 62
    .local v1, category:Ltwitter4j/Category;
    invoke-interface {v0, v1}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    invoke-static {v1, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v1           #category:Ltwitter4j/Category;
    .end local v3           #json:Lorg/json/JSONObject;
    :cond_2
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    invoke-static {v0, p0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_3
    return-object v0

    .line 71
    .end local v0           #categories:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    .end local v2           #i:I
    :catch_0
    move-exception v4

    .line 72
    .local v4, jsone:Lorg/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    invoke-direct {v5, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method static createCategoriesList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 1
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ltwitter4j/CategoryJSONImpl;->createCategoriesList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 97
    check-cast v0, Ltwitter4j/CategoryJSONImpl;

    .line 99
    .local v0, that:Ltwitter4j/CategoryJSONImpl;
    iget v3, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    iget v4, v0, Ltwitter4j/CategoryJSONImpl;->size:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 100
    :cond_4
    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    .line 101
    goto :goto_0

    .line 100
    :cond_6
    iget-object v3, v0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 102
    :cond_7
    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 103
    goto :goto_0

    .line 102
    :cond_8
    iget-object v3, v0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    return v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 111
    .local v0, result:I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 112
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    add-int v0, v1, v2

    .line 113
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method init(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    .line 44
    const-string v0, "slug"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    .line 45
    const-string v0, "size"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CategoryJSONImpl{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", slug=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
