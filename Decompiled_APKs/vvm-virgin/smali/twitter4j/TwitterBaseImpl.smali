.class abstract Ltwitter4j/TwitterBaseImpl;
.super Ljava/lang/Object;
.source "TwitterBaseImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/OAuthSupport;
.implements Ltwitter4j/internal/http/HttpResponseListener;


# static fields
.field private static final serialVersionUID:J = -0x34e79201c9363e6cL


# instance fields
.field protected auth:Ltwitter4j/auth/Authorization;

.field protected conf:Ltwitter4j/conf/Configuration;

.field protected transient http:Ltwitter4j/internal/http/HttpClientWrapper;

.field protected transient id:J

.field private rateLimitStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/RateLimitStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field protected transient screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter "conf"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltwitter4j/TwitterBaseImpl;->id:J

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    .line 59
    iput-object p1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    .line 60
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->init()V

    .line 61
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
    .locals 2
    .parameter "conf"
    .parameter "auth"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltwitter4j/TwitterBaseImpl;->id:J

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    .line 64
    iput-object p1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    .line 65
    iput-object p2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 66
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->init()V

    .line 67
    return-void
.end method

.method private getOAuth()Ltwitter4j/auth/OAuthSupport;
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v0, v0, Ltwitter4j/auth/OAuthSupport;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth consumer key/secret combination not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    check-cast v0, Ltwitter4j/auth/OAuthSupport;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 70
    iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    if-nez v5, :cond_1

    .line 72
    iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, consumerKey:Ljava/lang/String;
    iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, consumerSecret:Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 76
    new-instance v4, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v4, v5}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 77
    .local v4, oauth:Ltwitter4j/auth/OAuthAuthorization;
    iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, accessToken:Ljava/lang/String;
    iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, accessTokenSecret:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 80
    new-instance v5, Ltwitter4j/auth/AccessToken;

    invoke-direct {v5, v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 82
    :cond_0
    iput-object v4, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 87
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v1           #accessTokenSecret:Ljava/lang/String;
    .end local v2           #consumerKey:Ljava/lang/String;
    .end local v3           #consumerSecret:Ljava/lang/String;
    .end local v4           #oauth:Ltwitter4j/auth/OAuthAuthorization;
    :cond_1
    :goto_0
    new-instance v5, Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v5, v6}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v5, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 88
    iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v5, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V

    .line 89
    return-void

    .line 84
    .restart local v2       #consumerKey:Ljava/lang/String;
    .restart local v3       #consumerSecret:Ljava/lang/String;
    :cond_2
    invoke-static {}, Ltwitter4j/auth/NullAuthorization;->getInstance()Ltwitter4j/auth/NullAuthorization;

    move-result-object v5

    iput-object v5, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/conf/Configuration;

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    .line 228
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/auth/Authorization;

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 229
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    .line 230
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 231
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v0, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V

    .line 232
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 215
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v2, serializableRateLimitStatusListeners:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/RateLimitStatusListener;>;"
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/RateLimitStatusListener;

    .line 218
    .local v1, listener:Ltwitter4j/RateLimitStatusListener;
    instance-of v3, v1, Ljava/io/Serializable;

    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v1           #listener:Ltwitter4j/RateLimitStatusListener;
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 223
    return-void
.end method


# virtual methods
.method public addRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 142
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method protected final ensureAuthorizationEnabled()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Authentication credentials are missing. See http://twitter4j.org/configuration.html for the detail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    return-void
.end method

.method protected final ensureOAuthEnabled()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v0, v0, Ltwitter4j/auth/OAuthAuthorization;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth required. Authentication credentials are missing. See http://twitter4j.org/configuration.html for the detail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    if-ne p0, p1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    instance-of v3, p1, Ltwitter4j/TwitterBaseImpl;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 374
    check-cast v0, Ltwitter4j/TwitterBaseImpl;

    .line 376
    .local v0, that:Ltwitter4j/TwitterBaseImpl;
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 377
    goto :goto_0

    .line 376
    :cond_4
    iget-object v3, v0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    if-nez v3, :cond_3

    .line 378
    :cond_5
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 379
    :cond_6
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 380
    goto :goto_0

    .line 379
    :cond_8
    iget-object v3, v0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-nez v3, :cond_7

    .line 381
    :cond_9
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 382
    goto :goto_0
.end method

.method protected fillInIDAndScreenName()Ltwitter4j/User;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->ensureAuthorizationEnabled()V

    .line 131
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account/verify_credentials.json?include_entities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    .line 133
    .local v0, user:Ltwitter4j/User;
    invoke-interface {v0}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 134
    invoke-interface {v0}, Ltwitter4j/User;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/TwitterBaseImpl;->id:J

    .line 135
    return-object v0
.end method

.method public final getAuthorization()Ltwitter4j/auth/Authorization;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    return-object v0
.end method

.method public getConfiguration()Ltwitter4j/conf/Configuration;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    return-object v0
.end method

