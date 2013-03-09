.class public Ltwitter4j/QueryResult;
.super Ltwitter4j/TwitterResponse;
.source "QueryResult.java"


# static fields
.field private static final serialVersionUID:J = -0x7db884b56e8fbc26L


# instance fields
.field private completedIn:D

.field private maxId:J

.field private page:I

.field private query:Ljava/lang/String;

.field private refreshUrl:Ljava/lang/String;

.field private resultsPerPage:I

.field private sinceId:J

.field private total:I

.field private tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private warning:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/Query;)V
    .locals 2
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ltwitter4j/TwitterResponse;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/QueryResult;->total:I

    .line 81
    invoke-virtual {p1}, Ltwitter4j/Query;->getSinceId()J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/QueryResult;->sinceId:J

    .line 82
    invoke-virtual {p1}, Ltwitter4j/Query;->getRpp()I

    move-result v0

    iput v0, p0, Ltwitter4j/QueryResult;->resultsPerPage:I

    .line 83
    invoke-virtual {p1}, Ltwitter4j/Query;->getPage()I

    move-result v0

    iput v0, p0, Ltwitter4j/QueryResult;->page:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    .line 85
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;Ltwitter4j/TwitterSupport;)V
    .locals 8
    .parameter "res"
    .parameter "twitterSupport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 48
    const/4 v5, -0x1

    iput v5, p0, Ltwitter4j/QueryResult;->total:I

    .line 58
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asJSONObject()Ltwitter4j/org/json/JSONObject;

    move-result-object v2

    .line 60
    .local v2, json:Ltwitter4j/org/json/JSONObject;
    :try_start_0
    const-string v5, "since_id"

    invoke-virtual {v2, v5}, Ltwitter4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/QueryResult;->sinceId:J

    .line 61
    const-string v5, "max_id"

    invoke-virtual {v2, v5}, Ltwitter4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/QueryResult;->maxId:J

    .line 62
    const-string v5, "refresh_url"

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Ltwitter4j/QueryResult;->getString(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltwitter4j/QueryResult;->refreshUrl:Ljava/lang/String;

    .line 64
    const-string v5, "results_per_page"

    invoke-virtual {v2, v5}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ltwitter4j/QueryResult;->resultsPerPage:I

    .line 65
    const-string v5, "warning"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Ltwitter4j/QueryResult;->getString(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltwitter4j/QueryResult;->warning:Ljava/lang/String;

    .line 66
    const-string v5, "completed_in"

    invoke-virtual {v2, v5}, Ltwitter4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/QueryResult;->completedIn:D

    .line 67
    const-string v5, "page"

    invoke-virtual {v2, v5}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ltwitter4j/QueryResult;->page:I

    .line 68
    const-string v5, "query"

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Ltwitter4j/QueryResult;->getString(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltwitter4j/QueryResult;->query:Ljava/lang/String;

    .line 69
    const-string v5, "results"

    invoke-virtual {v2, v5}, Ltwitter4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/org/json/JSONArray;

    move-result-object v0

    .line 70
    .local v0, array:Ltwitter4j/org/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 72
    invoke-virtual {v0, v1}, Ltwitter4j/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/org/json/JSONObject;

    move-result-object v4

    .line 73
    .local v4, tweet:Ltwitter4j/org/json/JSONObject;
    iget-object v5, p0, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    new-instance v6, Ltwitter4j/Tweet;

    invoke-direct {v6, v4, p2}, Ltwitter4j/Tweet;-><init>(Ltwitter4j/org/json/JSONObject;Ltwitter4j/TwitterSupport;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0           #array:Ltwitter4j/org/json/JSONArray;
    .end local v1           #i:I
    .end local v4           #tweet:Ltwitter4j/org/json/JSONObject;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 76
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

    invoke-virtual {v2}, Ltwitter4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 78
    .end local v3           #jsone:Ltwitter4j/org/json/JSONException;
    .restart local v0       #array:Ltwitter4j/org/json/JSONArray;
    .restart local v1       #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 135
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 154
    :goto_0
    return v2

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v6

    goto :goto_0

    .line 138
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/QueryResult;

    move-object v1, v0

    .line 140
    .local v1, that:Ltwitter4j/QueryResult;
    iget-wide v2, v1, Ltwitter4j/QueryResult;->completedIn:D

    iget-wide v4, p0, Ltwitter4j/QueryResult;->completedIn:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_0

    .line 141
    :cond_3
    iget-wide v2, p0, Ltwitter4j/QueryResult;->maxId:J

    iget-wide v4, v1, Ltwitter4j/QueryResult;->maxId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_0

    .line 142
    :cond_4
    iget v2, p0, Ltwitter4j/QueryResult;->page:I

    iget v3, v1, Ltwitter4j/QueryResult;->page:I

    if-eq v2, v3, :cond_5

    move v2, v6

    goto :goto_0

    .line 143
    :cond_5
    iget v2, p0, Ltwitter4j/QueryResult;->resultsPerPage:I

    iget v3, v1, Ltwitter4j/QueryResult;->resultsPerPage:I

    if-eq v2, v3, :cond_6

    move v2, v6

    goto :goto_0

    .line 144
    :cond_6
    iget-wide v2, p0, Ltwitter4j/QueryResult;->sinceId:J

    iget-wide v4, v1, Ltwitter4j/QueryResult;->sinceId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v2, v6

    goto :goto_0

    .line 145
    :cond_7
    iget v2, p0, Ltwitter4j/QueryResult;->total:I

    iget v3, v1, Ltwitter4j/QueryResult;->total:I

    if-eq v2, v3, :cond_8

    move v2, v6

    goto :goto_0

    .line 146
    :cond_8
    iget-object v2, p0, Ltwitter4j/QueryResult;->query:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/QueryResult;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v6

    goto :goto_0

    .line 147
    :cond_9
    iget-object v2, p0, Ltwitter4j/QueryResult;->refreshUrl:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ltwitter4j/QueryResult;->refreshUrl:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/QueryResult;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v2, v6

    .line 148
    goto :goto_0

    .line 147
    :cond_b
    iget-object v2, v1, Ltwitter4j/QueryResult;->refreshUrl:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 149
    :cond_c
    iget-object v2, p0, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v2, p0, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    iget-object v3, v1, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v2, v6

    .line 150
    goto :goto_0

    .line 149
    :cond_e
    iget-object v2, v1, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    if-nez v2, :cond_d

    .line 151
    :cond_f
    iget-object v2, p0, Ltwitter4j/QueryResult;->warning:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Ltwitter4j/QueryResult;->warning:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/QueryResult;->warning:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v2, v6

    .line 152
    goto/16 :goto_0

    .line 151
    :cond_11
    iget-object v2, v1, Ltwitter4j/QueryResult;->warning:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_12
    move v2, v7

    .line 154
    goto/16 :goto_0
.end method

.method public getCompletedIn()D
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Ltwitter4j/QueryResult;->completedIn:D

    return-wide v0
.end method

.method public getMaxId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Ltwitter4j/QueryResult;->maxId:J

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Ltwitter4j/QueryResult;->page:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ltwitter4j/QueryResult;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ltwitter4j/QueryResult;->refreshUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResultsPerPage()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Ltwitter4j/QueryResult;->resultsPerPage:I

    return v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Ltwitter4j/QueryResult;->sinceId:J

    return-wide v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Ltwitter4j/QueryResult;->total:I

    return v0
.end method

.method public getTweets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    return-object v0
.end method

.method public getWarning()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ltwitter4j/QueryResult;->warning:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 161
    iget-wide v3, p0, Ltwitter4j/QueryResult;->sinceId:J

    iget-wide v5, p0, Ltwitter4j/QueryResult;->sinceId:J

    ushr-long/2addr v5, v9

    xor-long/2addr v3, v5

    long-to-int v0, v3

    .line 162
    .local v0, result:I
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v4, p0, Ltwitter4j/QueryResult;->maxId:J

    iget-wide v6, p0, Ltwitter4j/QueryResult;->maxId:J

    ushr-long/2addr v6, v9

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 163
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/QueryResult;->refreshUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ltwitter4j/QueryResult;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int v0, v3, v4

    .line 164
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/QueryResult;->resultsPerPage:I

    add-int v0, v3, v4

    .line 165
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/QueryResult;->total:I

    add-int v0, v3, v4

    .line 166
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/QueryResult;->warning:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ltwitter4j/QueryResult;->warning:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int v0, v3, v4

    .line 167
    iget-wide v3, p0, Ltwitter4j/QueryResult;->completedIn:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2

    iget-wide v3, p0, Ltwitter4j/QueryResult;->completedIn:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    move-wide v1, v3

    .line 168
    .local v1, temp:J
    :goto_2
    mul-int/lit8 v3, v0, 0x1f

    ushr-long v4, v1, v9

    xor-long/2addr v4, v1

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 169
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/QueryResult;->page:I

    add-int v0, v3, v4

    .line 170
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/QueryResult;->query:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 171
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int v0, v3, v4

    .line 172
    return v0

    .end local v1           #temp:J
    :cond_0
    move v4, v8

    .line 163
    goto :goto_0

    :cond_1
    move v4, v8

    .line 166
    goto :goto_1

    .line 167
    :cond_2
    const-wide/16 v3, 0x0

    move-wide v1, v3

    goto :goto_2

    .restart local v1       #temp:J
    :cond_3
    move v4, v8

    .line 171
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "QueryResult{sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/QueryResult;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/QueryResult;->maxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", refreshUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResult;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", resultsPerPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/QueryResult;->resultsPerPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/QueryResult;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", warning=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResult;->warning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", completedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/QueryResult;->completedIn:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/QueryResult;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResult;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", tweets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResult;->tweets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
