.class public Ltwitter4j/http/RequestToken;
.super Ltwitter4j/http/OAuthToken;
.source "RequestToken.java"


# static fields
.field private static final serialVersionUID:J = -0x71ff4a3702538200L


# instance fields
.field private httpClient:Ltwitter4j/http/HttpClient;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;Ltwitter4j/http/HttpClient;)V
    .locals 0
    .parameter "res"
    .parameter "httpClient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ltwitter4j/http/OAuthToken;-><init>(Ltwitter4j/http/Response;)V

    .line 41
    iput-object p2, p0, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 74
    :goto_0
    return v2

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 67
    :cond_2
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    .line 69
    :cond_3
    move-object v0, p1

    check-cast v0, Ltwitter4j/http/RequestToken;

    move-object v1, v0

    .line 71
    .local v1, that:Ltwitter4j/http/RequestToken;
    iget-object v2, p0, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    iget-object v3, v1, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    invoke-virtual {v2, v3}, Ltwitter4j/http/HttpClient;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v2, v4

    .line 72
    goto :goto_0

    .line 71
    :cond_5
    iget-object v2, v1, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    if-nez v2, :cond_4

    :cond_6
    move v2, v5

    .line 74
    goto :goto_0
.end method

.method public getAccessToken()Ltwitter4j/http/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p0}, Ltwitter4j/http/HttpClient;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    invoke-virtual {v1}, Ltwitter4j/http/HttpClient;->getAuthenticationRL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?oauth_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/http/RequestToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    invoke-virtual {v1}, Ltwitter4j/http/HttpClient;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?oauth_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/http/RequestToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->hashCode()I

    move-result v0

    .line 80
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/http/RequestToken;->httpClient:Ltwitter4j/http/HttpClient;

    invoke-virtual {v2}, Ltwitter4j/http/HttpClient;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 81
    return v0

    .line 80
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
