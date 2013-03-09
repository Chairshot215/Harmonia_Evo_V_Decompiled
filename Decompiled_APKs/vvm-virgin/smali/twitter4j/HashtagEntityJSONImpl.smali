.class Ltwitter4j/HashtagEntityJSONImpl;
.super Ljava/lang/Object;
.source "HashtagEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/HashtagEntity;


# static fields
.field private static final serialVersionUID:J = 0x3877f7012d9cd490L


# instance fields
.field private end:I

.field private start:I

.field private text:Ljava/lang/String;


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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    .line 32
    iput v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    .line 38
    invoke-direct {p0, p1}, Ltwitter4j/HashtagEntityJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 39
    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 44
    .local v0, indicesArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    .line 47
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    return-void

    .line 50
    .end local v0           #indicesArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 51
    .local v1, jsone:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 79
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

    .line 81
    check-cast v0, Ltwitter4j/HashtagEntityJSONImpl;

    .line 83
    .local v0, that:Ltwitter4j/HashtagEntityJSONImpl;
    iget v3, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    iget v4, v0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 84
    :cond_4
    iget v3, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    iget v4, v0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 85
    :cond_5
    iget-object v3, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 86
    goto :goto_0

    .line 85
    :cond_6
    iget-object v3, v0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    iget v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    .line 94
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    add-int v0, v1, v2

    .line 95
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 96
    return v0

    .line 95
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HashtagEntityJSONImpl{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
