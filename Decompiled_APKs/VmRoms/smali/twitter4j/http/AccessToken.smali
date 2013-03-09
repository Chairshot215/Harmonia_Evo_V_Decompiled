.class public Ltwitter4j/http/AccessToken;
.super Ltwitter4j/http/OAuthToken;
.source "AccessToken.java"


# static fields
.field private static final serialVersionUID:J = -0x73cdb85869c93e33L


# instance fields
.field private screenName:Ljava/lang/String;

.field private userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v1, "screen_name"

    invoke-virtual {p0, v1}, Ltwitter4j/http/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    .line 49
    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Ltwitter4j/http/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, sUserId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltwitter4j/http/AccessToken;->userId:I

    .line 52
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;)V
    .locals 1
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Ltwitter4j/http/AccessToken;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
