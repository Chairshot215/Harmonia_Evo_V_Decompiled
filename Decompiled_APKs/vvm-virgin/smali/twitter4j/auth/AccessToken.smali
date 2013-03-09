.class public Ltwitter4j/auth/AccessToken;
.super Ltwitter4j/auth/OAuthToken;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x73cdb85869c93e33L


# instance fields
.field private screenName:Ljava/lang/String;

.field private userId:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v1, "screen_name"

    invoke-virtual {p0, v1}, Ltwitter4j/auth/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    .line 40
    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Ltwitter4j/auth/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, sUserId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/auth/AccessToken;->userId:J

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    .local v1, sUserId:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J

    .line 53
    :cond_0
    return-void

    .line 49
    .end local v1           #sUserId:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid access token format."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 76
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

    .line 77
    :cond_3
    invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 79
    check-cast v0, Ltwitter4j/auth/AccessToken;

    .line 81
    .local v0, that:Ltwitter4j/auth/AccessToken;
    iget-wide v3, p0, Ltwitter4j/auth/AccessToken;->userId:J

    iget-wide v5, v0, Ltwitter4j/auth/AccessToken;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 82
    :cond_5
    iget-object v3, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 83
    goto :goto_0

    .line 82
    :cond_6
    iget-object v3, v0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Ltwitter4j/auth/AccessToken;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 90
    invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->hashCode()I

    move-result v0

    .line 91
    .local v0, result:I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J

    iget-wide v4, p0, Ltwitter4j/auth/AccessToken;->userId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 93
    return v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AccessToken{screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/auth/AccessToken;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
