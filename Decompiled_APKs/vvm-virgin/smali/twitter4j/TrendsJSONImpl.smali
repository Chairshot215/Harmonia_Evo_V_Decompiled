.class final Ltwitter4j/TrendsJSONImpl;
.super Ljava/lang/Object;
.source "TrendsJSONImpl.java"

# interfaces
.implements Ltwitter4j/Trends;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x633f2864236532b5L


# instance fields
.field private asOf:Ljava/util/Date;

.field private location:Ltwitter4j/Location;

.field private trendAt:Ljava/util/Date;

.field private trends:[Ltwitter4j/Trend;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/TrendsJSONImpl;->init(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method constructor <init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V
    .locals 0
    .parameter "asOf"
    .parameter "location"
    .parameter "trendAt"
    .parameter "trends"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    .line 91
    iput-object p2, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    .line 92
    iput-object p3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    .line 93
    iput-object p4, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    .line 94
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, jsonStr:Ljava/lang/String;
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Ltwitter4j/TrendsJSONImpl;->init(Ljava/lang/String;Z)V

    .line 55
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 57
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method static createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;
    .locals 13
    .parameter "res"
    .parameter "storeJSON"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 102
    .local v3, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "as_of"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/TrendsJSONImpl;->parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 103
    .local v1, asOf:Ljava/util/Date;
    const-string v10, "trends"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 104
    .local v9, trendsJson:Lorg/json/JSONObject;
    invoke-static {v3, p1}, Ltwitter4j/TrendsJSONImpl;->extractLocation(Lorg/json/JSONObject;Z)Ltwitter4j/Location;

    move-result-object v6

    .line 105
    .local v6, location:Ltwitter4j/Location;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v7, trends:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    .local v2, ite:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 109
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 110
    .local v0, array:Lorg/json/JSONArray;
    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->jsonArrayToTrendArray(Lorg/json/JSONArray;)[Ltwitter4j/Trend;

    move-result-object v8

    .line 111
    .local v8, trendsArray:[Ltwitter4j/Trend;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x13

    if-ne v10, v11, :cond_1

    .line 113
    new-instance v10, Ltwitter4j/TrendsJSONImpl;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v11}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v1, v6, v11, v8}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #asOf:Ljava/util/Date;
    .end local v2           #ite:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #location:Ltwitter4j/Location;
    .end local v7           #trends:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    .end local v8           #trendsArray:[Ltwitter4j/Trend;
    .end local v9           #trendsJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 128
    .local v4, jsone:Lorg/json/JSONException;
    new-instance v10, Ltwitter4j/TwitterException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 115
    .end local v4           #jsone:Lorg/json/JSONException;
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v1       #asOf:Ljava/util/Date;
    .restart local v2       #ite:Ljava/util/Iterator;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v6       #location:Ltwitter4j/Location;
    .restart local v7       #trends:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    .restart local v8       #trendsArray:[Ltwitter4j/Trend;
    .restart local v9       #trendsJson:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_2

    .line 117
    new-instance v10, Ltwitter4j/TrendsJSONImpl;

    const-string v11, "yyyy-MM-dd HH:mm"

    invoke-static {v5, v11}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v1, v6, v11, v8}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_0

    .line 121
    new-instance v10, Ltwitter4j/TrendsJSONImpl;

    const-string v11, "yyyy-MM-dd"

    invoke-static {v5, v11}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v1, v6, v11, v8}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #trendsArray:[Ltwitter4j/Trend;
    :cond_3
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    return-object v7
.end method

.method private static extractLocation(Lorg/json/JSONObject;Z)Ltwitter4j/Location;
    .locals 5
    .parameter "json"
    .parameter "storeJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 133
    const-string v3, "locations"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 148
    :goto_0
    return-object v1

    .line 138
    :cond_0
    :try_start_0
    const-string v3, "locations"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3, p1}, Ltwitter4j/LocationJSONImpl;->createLocationList(Lorg/json/JSONArray;Z)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    .local v2, locations:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    invoke-interface {v2}, Ltwitter4j/ResponseList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ltwitter4j/ResponseList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Location;

    .local v1, location:Ltwitter4j/Location;
    goto :goto_0

    .line 139
    .end local v1           #location:Ltwitter4j/Location;
    .end local v2           #locations:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "locations can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 146
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #locations:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #location:Ltwitter4j/Location;
    goto :goto_0
