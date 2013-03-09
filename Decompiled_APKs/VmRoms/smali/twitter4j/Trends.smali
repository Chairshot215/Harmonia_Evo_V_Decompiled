.class public Ltwitter4j/Trends;
.super Ltwitter4j/TwitterResponse;
.source "Trends.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltwitter4j/TwitterResponse;",
        "Ljava/lang/Comparable",
        "<",
        "Ltwitter4j/Trends;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x633f2864236532b5L


# instance fields
.field private asOf:Ljava/util/Date;

.field private trendAt:Ljava/util/Date;

.field private trends:[Ltwitter4j/Trend;


# direct methods
.method constructor <init>(Ltwitter4j/http/Response;Ljava/util/Date;Ljava/util/Date;[Ltwitter4j/Trend;)V
    .locals 0
    .parameter "res"
    .parameter "asOf"
    .parameter "trendAt"
    .parameter "trends"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 60
    iput-object p2, p0, Ltwitter4j/Trends;->asOf:Ljava/util/Date;

    .line 61
    iput-object p3, p0, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    .line 62
    iput-object p4, p0, Ltwitter4j/Trends;->trends:[Ltwitter4j/Trend;

    .line 63
    return-void
.end method

.method static constructTrends(Ltwitter4j/http/Response;)Ltwitter4j/Trends;
    .locals 8
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Ltwitter4j/http/Response;->asJSONObject()Ltwitter4j/org/json/JSONObject;

    move-result-object v2

    .line 104
    .local v2, json:Ltwitter4j/org/json/JSONObject;
    :try_start_0
    const-string v5, "as_of"

    invoke-virtual {v2, v5}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/Trends;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 105
    .local v1, asOf:Ljava/util/Date;
    const-string v5, "trends"

    invoke-virtual {v2, v5}, Ltwitter4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/org/json/JSONArray;

    move-result-object v0

    .line 106
    .local v0, array:Ltwitter4j/org/json/JSONArray;
    invoke-static {v0}, Ltwitter4j/Trends;->jsonArrayToTrendArray(Ltwitter4j/org/json/JSONArray;)[Ltwitter4j/Trend;

    move-result-object v4

    .line 107
    .local v4, trendsArray:[Ltwitter4j/Trend;
    new-instance v5, Ltwitter4j/Trends;

    invoke-direct {v5, p0, v1, v1, v4}, Ltwitter4j/Trends;-><init>(Ltwitter4j/http/Response;Ljava/util/Date;Ljava/util/Date;[Ltwitter4j/Trend;)V
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 108
    .end local v0           #array:Ltwitter4j/org/json/JSONArray;
    .end local v1           #asOf:Ljava/util/Date;
    .end local v4           #trendsArray:[Ltwitter4j/Trend;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 109
    .local v3, jsone:Ltwitter4j/org/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method static constructTrendsList(Ltwitter4j/http/Response;)Ljava/util/List;
    .locals 12
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/http/Response;",
            ")",
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
    .line 68
    invoke-virtual {p0}, Ltwitter4j/http/Response;->asJSONObject()Ltwitter4j/org/json/JSONObject;

    move-result-object v3

    .line 71
    .local v3, json:Ltwitter4j/org/json/JSONObject;
    :try_start_0
    const-string v9, "as_of"

    invoke-virtual {v3, v9}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/Trends;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 72
    .local v1, asOf:Ljava/util/Date;
    const-string v9, "trends"

    invoke-virtual {v3, v9}, Ltwitter4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/org/json/JSONObject;

    move-result-object v8

    .line 73
    .local v8, trendsJson:Ltwitter4j/org/json/JSONObject;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ltwitter4j/org/json/JSONObject;->length()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v6, trends:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    invoke-virtual {v8}, Ltwitter4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 75
    .local v2, ite:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 77
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v8, v5}, Ltwitter4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/org/json/JSONArray;

    move-result-object v0

    .line 78
    .local v0, array:Ltwitter4j/org/json/JSONArray;
    invoke-static {v0}, Ltwitter4j/Trends;->jsonArrayToTrendArray(Ltwitter4j/org/json/JSONArray;)[Ltwitter4j/Trend;

    move-result-object v7

    .line 79
    .local v7, trendsArray:[Ltwitter4j/Trend;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x13

    if-ne v9, v10, :cond_1

    .line 81
    new-instance v9, Ltwitter4j/Trends;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v10}, Ltwitter4j/Trends;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-direct {v9, p0, v1, v10, v7}, Ltwitter4j/Trends;-><init>(Ltwitter4j/http/Response;Ljava/util/Date;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v0           #array:Ltwitter4j/org/json/JSONArray;
    .end local v1           #asOf:Ljava/util/Date;
    .end local v2           #ite:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #trends:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    .end local v7           #trendsArray:[Ltwitter4j/Trend;
    .end local v8           #trendsJson:Ltwitter4j/org/json/JSONObject;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 96
    .local v4, jsone:Ltwitter4j/org/json/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, Ltwitter4j/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p0}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 83
    .end local v4           #jsone:Ltwitter4j/org/json/JSONException;
    .restart local v0       #array:Ltwitter4j/org/json/JSONArray;
    .restart local v1       #asOf:Ljava/util/Date;
    .restart local v2       #ite:Ljava/util/Iterator;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v6       #trends:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    .restart local v7       #trendsArray:[Ltwitter4j/Trend;
    .restart local v8       #trendsJson:Ltwitter4j/org/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_2

    .line 85
    new-instance v9, Ltwitter4j/Trends;

    const-string v10, "yyyy-MM-dd HH:mm"

    invoke-static {v5, v10}, Ltwitter4j/Trends;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-direct {v9, p0, v1, v10, v7}, Ltwitter4j/Trends;-><init>(Ltwitter4j/http/Response;Ljava/util/Date;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_0

    .line 89
    new-instance v9, Ltwitter4j/Trends;

    const-string v10, "yyyy-MM-dd"

    invoke-static {v5, v10}, Ltwitter4j/Trends;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-direct {v9, p0, v1, v10, v7}, Ltwitter4j/Trends;-><init>(Ltwitter4j/http/Response;Ljava/util/Date;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0           #array:Ltwitter4j/org/json/JSONArray;
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #trendsArray:[Ltwitter4j/Trend;
    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Ltwitter4j/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    return-object v6
.end method

.method private static jsonArrayToTrendArray(Ltwitter4j/org/json/JSONArray;)[Ltwitter4j/Trend;
    .locals 4
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [Ltwitter4j/Trend;

    .line 125
    .local v2, trends:[Ltwitter4j/Trend;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/org/json/JSONObject;

    move-result-object v1

    .line 127
    .local v1, trend:Ltwitter4j/org/json/JSONObject;
    new-instance v3, Ltwitter4j/Trend;

    invoke-direct {v3, v1}, Ltwitter4j/Trend;-><init>(Ltwitter4j/org/json/JSONObject;)V

    aput-object v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v1           #trend:Ltwitter4j/org/json/JSONObject;
    :cond_0
    return-object v2
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "asOfStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 116
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 120
    .local v0, parsed:Ljava/util/Date;
    :goto_0
    return-object v0

    .line 118
    .end local v0           #parsed:Ljava/util/Date;
    :cond_0
    const-string v1, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-static {p0, v1}, Ltwitter4j/TwitterResponse;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .restart local v0       #parsed:Ljava/util/Date;
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Ltwitter4j/Trends;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/Trends;->compareTo(Ltwitter4j/Trends;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Trends;)I
    .locals 2
    .parameter "that"

    .prologue
    .line 54
    iget-object v0, p0, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    iget-object v1, p1, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 157
    :goto_0
    return v2

    .line 147
    :cond_0
    instance-of v2, p1, Ltwitter4j/Trends;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 149
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/Trends;

    move-object v1, v0

    .line 151
    .local v1, trends1:Ltwitter4j/Trends;
    iget-object v2, p0, Ltwitter4j/Trends;->asOf:Ljava/util/Date;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/Trends;->asOf:Ljava/util/Date;

    iget-object v3, v1, Ltwitter4j/Trends;->asOf:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v2, v4

    .line 152
    goto :goto_0

    .line 151
    :cond_3
    iget-object v2, v1, Ltwitter4j/Trends;->asOf:Ljava/util/Date;

    if-nez v2, :cond_2

    .line 153
    :cond_4
    iget-object v2, p0, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    iget-object v3, v1, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v2, v4

    .line 154
    goto :goto_0

    .line 153
    :cond_6
    iget-object v2, v1, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    if-nez v2, :cond_5

    .line 155
    :cond_7
    iget-object v2, p0, Ltwitter4j/Trends;->trends:[Ltwitter4j/Trend;

    iget-object v3, v1, Ltwitter4j/Trends;->trends:[Ltwitter4j/Trend;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v4

    goto :goto_0

    :cond_8
    move v2, v5

    .line 157
    goto :goto_0
.end method

.method public getAsOf()Ljava/util/Date;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ltwitter4j/Trends;->asOf:Ljava/util/Date;

    return-object v0
.end method

.method public getTrendAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTrends()[Ltwitter4j/Trend;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ltwitter4j/Trends;->trends:[Ltwitter4j/Trend;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Ltwitter4j/Trends;->asOf:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/Trends;->asOf:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    move v0, v1

    .line 163
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 164
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Trends;->trends:[Ltwitter4j/Trend;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/Trends;->trends:[Ltwitter4j/Trend;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 165
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v3

    .line 162
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 163
    goto :goto_1

    :cond_2
    move v2, v3

    .line 164
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Trends{asOf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Trends;->asOf:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", trendAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Trends;->trendAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", trends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Trends;->trends:[Ltwitter4j/Trend;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Ltwitter4j/Trends;->trends:[Ltwitter4j/Trend;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
