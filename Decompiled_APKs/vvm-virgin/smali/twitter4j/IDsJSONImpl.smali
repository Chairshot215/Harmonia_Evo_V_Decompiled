.class final Ltwitter4j/IDsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "IDsJSONImpl.java"

# interfaces
.implements Ltwitter4j/IDs;


# static fields
.field private static final serialVersionUID:J = -0x5b62b6c47b2132b9L


# instance fields
.field private ids:[J

.field private nextCursor:J

.field private previousCursor:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 51
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 37
    iput-wide v0, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 38
    iput-wide v0, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 52
    invoke-direct {p0, p1}, Ltwitter4j/IDsJSONImpl;->init(Ljava/lang/String;)V

    .line 53
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
    const-wide/16 v1, -0x1

    .line 42
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 37
    iput-wide v1, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 38
    iput-wide v1, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 43
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, json:Ljava/lang/String;
    invoke-direct {p0, v0}, Ltwitter4j/IDsJSONImpl;->init(Ljava/lang/String;)V

    .line 45
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 47
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 8
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    const-string v5, "{"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, json:Lorg/json/JSONObject;
    const-string v5, "ids"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 62
    .local v1, idList:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-ge v0, v5, :cond_0

    .line 65
    :try_start_1
    iget-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v4

    .line 67
    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v5, Ltwitter4j/TwitterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Twitter API returned malformed response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    .end local v0           #i:I
    .end local v1           #idList:Lorg/json/JSONArray;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 84
    .local v3, jsone:Lorg/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    invoke-direct {v5, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 70
    .end local v3           #jsone:Lorg/json/JSONException;
    .restart local v0       #i:I
    .restart local v1       #idList:Lorg/json/JSONArray;
    .restart local v2       #json:Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    const-string v5, "previous_cursor"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 71
    const-string v5, "next_cursor"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 88
    .end local v2           #json:Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 73
    .end local v0           #i:I
    .end local v1           #idList:Lorg/json/JSONArray;
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 74
    .restart local v1       #idList:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    .line 75
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    if-ge v0, v5, :cond_1

    .line 77
    :try_start_4
    iget-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :catch_2
    move-exception v4

    .line 79
    .restart local v4       #nfe:Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v5, Ltwitter4j/TwitterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Twitter API returned malformed response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-ne p0, p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    instance-of v3, p1, Ltwitter4j/IDs;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 130
    check-cast v0, Ltwitter4j/IDs;

    .line 132
    .local v0, iDs:Ltwitter4j/IDs;
    iget-object v3, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    invoke-interface {v0}, Ltwitter4j/IDs;->getIDs()[J

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getIDs()[J
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    return-object v0
.end method

.method public getNextCursor()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "IDsJSONImpl{ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", previousCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", nextCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
