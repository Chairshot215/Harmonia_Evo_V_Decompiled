.class final Ltwitter4j/UserJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "UserJSONImpl.java"

# interfaces
.implements Ltwitter4j/User;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x581124472812f726L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private favouritesCount:I

.field private followersCount:I

.field private friendsCount:I

.field private id:J

.field private isContributorsEnabled:Z

.field private isFollowRequestSent:Z

.field private isGeoEnabled:Z

.field private isProtected:Z

.field private isVerified:Z

.field private lang:Ljava/lang/String;

.field private listedCount:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private profileBackgroundColor:Ljava/lang/String;

.field private profileBackgroundImageUrl:Ljava/lang/String;

.field private profileBackgroundTiled:Z

.field private profileImageUrl:Ljava/lang/String;

.field private profileLinkColor:Ljava/lang/String;

.field private profileSidebarBorderColor:Ljava/lang/String;

.field private profileSidebarFillColor:Ljava/lang/String;

.field private profileTextColor:Ljava/lang/String;

.field private profileUseBackgroundImage:Z

.field private screenName:Ljava/lang/String;

.field private showAllInlineMedia:Z

.field private status:Ltwitter4j/Status;

.field private statusesCount:I

.field private timeZone:Ljava/lang/String;

.field private translator:Z

.field private url:Ljava/lang/String;

.field private utcOffset:I


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
    .line 93
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 94
    invoke-direct {p0, p1}, Ltwitter4j/UserJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 95
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
    .line 81
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 82
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 85
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    .local v0, json:Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/UserJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 87
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    return-void
.end method

