.class Ltwitter4j/UserMentionEntityJSONImpl;
.super Ljava/lang/Object;
.source "UserMentionEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/UserMentionEntity;


# static fields
.field private static final serialVersionUID:J = 0x5b5263422916aeb6L


# instance fields
.field private end:I

.field private id:J

.field private name:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private start:I


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    .line 33
    iput v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    .line 40
    invoke-direct {p0, p1}, Ltwitter4j/UserMentionEntityJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 41
    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    .local v0, indicesArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    .line 49
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    .line 52
    :cond_0
    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    .line 55
    :cond_1
    const-string v2, "id"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 56
    .end local v0           #indicesArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 57
    .local v1, jsone:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    if-ne p0, p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 99
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

    .line 101
    check-cast v0, Ltwitter4j/UserMentionEntityJSONImpl;

    .line 103
    .local v0, that:Ltwitter4j/UserMentionEntityJSONImpl;
    iget v3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    iget v4, v0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 104
    :cond_4
    iget-wide v3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    iget-wide v5, v0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 105
    :cond_5
    iget v3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    iget v4, v0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 106
    :cond_6
    iget-object v3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 107
    goto :goto_0

    .line 106
    :cond_8
    iget-object v3, v0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 108
    :cond_9
    iget-object v3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 109
    goto :goto_0

    .line 108
    :cond_a
    iget-object v3, v0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    .line 117
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    add-int v0, v1, v3

    .line 118
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 119
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 120
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    iget-wide v4, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 121
    return v0

    :cond_1
    move v1, v2

    .line 118
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UserMentionEntityJSONImpl{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
