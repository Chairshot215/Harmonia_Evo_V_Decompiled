.class Ltwitter4j/RelationshipJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "RelationshipJSONImpl.java"

# interfaces
.implements Ltwitter4j/Relationship;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6b34ca39712b59e8L


# instance fields
.field private final sourceBlockingTarget:Z

.field private final sourceFollowedByTarget:Z

.field private final sourceFollowingTarget:Z

.field private final sourceNotificationsEnabled:Z

.field private final sourceUserId:J

.field private final sourceUserScreenName:Ljava/lang/String;

.field private final targetUserId:J

.field private final targetUserScreenName:Ljava/lang/String;


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
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;)V

    .line 59
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "res"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 64
    :try_start_0
    const-string v4, "relationship"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    .local v1, relationship:Lorg/json/JSONObject;
    const-string v4, "source"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 66
    .local v2, sourceJson:Lorg/json/JSONObject;
    const-string v4, "target"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 67
    .local v3, targetJson:Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v4

    iput-wide v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    .line 68
    const-string v4, "id"

    invoke-static {v4, v3}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v4

    iput-wide v4, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    .line 69
    const-string v4, "screen_name"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    .line 70
    const-string v4, "screen_name"

    invoke-static {v4, v3}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    .line 71
    const-string v4, "blocking"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    .line 72
    const-string v4, "following"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    .line 73
    const-string v4, "followed_by"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    .line 74
    const-string v4, "notifications_enabled"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    .end local v1           #relationship:Lorg/json/JSONObject;
    .end local v2           #sourceJson:Lorg/json/JSONObject;
    .end local v3           #targetJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 76
    .local v0, jsone:Lorg/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 1
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;)V

    .line 51
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 53
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    return-void
.end method

.method static createRelationshipList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 9
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
            "Ltwitter4j/Relationship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 84
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 86
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v3

    .line 87
    .local v3, list:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 88
    .local v6, size:I
    new-instance v5, Ltwitter4j/ResponseListImpl;

    invoke-direct {v5, v6, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 89
    .local v5, relationships:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Relationship;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 90
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 91
    .local v1, json:Lorg/json/JSONObject;
    new-instance v4, Ltwitter4j/RelationshipJSONImpl;

    invoke-direct {v4, v1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 92
    .local v4, relationship:Ltwitter4j/Relationship;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 93
    invoke-static {v4, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    invoke-interface {v5, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v4           #relationship:Ltwitter4j/Relationship;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 98
    invoke-static {v5, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :cond_3
    return-object v5

    .line 101
    .end local v0           #i:I
    .end local v3           #list:Lorg/json/JSONArray;
    .end local v5           #relationships:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Relationship;>;"
    .end local v6           #size:I
    :catch_0
    move-exception v2

    .line 102
    .local v2, jsone:Lorg/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 103
    .end local v2           #jsone:Lorg/json/JSONException;
    :catch_1
    move-exception v7

    .line 104
    .local v7, te:Ltwitter4j/TwitterException;
    throw v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    if-ne p0, p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    instance-of v3, p1, Ltwitter4j/Relationship;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 184
    check-cast v0, Ltwitter4j/Relationship;

    .line 186
    .local v0, that:Ltwitter4j/Relationship;
    iget-wide v3, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    invoke-interface {v0}, Ltwitter4j/Relationship;->getSourceUserId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 187
    :cond_3
    iget-wide v3, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    invoke-interface {v0}, Ltwitter4j/Relationship;->getTargetUserId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 188
    :cond_4
    iget-object v3, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Relationship;->getSourceUserScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 189
    goto :goto_0

    .line 190
    :cond_5
    iget-object v3, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Relationship;->getTargetUserScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 191
    goto :goto_0
.end method

.method public getSourceUserId()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    return-wide v0
.end method

.method public getSourceUserScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    return-wide v0
.end method

.method public getTargetUserScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    iget-wide v4, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    iget-wide v6, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 199
    .local v0, result:I
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v4, v1

    .line 200
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    add-int v0, v4, v1

    .line 201
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    add-int v0, v4, v1

    .line 202
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_3
    add-int v0, v4, v1

    .line 203
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    if-eqz v4, :cond_5

    :goto_4
    add-int v0, v1, v3

    .line 204
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    iget-wide v5, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    ushr-long/2addr v5, v8

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 205
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 206
    return v0

    :cond_1
    move v1, v2

    .line 199
    goto :goto_0

    :cond_2
    move v1, v2

    .line 200
    goto :goto_1

    :cond_3
    move v1, v2

    .line 201
    goto :goto_2

    :cond_4
    move v1, v2

    .line 202
    goto :goto_3

    :cond_5
    move v3, v2

    .line 203
    goto :goto_4
.end method

.method public isSourceBlockingTarget()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    return v0
.end method

.method public isSourceFollowedByTarget()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0
.end method

.method public isSourceFollowingTarget()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0
.end method

.method public isSourceNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    return v0
.end method

.method public isTargetFollowedBySource()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0
.end method

.method public isTargetFollowingSource()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RelationshipJSONImpl{sourceUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceUserScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", targetUserScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceFollowingTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceFollowedByTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceNotificationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
