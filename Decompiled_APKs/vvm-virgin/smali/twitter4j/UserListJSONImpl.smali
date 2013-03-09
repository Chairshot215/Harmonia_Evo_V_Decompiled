.class Ltwitter4j/UserListJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "UserListJSONImpl.java"

# interfaces
.implements Ltwitter4j/UserList;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x581124472812f726L


# instance fields
.field private description:Ljava/lang/String;

.field private following:Z

.field private fullName:Ljava/lang/String;

.field private id:I

.field private memberCount:I

.field private mode:Z

.field private name:Ljava/lang/String;

.field private slug:Ljava/lang/String;

.field private subscriberCount:I

.field private uri:Ljava/lang/String;

.field private user:Ltwitter4j/User;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 68
    invoke-direct {p0, p1}, Ltwitter4j/UserListJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 69
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
    .line 55
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 56
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 59
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 60
    .local v0, json:Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/UserListJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 61
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    return-void
.end method

.method static createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;
    .locals 10
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 181
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 183
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 184
    .local v1, json:Lorg/json/JSONObject;
    const-string v9, "lists"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 185
    .local v3, list:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 186
    .local v4, size:I
    new-instance v8, Ltwitter4j/PagableResponseListImpl;

    invoke-direct {v8, v4, v1, p0}, Ltwitter4j/PagableResponseListImpl;-><init>(ILorg/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V

    .line 188
    .local v8, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 189
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 190
    .local v7, userListJson:Lorg/json/JSONObject;
    new-instance v6, Ltwitter4j/UserListJSONImpl;

    invoke-direct {v6, v7}, Ltwitter4j/UserListJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 191
    .local v6, userList:Ltwitter4j/UserList;
    invoke-interface {v8, v6}, Ltwitter4j/PagableResponseList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 193
    invoke-static {v6, v7}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v6           #userList:Ltwitter4j/UserList;
    .end local v7           #userListJson:Lorg/json/JSONObject;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 197
    invoke-static {v8, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :cond_3
    return-object v8

    .line 200
    .end local v0           #i:I
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v3           #list:Lorg/json/JSONArray;
    .end local v4           #size:I
    .end local v8           #users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    :catch_0
    move-exception v2

    .line 201
    .local v2, jsone:Lorg/json/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    invoke-direct {v9, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 202
    .end local v2           #jsone:Lorg/json/JSONException;
    :catch_1
    move-exception v5

    .line 203
    .local v5, te:Ltwitter4j/TwitterException;
    throw v5
.end method

.method static createUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
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
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 211
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 213
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    .line 214
    .local v2, list:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 215
    .local v3, size:I
    new-instance v7, Ltwitter4j/ResponseListImpl;

    invoke-direct {v7, v3, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 217
    .local v7, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/UserList;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 218
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 219
    .local v6, userListJson:Lorg/json/JSONObject;
    new-instance v5, Ltwitter4j/UserListJSONImpl;

    invoke-direct {v5, v6}, Ltwitter4j/UserListJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 220
    .local v5, userList:Ltwitter4j/UserList;
    invoke-interface {v7, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 222
    invoke-static {v5, v6}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v5           #userList:Ltwitter4j/UserList;
    .end local v6           #userListJson:Lorg/json/JSONObject;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 226
    invoke-static {v7, v2}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :cond_3
    return-object v7

    .line 229
    .end local v0           #i:I
    .end local v2           #list:Lorg/json/JSONArray;
    .end local v3           #size:I
    .end local v7           #users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/UserList;>;"
    :catch_0
    move-exception v1

    .line 230
    .local v1, jsone:Lorg/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 231
    .end local v1           #jsone:Lorg/json/JSONException;
    :catch_1
    move-exception v4

    .line 232
    .local v4, te:Ltwitter4j/TwitterException;
    throw v4
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
    .line 72
    const-string v1, "id"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/UserListJSONImpl;->id:I

    .line 73
    const-string v1, "name"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->name:Ljava/lang/String;

    .line 74
    const-string v1, "full_name"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->fullName:Ljava/lang/String;

    .line 75
    const-string v1, "slug"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->slug:Ljava/lang/String;

    .line 76
    const-string v1, "description"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->description:Ljava/lang/String;

    .line 77
    const-string v1, "subscriber_count"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/UserListJSONImpl;->subscriberCount:I

    .line 78
    const-string v1, "member_count"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/UserListJSONImpl;->memberCount:I

    .line 79
    const-string v1, "uri"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->uri:Ljava/lang/String;

    .line 80
    const-string v1, "public"

    const-string v2, "mode"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/UserListJSONImpl;->mode:Z

    .line 81
    const-string v1, "following"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/UserListJSONImpl;->following:Z

    .line 84
    :try_start_0
    const-string v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ltwitter4j/UserJSONImpl;

    const-string v2, "user"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->user:Ltwitter4j/User;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, jsone:Lorg/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Ltwitter4j/UserList;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/UserListJSONImpl;->compareTo(Ltwitter4j/UserList;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/UserList;)I
    .locals 2
    .parameter "that"

    .prologue
    .line 93
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->id:I

    invoke-interface {p1}, Ltwitter4j/UserList;->getId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    if-nez p1, :cond_1

    move v0, v1

    .line 249
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 246
    .restart local p1
    :cond_1
    if-eq p0, p1, :cond_0

    .line 249
    instance-of v2, p1, Ltwitter4j/UserList;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/UserList;

    .end local p1
    invoke-interface {p1}, Ltwitter4j/UserList;->getId()I

    move-result v2

    iget v3, p0, Ltwitter4j/UserListJSONImpl;->id:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->id:I

    return v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->memberCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->subscriberCount:I

    return v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 3

    .prologue
    .line 150
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Ltwitter4j/UserListJSONImpl;->uri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, ex:Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->id:I

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Ltwitter4j/UserListJSONImpl;->following:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Ltwitter4j/UserListJSONImpl;->mode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UserListJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserListJSONImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fullName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", slug=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", subscriberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserListJSONImpl;->subscriberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", memberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserListJSONImpl;->memberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserListJSONImpl;->mode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", following="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserListJSONImpl;->following:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
