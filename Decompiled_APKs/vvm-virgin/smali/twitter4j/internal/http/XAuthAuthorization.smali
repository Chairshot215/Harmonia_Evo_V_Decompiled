.class public Ltwitter4j/internal/http/XAuthAuthorization;
.super Ljava/lang/Object;
.source "XAuthAuthorization.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x546935272b169ec6L


# instance fields
.field private basic:Ltwitter4j/auth/BasicAuthorization;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltwitter4j/auth/BasicAuthorization;)V
    .locals 0
    .parameter "basic"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    .line 35
    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .locals 1
    .parameter "req"

    .prologue
    .line 38
    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0, p1}, Ltwitter4j/auth/BasicAuthorization;->getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltwitter4j/internal/http/XAuthAuthorization;->consumerKey:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Ltwitter4j/internal/http/XAuthAuthorization;->consumerSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