.end method

.method private static jsonArrayToTrendArray(Lorg/json/JSONArray;)[Ltwitter4j/Trend;
    .locals 4
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [Ltwitter4j/Trend;

    .line 169
    .local v2, trends:[Ltwitter4j/Trend;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    .local v1, trend:Lorg/json/JSONObject;
    new-instance v3, Ltwitter4j/TrendJSONImpl;

    invoke-direct {v3, v1}, Ltwitter4j/TrendJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v2, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v1           #trend:Lorg/json/JSONObject;
    :cond_0
    return-object v2
.end method

.method private static parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "asOfStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 162
    const-string v1, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-static {p0, v1}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 164
    .local v0, parsed:Ljava/util/Date;
    :goto_0
    return-object v0

    .line 156
    .end local v0           #parsed:Ljava/util/Date;
    :sswitch_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 157
    .restart local v0       #parsed:Ljava/util/Date;
    goto :goto_0

    .line 159
    .end local v0           #parsed:Ljava/util/Date;
    :sswitch_1
    const-string v1, "yyyy-mm-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {p0, v1}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 160
    .restart local v0       #parsed:Ljava/util/Date;
    goto :goto_0

    .line 154
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Ltwitter4j/Trends;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/TrendsJSONImpl;->compareTo(Ltwitter4j/Trends;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Trends;)I
    .locals 2
    .parameter "that"

    .prologue
    .line 49
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-interface {p1}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    if-ne p0, p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    instance-of v3, p1, Ltwitter4j/Trends;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 209
    check-cast v0, Ltwitter4j/Trends;

    .line 211
    .local v0, trends1:Ltwitter4j/Trends;
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-interface {v0}, Ltwitter4j/Trends;->getAsOf()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 212
    goto :goto_0

    .line 211
    :cond_4
    invoke-interface {v0}, Ltwitter4j/Trends;->getAsOf()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_3

    .line 213
    :cond_5
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-interface {v0}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 214
    goto :goto_0

    .line 213
    :cond_7
    invoke-interface {v0}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    .line 215
    :cond_8
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-interface {v0}, Ltwitter4j/Trends;->getTrends()[Ltwitter4j/Trend;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAsOf()Ljava/util/Date;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ltwitter4j/Location;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    return-object v0
.end method

.method public getTrendAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTrends()[Ltwitter4j/Trend;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v0

    .line 223
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 224
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 225
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 222
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 223
    goto :goto_1
.end method

.method init(Ljava/lang/String;Z)V
    .locals 5
    .parameter "jsonStr"
    .parameter "storeJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 71
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 78
    .end local v0           #array:Lorg/json/JSONArray;
    .local v1, json:Lorg/json/JSONObject;
    :goto_0
    const-string v3, "as_of"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/TrendsJSONImpl;->parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    .line 79
    invoke-static {v1, p2}, Ltwitter4j/TrendsJSONImpl;->extractLocation(Lorg/json/JSONObject;Z)Ltwitter4j/Location;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    .line 80
    const-string v3, "trends"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 81
    .restart local v0       #array:Lorg/json/JSONArray;
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    iput-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    .line 82
    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->jsonArrayToTrendArray(Lorg/json/JSONArray;)[Ltwitter4j/Trend;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    .line 86
    return-void

    .line 73
    .end local v1           #json:Lorg/json/JSONObject;
    :cond_0
    new-instance v3, Ltwitter4j/TwitterException;

    const-string v4, "No trends found on the specified woeid"

    invoke-direct {v3, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0           #array:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 84
    .local v2, jsone:Lorg/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 76
    .end local v2           #jsone:Lorg/json/JSONException;
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1       #json:Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TrendsJSONImpl{asOf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", trendAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", trends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
