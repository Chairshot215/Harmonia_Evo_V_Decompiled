.class public final Ltwitter4j/TwitterFactory;
.super Ljava/lang/Object;
.source "TwitterFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x481470a850d0e763L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "configTreePath"

    .prologue
    .line 63
    invoke-static {p1}, Ltwitter4j/conf/ConfigurationContext;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter "conf"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 55
    return-void
.end method


# virtual methods
.method public getInstance()Ltwitter4j/Twitter;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ltwitter4j/TwitterImpl;

    iget-object v1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object v2, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v2}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/TwitterImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    return-object v0
.end method

.method public getInstance(Ltwitter4j/auth/AccessToken;)Ltwitter4j/Twitter;
    .locals 5
    .parameter "accessToken"

    .prologue
    .line 85
    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, consumerKey:Ljava/lang/String;
    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, consumerSecret:Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 88
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Consumer key and Consumer secret not supplied."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_0
    new-instance v2, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v3}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 91
    .local v2, oauth:Ltwitter4j/auth/OAuthAuthorization;
    invoke-virtual {v2, p1}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 92
    new-instance v3, Ltwitter4j/TwitterImpl;

    iget-object v4, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v3, v4, v2}, Ltwitter4j/TwitterImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    return-object v3
.end method

.method public getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;
    .locals 2
    .parameter "auth"

    .prologue
    .line 96
    new-instance v0, Ltwitter4j/TwitterImpl;

    iget-object v1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, p1}, Ltwitter4j/TwitterImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    return-object v0
.end method
