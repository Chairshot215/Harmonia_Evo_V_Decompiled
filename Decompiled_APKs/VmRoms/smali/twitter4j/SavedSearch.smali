.class public Ltwitter4j/SavedSearch;
.super Ltwitter4j/TwitterResponse;
.source "SavedSearch.java"


# static fields
.field private static final serialVersionUID:J = 0x2acbedd301ef9884L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private id:I

.field private name:Ljava/lang/String;

.field private position:I

.field private query:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/http/Response;)V
    .locals 1
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 54
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asJSONObject()Ltwitter4j/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/SavedSearch;->init(Ltwitter4j/org/json/JSONObject;)V

    .line 55
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;Ltwitter4j/org/json/JSONObject;)V
    .locals 0
    .parameter "res"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 59
    invoke-direct {p0, p2}, Ltwitter4j/SavedSearch;->init(Ltwitter4j/org/json/JSONObject;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ltwitter4j/org/json/JSONObject;)V
    .locals 0
    .parameter "savedSearch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ltwitter4j/TwitterResponse;-><init>()V

    .line 63
    invoke-direct {p0, p1}, Ltwitter4j/SavedSearch;->init(Ltwitter4j/org/json/JSONObject;)V

    .line 64
    return-void
.end method

.method static constructSavedSearches(Ltwitter4j/http/Response;)Ljava/util/List;
    .locals 7
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/http/Response;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Ltwitter4j/http/Response;->asJSONArray()Ltwitter4j/org/json/JSONArray;

    move-result-object v1

    .line 70
    .local v1, json:Ltwitter4j/org/json/JSONArray;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v3, savedSearches:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/SavedSearch;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 72
    new-instance v4, Ltwitter4j/SavedSearch;

    invoke-virtual {v1, v0}, Ltwitter4j/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/org/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ltwitter4j/SavedSearch;-><init>(Ltwitter4j/http/Response;Ltwitter4j/org/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0           #i:I
    .end local v3           #savedSearches:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/SavedSearch;>;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 76
    .local v2, jsone:Ltwitter4j/org/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ltwitter4j/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 74
    .end local v2           #jsone:Ltwitter4j/org/json/JSONException;
    .restart local v0       #i:I
    .restart local v3       #savedSearches:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/SavedSearch;>;"
    :cond_0
    return-object v3
.end method

.method private init(Ltwitter4j/org/json/JSONObject;)V
    .locals 4
    .parameter "savedSearch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    const-string v1, "created_at"

    invoke-virtual {p1, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v1, v2}, Ltwitter4j/SavedSearch;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/SavedSearch;->createdAt:Ljava/util/Date;

    .line 83
    const-string v1, "query"

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Ltwitter4j/SavedSearch;->getString(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/SavedSearch;->query:Ljava/lang/String;

    .line 84
    const-string v1, "position"

    invoke-static {v1, p1}, Ltwitter4j/SavedSearch;->getInt(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/SavedSearch;->position:I

    .line 85
    const-string v1, "name"

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Ltwitter4j/SavedSearch;->getString(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/SavedSearch;->name:Ljava/lang/String;

    .line 86
    const-string v1, "id"

    invoke-static {v1, p1}, Ltwitter4j/SavedSearch;->getInt(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/SavedSearch;->id:I
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 87
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, jsone:Ltwitter4j/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 125
    :goto_0
    return v2

    .line 115
    :cond_0
    instance-of v2, p1, Ltwitter4j/SavedSearch;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 117
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/SavedSearch;

    move-object v1, v0

    .line 119
    .local v1, that:Ltwitter4j/SavedSearch;
    iget v2, p0, Ltwitter4j/SavedSearch;->id:I

    iget v3, v1, Ltwitter4j/SavedSearch;->id:I

    if-eq v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    .line 120
    :cond_2
    iget v2, p0, Ltwitter4j/SavedSearch;->position:I

    iget v3, v1, Ltwitter4j/SavedSearch;->position:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 121
    :cond_3
    iget-object v2, p0, Ltwitter4j/SavedSearch;->createdAt:Ljava/util/Date;

    iget-object v3, v1, Ltwitter4j/SavedSearch;->createdAt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_0

    .line 122
    :cond_4
    iget-object v2, p0, Ltwitter4j/SavedSearch;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/SavedSearch;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_0

    .line 123
    :cond_5
    iget-object v2, p0, Ltwitter4j/SavedSearch;->query:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    move v2, v5

    .line 125
    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/SavedSearch;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Ltwitter4j/SavedSearch;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ltwitter4j/SavedSearch;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Ltwitter4j/SavedSearch;->position:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ltwitter4j/SavedSearch;->query:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Ltwitter4j/SavedSearch;->createdAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v0

    .line 131
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 132
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/SavedSearch;->position:I

    add-int v0, v1, v2

    .line 133
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/SavedSearch;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 134
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/SavedSearch;->id:I

    add-int v0, v1, v2

    .line 135
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SavedSearch{createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/SavedSearch;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/SavedSearch;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/SavedSearch;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/SavedSearch;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