.method public getId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/TwitterBaseImpl;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->fillInIDAndScreenName()Ltwitter4j/User;

    .line 126
    :cond_1
    iget-wide v0, p0, Ltwitter4j/TwitterBaseImpl;->id:J

    return-wide v0
.end method

.method public declared-synchronized getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v1

    .line 286
    .local v1, auth:Ltwitter4j/auth/Authorization;
    instance-of v6, v1, Ltwitter4j/auth/BasicAuthorization;

    if-eqz v6, :cond_1

    .line 287
    move-object v0, v1

    check-cast v0, Ltwitter4j/auth/BasicAuthorization;

    move-object v2, v0

    .line 288
    .local v2, basicAuth:Ltwitter4j/auth/BasicAuthorization;
    iget-object v6, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v6}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v1

    .line 289
    instance-of v6, v1, Ltwitter4j/auth/OAuthAuthorization;

    if-eqz v6, :cond_0

    .line 290
    iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 291
    move-object v0, v1

    check-cast v0, Ltwitter4j/auth/OAuthAuthorization;

    move-object v4, v0

    .line 292
    .local v4, oauthAuth:Ltwitter4j/auth/OAuthAuthorization;
    invoke-virtual {v2}, Ltwitter4j/auth/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ltwitter4j/auth/BasicAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v3

    .line 307
    .end local v2           #basicAuth:Ltwitter4j/auth/BasicAuthorization;
    .end local v4           #oauthAuth:Ltwitter4j/auth/OAuthAuthorization;
    .local v3, oauthAccessToken:Ltwitter4j/auth/AccessToken;
    :goto_0
    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 308
    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getUserId()J

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/TwitterBaseImpl;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-object v3

    .line 294
    .end local v3           #oauthAccessToken:Ltwitter4j/auth/AccessToken;
    .restart local v2       #basicAuth:Ltwitter4j/auth/BasicAuthorization;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "consumer key / secret combination not supplied."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    .end local v1           #auth:Ltwitter4j/auth/Authorization;
    .end local v2           #basicAuth:Ltwitter4j/auth/BasicAuthorization;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 297
    .restart local v1       #auth:Ltwitter4j/auth/Authorization;
    :cond_1
    :try_start_2
    instance-of v6, v1, Ltwitter4j/internal/http/XAuthAuthorization;

    if-eqz v6, :cond_2

    .line 298
    move-object v0, v1

    check-cast v0, Ltwitter4j/internal/http/XAuthAuthorization;

    move-object v5, v0

    .line 299
    .local v5, xauth:Ltwitter4j/internal/http/XAuthAuthorization;
    iput-object v5, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 300
    new-instance v4, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v6, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v4, v6}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 301
    .restart local v4       #oauthAuth:Ltwitter4j/auth/OAuthAuthorization;
    invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getConsumerKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getConsumerSecret()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v3

    .line 303
    .restart local v3       #oauthAccessToken:Ltwitter4j/auth/AccessToken;
    goto :goto_0

    .line 304
    .end local v3           #oauthAccessToken:Ltwitter4j/auth/AccessToken;
    .end local v4           #oauthAuth:Ltwitter4j/auth/OAuthAuthorization;
    .end local v5           #xauth:Ltwitter4j/internal/http/XAuthAuthorization;
    :cond_2
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v6

    invoke-interface {v6}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .restart local v3       #oauthAccessToken:Ltwitter4j/auth/AccessToken;
    goto :goto_0
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 2
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v1

    invoke-interface {v1, p1}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    .line 320
    .local v0, oauthAccessToken:Ltwitter4j/auth/AccessToken;
    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-object v0

    .line 319
    .end local v0           #oauthAccessToken:Ltwitter4j/auth/AccessToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .parameter "screenName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
    .locals 3
    .parameter "requestToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    .line 331
    .local v0, oauth:Ltwitter4j/auth/OAuthSupport;
    invoke-interface {v0, p1}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;

    move-result-object v1

    .line 332
    .local v1, oauthAccessToken:Ltwitter4j/auth/AccessToken;
    invoke-virtual {v1}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-object v1

    .line 330
    .end local v0           #oauth:Ltwitter4j/auth/OAuthSupport;
    .end local v1           #oauthAccessToken:Ltwitter4j/auth/AccessToken;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .parameter "requestToken"
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/auth/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterBaseImpl;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .parameter "callbackUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/auth/OAuthSupport;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v0, v0, Ltwitter4j/auth/BasicAuthorization;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    check-cast v0, Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 102
    const/4 v0, -0x1

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 106
    :cond_1
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->fillInIDAndScreenName()Ltwitter4j/User;

    .line 111
    :cond_2
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 390
    .local v0, result:I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpClientWrapper;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 391
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 392
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 393
    return v0

    :cond_1
    move v1, v2

    .line 390
    goto :goto_0
.end method

