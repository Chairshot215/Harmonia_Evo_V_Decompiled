.class final Ltwitter4j/RelatedResultsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "RelatedResultsJSONImpl.java"

# interfaces
.implements Ltwitter4j/RelatedResults;
.implements Ljava/io/Serializable;


# static fields
.field private static final TWEETS_FROM_USER:Ljava/lang/String; = "TweetsFromUser"

.field private static final TWEETS_WITH_CONVERSATION:Ljava/lang/String; = "TweetsWithConversation"

.field private static final TWEETS_WITH_REPLY:Ljava/lang/String; = "TweetsWithReply"

.field private static final serialVersionUID:J = -0x66eeb264b8d19c33L


# instance fields
.field private tweetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/json/JSONArray;)V
    .locals 2
    .parameter "jsonArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ltwitter4j/RelatedResultsJSONImpl;->init(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Z)V

    .line 56
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 45
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 48
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 49
    .local v0, jsonArray:Lorg/json/JSONArray;
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Ltwitter4j/RelatedResultsJSONImpl;->init(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Z)V

    .line 50
    return-void
.end method

.method private init(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Z)V
    .locals 13
    .parameter "jsonArray"
    .parameter "res"
    .parameter "registerRawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v11, Ljava/util/HashMap;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V

    iput-object v11, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    .line 61
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, listLen:I
    :goto_0
    if-ge v1, v5, :cond_6

    .line 62
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 63
    .local v6, o:Lorg/json/JSONObject;
    const-string v11, "Tweet"

    const-string v12, "resultType"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 61
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const-string v11, "groupName"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, groupName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "TweetsWithConversation"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "TweetsWithReply"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "TweetsFromUser"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 73
    :cond_2
    const-string v11, "results"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 74
    .local v7, results:Lorg/json/JSONArray;
    iget-object v11, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltwitter4j/ResponseList;

    .line 75
    .local v10, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    if-nez v10, :cond_3

    .line 76
    new-instance v10, Ltwitter4j/ResponseListImpl;

    .end local v10           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-direct {v10, v11, p2}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 77
    .restart local v10       #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    iget-object v11, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_3
    const/4 v2, 0x0

    .local v2, j:I
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .local v8, resultsLen:I
    :goto_2
    if-ge v2, v8, :cond_5

    .line 81
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "value"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 82
    .local v3, json:Lorg/json/JSONObject;
    new-instance v9, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v9, v3}, Ltwitter4j/StatusJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 83
    .local v9, status:Ltwitter4j/Status;
    if-eqz p3, :cond_4

    .line 84
    invoke-static {v9, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_4
    invoke-interface {v10, v9}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v9           #status:Ltwitter4j/Status;
    :cond_5
    if-eqz p3, :cond_0

    .line 89
    invoke-static {v10, v7}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    .end local v0           #groupName:Ljava/lang/String;
    .end local v2           #j:I
    .end local v5           #listLen:I
    .end local v6           #o:Lorg/json/JSONObject;
    .end local v7           #results:Lorg/json/JSONArray;
    .end local v8           #resultsLen:I
    .end local v10           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :catch_0
    move-exception v4

    .line 93
    .local v4, jsone:Lorg/json/JSONException;
    new-instance v11, Ltwitter4j/TwitterException;

    invoke-direct {v11, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 95
    .end local v4           #jsone:Lorg/json/JSONException;
    .restart local v5       #listLen:I
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 143
    instance-of v2, p1, Ltwitter4j/RelatedResultsJSONImpl;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 144
    check-cast v0, Ltwitter4j/RelatedResultsJSONImpl;

    .line 145
    .local v0, other:Ltwitter4j/RelatedResultsJSONImpl;
    iget-object v2, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 146
    iget-object v2, v0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 152
    .end local v0           #other:Ltwitter4j/RelatedResultsJSONImpl;
    :cond_0
    :goto_0
    return v1

    .line 148
    .restart local v0       #other:Ltwitter4j/RelatedResultsJSONImpl;
    :cond_1
    iget-object v2, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    iget-object v3, v0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getTweetsFromUser()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    const-string v2, "TweetsFromUser"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/ResponseList;

    .line 126
    .local v0, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    if-eqz v0, :cond_0

    .line 129
    .end local v0           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :goto_0
    return-object v0

    .restart local v0       #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :cond_0
    new-instance v0, Ltwitter4j/ResponseListImpl;

    .end local v0           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0
.end method

.method public getTweetsWithConversation()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    const-string v2, "TweetsWithConversation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/ResponseList;

    .line 102
    .local v0, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    if-eqz v0, :cond_0

    .line 105
    .end local v0           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :goto_0
    return-object v0

    .restart local v0       #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :cond_0
    new-instance v0, Ltwitter4j/ResponseListImpl;

    .end local v0           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0
.end method

.method public getTweetsWithReply()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v1, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    const-string v2, "TweetsWithReply"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/ResponseList;

    .line 114
    .local v0, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    if-eqz v0, :cond_0

    .line 117
    .end local v0           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :goto_0
    return-object v0

    .restart local v0       #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :cond_0
    new-instance v0, Ltwitter4j/ResponseListImpl;

    .end local v0           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 135
    const/16 v0, 0x1f

    .line 136
    .local v0, prime:I
    const/4 v1, 0x1

    .line 137
    .local v1, result:I
    iget-object v2, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 138
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RelatedResultsJSONImpl {tweetsMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RelatedResultsJSONImpl;->tweetsMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