.method static createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;
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
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 377
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 378
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 380
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 381
    .local v1, json:Lorg/json/JSONObject;
    const-string v9, "users"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 382
    .local v3, list:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 383
    .local v4, size:I
    new-instance v8, Ltwitter4j/PagableResponseListImpl;

    invoke-direct {v8, v4, v1, p0}, Ltwitter4j/PagableResponseListImpl;-><init>(ILorg/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V

    .line 385
    .local v8, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 386
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 387
    .local v7, userJson:Lorg/json/JSONObject;
    new-instance v6, Ltwitter4j/UserJSONImpl;

    invoke-direct {v6, v7}, Ltwitter4j/UserJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 388
    .local v6, user:Ltwitter4j/User;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 389
    invoke-static {v6, v7}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_1
    invoke-interface {v8, v6}, Ltwitter4j/PagableResponseList;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    .end local v6           #user:Ltwitter4j/User;
    .end local v7           #userJson:Lorg/json/JSONObject;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 394
    invoke-static {v8, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :cond_3
    return-object v8

    .line 397
    .end local v0           #i:I
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v3           #list:Lorg/json/JSONArray;
    .end local v4           #size:I
    .end local v8           #users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    :catch_0
    move-exception v2

    .line 398
    .local v2, jsone:Lorg/json/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    invoke-direct {v9, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 399
    .end local v2           #jsone:Lorg/json/JSONException;
    :catch_1
    move-exception v5

    .line 400
    .local v5, te:Ltwitter4j/TwitterException;
    throw v5
.end method

.method static createUserList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 8
    .parameter "list"
    .parameter "res"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 412
    :try_start_0
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 413
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 416
    .local v3, size:I
    new-instance v6, Ltwitter4j/ResponseListImpl;

    invoke-direct {v6, v3, p1}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 418
    .local v6, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 419
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 420
    .local v1, json:Lorg/json/JSONObject;
    new-instance v5, Ltwitter4j/UserJSONImpl;

    invoke-direct {v5, v1}, Ltwitter4j/UserJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 421
    .local v5, user:Ltwitter4j/User;
    invoke-interface {v6, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 423
    invoke-static {v5, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v5           #user:Ltwitter4j/User;
    :cond_2
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 427
    invoke-static {v6, p0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 429
    :cond_3
    return-object v6

    .line 430
    .end local v0           #i:I
    .end local v3           #size:I
    .end local v6           #users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    :catch_0
    move-exception v2

    .line 431
    .local v2, jsone:Lorg/json/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 432
    .end local v2           #jsone:Lorg/json/JSONException;
    :catch_1
    move-exception v4

    .line 433
    .local v4, te:Ltwitter4j/TwitterException;
    throw v4
.end method

.method static createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 1
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
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ltwitter4j/UserJSONImpl;->createUserList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    const-string v2, "id"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/UserJSONImpl;->id:J

    .line 100
    const-string v2, "name"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    .line 101
    const-string v2, "screen_name"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    .line 102
    const-string v2, "location"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    .line 103
    const-string v2, "description"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    .line 104
    const-string v2, "contributors_enabled"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    .line 105
    const-string v2, "profile_image_url"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    .line 106
    const-string v2, "url"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    .line 107
    const-string v2, "protected"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    .line 108
    const-string v2, "geo_enabled"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    .line 109
    const-string v2, "verified"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    .line 110
    const-string v2, "is_translator"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->translator:Z

    .line 111
    const-string v2, "followers_count"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    .line 113
    const-string v2, "profile_background_color"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    .line 114
    const-string v2, "profile_text_color"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    .line 115
    const-string v2, "profile_link_color"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    .line 116
    const-string v2, "profile_sidebar_fill_color"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    .line 117
    const-string v2, "profile_sidebar_border_color"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    .line 118
    const-string v2, "profile_use_background_image"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->profileUseBackgroundImage:Z

    .line 119
    const-string v2, "show_all_inline_media"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->showAllInlineMedia:Z

    .line 120
    const-string v2, "friends_count"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    .line 121
    const-string v2, "created_at"

    const-string v3, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v2, p1, v3}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    .line 122
    const-string v2, "favourites_count"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    .line 123
    const-string v2, "utc_offset"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    .line 124
    const-string v2, "time_zone"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    .line 125
    const-string v2, "profile_background_image_url"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    .line 126
    const-string v2, "profile_background_tile"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    .line 127
    const-string v2, "lang"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    .line 128
    const-string v2, "statuses_count"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    .line 129
    const-string v2, "listed_count"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->listedCount:I

    .line 130
    const-string v2, "follow_request_sent"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isFollowRequestSent:Z

    .line 131
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 133
    .local v1, statusJSON:Lorg/json/JSONObject;
    new-instance v2, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v2, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1           #statusJSON:Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, jsone:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Ltwitter4j/User;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/UserJSONImpl;->compareTo(Ltwitter4j/User;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/User;)I
    .locals 4
    .parameter "that"

    .prologue
    .line 141
    iget-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/User;->getId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 444
    if-nez p1, :cond_1

    move v0, v1

    .line 450
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 447
    .restart local p1
    :cond_1
    if-eq p0, p1, :cond_0

    .line 450
    instance-of v2, p1, Ltwitter4j/User;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/User;

    .end local p1
    invoke-interface {p1}, Ltwitter4j/User;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/UserJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavouritesCount()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    return v0
.end method

.method public getFollowersCount()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    return v0
.end method

.method public getFriendsCount()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getListedCount()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Ltwitter4j/UserJSONImpl;->listedCount:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageURL()Ljava/net/URL;
    .locals 3

    .prologue
    .line 191
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, ex:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileLinkColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarBorderColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarFillColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ltwitter4j/Status;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    return-object v0
.end method

.method public getStatusesCount()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 3

    .prologue
    .line 202
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, ex:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUtcOffset()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 439
    iget-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isContributorsEnabled()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    return v0
.end method

.method public isFollowRequestSent()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isFollowRequestSent:Z

    return v0
.end method

.method public isGeoEnabled()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    return v0
.end method

.method public isProfileBackgroundTiled()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    return v0
.end method

.method public isProfileUseBackgroundImage()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileUseBackgroundImage:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    return v0
.end method

.method public isShowAllInlineMedia()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->showAllInlineMedia:Z

    return v0
.end method

.method public isTranslator()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->translator:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 455
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UserJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/UserJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isContributorsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", followersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileTextColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileLinkColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileSidebarFillColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileSidebarBorderColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileUseBackgroundImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->profileUseBackgroundImage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", showAllInlineMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->showAllInlineMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", friendsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", favouritesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", utcOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", timeZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundTiled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isGeoEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", translator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->translator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", listedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->listedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isFollowRequestSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isFollowRequestSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