.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 146
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 147
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->getResponse()Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    .line 148
    .local v3, res:Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->getTwitterException()Ltwitter4j/TwitterException;

    move-result-object v6

    .line 151
    .local v6, te:Ltwitter4j/TwitterException;
    if-eqz v6, :cond_1

    .line 152
    invoke-virtual {v6}, Ltwitter4j/TwitterException;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v2

    .line 153
    .local v2, rateLimitStatus:Ltwitter4j/RateLimitStatus;
    invoke-virtual {v6}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v4

    .line 158
    .local v4, statusCode:I
    :goto_0
    if-eqz v2, :cond_3

    .line 159
    new-instance v5, Ltwitter4j/RateLimitStatusEvent;

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->isAuthenticated()Z

    move-result v7

    invoke-direct {v5, p0, v2, v7}, Ltwitter4j/RateLimitStatusEvent;-><init>(Ljava/lang/Object;Ltwitter4j/RateLimitStatus;Z)V

    .line 161
    .local v5, statusEvent:Ltwitter4j/RateLimitStatusEvent;
    const/16 v7, 0x1a4

    if-eq v4, v7, :cond_0

    const/16 v7, 0x1f7

    if-ne v4, v7, :cond_2

    .line 165
    :cond_0
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/RateLimitStatusListener;

    .line 166
    .local v1, listener:Ltwitter4j/RateLimitStatusListener;
    invoke-interface {v1, v5}, Ltwitter4j/RateLimitStatusListener;->onRateLimitStatus(Ltwitter4j/RateLimitStatusEvent;)V

    .line 167
    invoke-interface {v1, v5}, Ltwitter4j/RateLimitStatusListener;->onRateLimitReached(Ltwitter4j/RateLimitStatusEvent;)V

    goto :goto_1

    .line 155
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Ltwitter4j/RateLimitStatusListener;
    .end local v2           #rateLimitStatus:Ltwitter4j/RateLimitStatus;
    .end local v4           #statusCode:I
    .end local v5           #statusEvent:Ltwitter4j/RateLimitStatusEvent;
    :cond_1
    invoke-static {v3}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v2

    .line 156
    .restart local v2       #rateLimitStatus:Ltwitter4j/RateLimitStatus;
    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v4

    .restart local v4       #statusCode:I
    goto :goto_0

    .line 170
    .restart local v5       #statusEvent:Ltwitter4j/RateLimitStatusEvent;
    :cond_2
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/RateLimitStatusListener;

    .line 171
    .restart local v1       #listener:Ltwitter4j/RateLimitStatusListener;
    invoke-interface {v1, v5}, Ltwitter4j/RateLimitStatusListener;->onRateLimitStatus(Ltwitter4j/RateLimitStatusEvent;)V

    goto :goto_2

    .line 176
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Ltwitter4j/RateLimitStatusListener;
    .end local v2           #rateLimitStatus:Ltwitter4j/RateLimitStatus;
    .end local v3           #res:Ltwitter4j/internal/http/HttpResponse;
    .end local v4           #statusCode:I
    .end local v5           #statusEvent:Ltwitter4j/RateLimitStatusEvent;
    .end local v6           #te:Ltwitter4j/TwitterException;
    :cond_3
    return-void
.end method

.method public declared-synchronized setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/auth/OAuthSupport;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 241
    monitor-enter p0

    if-nez p1, :cond_0

    .line 242
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "consumer key is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 244
    :cond_0
    if-nez p2, :cond_1

    .line 245
    :try_start_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "consumer secret is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_1
    iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v2, v2, Ltwitter4j/auth/NullAuthorization;

    if-eqz v2, :cond_3

    .line 248
    new-instance v0, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v2}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 249
    .local v0, oauth:Ltwitter4j/auth/OAuthAuthorization;
    invoke-virtual {v0, p1, p2}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v0           #oauth:Ltwitter4j/auth/OAuthAuthorization;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_3
    :try_start_2
    iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v2, v2, Ltwitter4j/auth/BasicAuthorization;

    if-eqz v2, :cond_4

    .line 252
    new-instance v1, Ltwitter4j/internal/http/XAuthAuthorization;

    iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    check-cast v2, Ltwitter4j/auth/BasicAuthorization;

    invoke-direct {v1, v2}, Ltwitter4j/internal/http/XAuthAuthorization;-><init>(Ltwitter4j/auth/BasicAuthorization;)V

    .line 253
    .local v1, xauth:Ltwitter4j/internal/http/XAuthAuthorization;
    invoke-virtual {v1, p1, p2}, Ltwitter4j/internal/http/XAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    goto :goto_0

    .line 255
    .end local v1           #xauth:Ltwitter4j/internal/http/XAuthAuthorization;
    :cond_4
    iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v2, v2, Ltwitter4j/auth/OAuthAuthorization;

    if-eqz v2, :cond_2

    .line 256
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "consumer key/secret pair already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpClientWrapper;->shutdown()V

    .line 197
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TwitterBase{conf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", http="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", rateLimitStatusListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
