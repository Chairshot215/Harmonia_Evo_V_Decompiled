.class Ltwitter4j/TwitterImpl;
.super Ltwitter4j/TwitterBaseImpl;
.source "TwitterImpl.java"

# interfaces
.implements Ltwitter4j/Twitter;


# static fields
.field private static final serialVersionUID:J = -0x14a09c9e28673704L


# instance fields
.field private final INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

.field private final INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
    .locals 3
    .parameter "conf"
    .parameter "auth"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterBaseImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    .line 52
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    const-string v1, "include_entities"

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    .line 53
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    const-string v1, "include_rts"

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    .line 54
    return-void
.end method

.method private addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "paramName"
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1222
    .local p1, colors:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p3, :cond_0

    .line 1223
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    :cond_0
    return-void
.end method

.method private checkFileValidity(Ljava/io/File;)V
    .locals 4
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1285
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1289
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1291
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not a file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1293
    :cond_1
    return-void
.end method

.method private delete(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1780
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1781
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->delete(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1792
    :goto_0
    return-object v2

    .line 1784
    :cond_0
    const/4 v2, 0x0

    .line 1785
    .local v2, response:Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1787
    .local v3, start:J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->delete(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1790
    .local v0, elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1789
    .end local v0           #elapsedTime:J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1790
    .restart local v0       #elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1791
    throw v5
.end method

.method private get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1712
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1713
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1724
    :goto_0
    return-object v2

    .line 1716
    :cond_0
    const/4 v2, 0x0

    .line 1717
    .local v2, response:Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1719
    .local v3, start:J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1722
    .local v0, elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1721
    .end local v0           #elapsedTime:J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1722
    .restart local v0       #elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1723
    throw v5
.end method

.method private get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .parameter "url"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1729
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1730
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, p2, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1741
    :goto_0
    return-object v2

    .line 1733
    :cond_0
    const/4 v2, 0x0

    .line 1734
    .local v2, response:Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1736
    .local v3, start:J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, p2, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1739
    .local v0, elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1738
    .end local v0           #elapsedTime:J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1739
    .restart local v0       #elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1740
    throw v5
.end method

.method private isOk(Ltwitter4j/internal/http/HttpResponse;)Z
    .locals 2
    .parameter "response"

    .prologue
    .line 1797
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 3
    .parameter "params1"
    .parameter "params2"

    .prologue
    const/4 v2, 0x0

    .line 78
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 79
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    .line 80
    .local v0, params:[Ltwitter4j/internal/http/HttpParameter;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p2, v0, v1

    .line 90
    .end local v0           #params:[Ltwitter4j/internal/http/HttpParameter;
    :goto_0
    return-object v0

    .line 84
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 85
    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 88
    goto :goto_0

    .line 90
    :cond_2
    const/4 v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    aput-object p2, v0, v2

    goto :goto_0
.end method

.method private mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 4
    .parameter "params1"
    .parameter "params2"

    .prologue
    const/4 v3, 0x0

    .line 61
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 62
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    .line 63
    .local v0, params:[Ltwitter4j/internal/http/HttpParameter;
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .end local v0           #params:[Ltwitter4j/internal/http/HttpParameter;
    :goto_0
    return-object v0

    .line 67
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 68
    new-array v0, v3, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0

    .line 70
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 71
    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 73
    goto :goto_0
.end method

.method private post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1746
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1747
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1758
    :goto_0
    return-object v2

    .line 1750
    :cond_0
    const/4 v2, 0x0

    .line 1751
    .local v2, response:Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1753
    .local v3, start:J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1756
    .local v0, elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1755
    .end local v0           #elapsedTime:J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1756
    .restart local v0       #elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1757
    throw v5
.end method

.method private post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .parameter "url"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1763
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1764
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, p2, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1775
    :goto_0
    return-object v2

    .line 1767
    :cond_0
    const/4 v2, 0x0

    .line 1768
    .local v2, response:Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1770
    .local v3, start:J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, p2, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1773
    .local v0, elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1772
    .end local v0           #elapsedTime:J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1773
    .restart local v0       #elapsedTime:J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1774
    throw v5
.end method

.method private toDateStr(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance p1, Ljava/util/Date;

    .end local p1
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 152
    .restart local p1
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addUserListMember(IJ)Ltwitter4j/UserList;
    .locals 3
    .parameter "listId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 785
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/members.json?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public addUserListMembers(I[J)Ltwitter4j/UserList;
    .locals 3
    .parameter "listId"
    .parameter "userIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 794
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/members/create_all.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public addUserListMembers(I[Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 3
    .parameter "listId"
    .parameter "screenNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 802
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 803
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/members/create_all.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public checkUserListMembership(Ljava/lang/String;IJ)Ltwitter4j/User;
    .locals 3
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 821
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/members/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public checkUserListSubscription(Ljava/lang/String;IJ)Ltwitter4j/User;
    .locals 3
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 862
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/subscribers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createBlock(J)Ltwitter4j/User;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1404
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1405
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1395
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1396
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFavorite(J)Ltwitter4j/Status;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1339
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1340
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "favorites/create/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFriendship(J)Ltwitter4j/User;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 968
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 969
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFriendship(JZ)Ltwitter4j/User;
    .locals 3
    .parameter "userId"
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 987
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&follow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 960
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;Z)Ltwitter4j/User;
    .locals 3
    .parameter "screenName"
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 977
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 978
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&follow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createPlace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/GeoLocation;Ljava/lang/String;)Ltwitter4j/Place;
    .locals 5
    .parameter "name"
    .parameter "containedWithin"
    .parameter "token"
    .parameter "location"
    .parameter "streetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1639
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1640
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1641
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "contained_within"

    invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1642
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "token"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "lat"

    invoke-virtual {p4}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1644
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "long"

    invoke-virtual {p4}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1645
    if-eqz p5, :cond_0

    .line 1646
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "attribute:street_address"

    invoke-direct {v1, v2, p5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    :cond_0
    new-instance v2, Ltwitter4j/PlaceJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "geo/place.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2
.end method

.method public createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 6
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1532
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1533
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "saved_searches/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "query"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createUserList(Ljava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 4
    .parameter "listName"
    .parameter "isPublicList"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v0, httpParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "mode"

    if-eqz p2, :cond_1

    const-string v1, "public"

    :goto_0
    invoke-direct {v2, v3, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    if-eqz p3, :cond_0

    .line 651
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "description"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_0
    new-instance v2, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "/lists.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2

    .line 649
    :cond_1
    const-string v1, "private"

    goto :goto_0
.end method

.method public deleteUserListMember(IJ)Ltwitter4j/UserList;
    .locals 3
    .parameter "listId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 812
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/members.json?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->delete(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyBlock(J)Ltwitter4j/User;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1422
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1423
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/destroy.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .parameter "screen_name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1414
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/destroy.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyDirectMessage(J)Ltwitter4j/DirectMessage;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 939
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 940
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyFavorite(J)Ltwitter4j/Status;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1348
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1349
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "favorites/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyFriendship(J)Ltwitter4j/User;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1005
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/destroy.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 995
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 996
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/destroy.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroySavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1541
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1542
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "saved_searches/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyStatus(J)Ltwitter4j/Status;
    .locals 3
    .parameter "statusId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 468
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyUserList(I)Ltwitter4j/UserList;
    .locals 3
    .parameter "listId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 698
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/lists/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->delete(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public disableNotification(J)Ltwitter4j/User;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1385
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "notifications/leave.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public disableNotification(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1375
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1376
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "notifications/leave.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public enableNotification(J)Ltwitter4j/User;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1366
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1367
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "notifications/follow.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public enableNotification(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1357
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1358
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "notifications/follow.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1699
    if-ne p0, p1, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return v1

    .line 1700
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

    .line 1701
    :cond_3
    invoke-super {p0, p1}, Ltwitter4j/TwitterBaseImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 1703
    check-cast v0, Ltwitter4j/TwitterImpl;

    .line 1705
    .local v0, twitter:Ltwitter4j/TwitterImpl;
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    iget-object v4, v0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 1706
    :cond_5
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    iget-object v4, v0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public existsBlock(J)Z
    .locals 5
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1447
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1449
    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "blocks/exists.json?user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<error>You are not blocking this user.</error>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1453
    :cond_0
    return v1

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    .local v0, te:Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_0

    .line 1455
    throw v0
.end method

.method public existsBlock(Ljava/lang/String;)Z
    .locals 5
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1431
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1433
    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "blocks/exists.json?screen_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "You are not blocking this user."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1437
    :cond_0
    return v1

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, te:Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_0

    .line 1439
    throw v0
.end method

.method public existsFriendship(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "userA"
    .parameter "userB"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1013
    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/exists.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_a"

    const-string v3, "user_b"

    invoke-static {v2, p1, v3, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountSettings()Ltwitter4j/AccountSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1188
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1189
    new-instance v0, Ltwitter4j/AccountSettingsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/settings.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/AccountSettingsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getAccountTotals()Ltwitter4j/AccountTotals;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1180
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1181
    new-instance v0, Ltwitter4j/AccountTotalsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/totals.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getAllUserLists(J)Ltwitter4j/ResponseList;
    .locals 2
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
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
    .line 752
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists/all.json?user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getAllUserLists(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 2
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 743
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists/all.json?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableTrends()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1551
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/available.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableTrends(Ltwitter4j/GeoLocation;)Ltwitter4j/ResponseList;
    .locals 7
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoLocation;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1559
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/available.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "lat"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "long"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsers()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 1464
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1465
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "blocks/blocking.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsers(I)Ltwitter4j/ResponseList;
    .locals 2
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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
    .line 1475
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1476
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "blocks/blocking.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsersIDs()Ltwitter4j/IDs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1485
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1486
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/blocking/ids.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getCurrentTrends()Ltwitter4j/Trends;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/current.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Trends;

    return-object v0
.end method

.method public getCurrentTrends(Z)Ltwitter4j/Trends;
    .locals 2
    .parameter "excludeHashTags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/current.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "?exclude=hashtags"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Trends;

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDailyTrends()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/daily.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDailyTrends(Ljava/util/Date;Z)Ljava/util/List;
    .locals 2
    .parameter "date"
    .parameter "excludeHashTags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/daily.json?date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->toDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "&exclude=hashtags"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDirectMessages()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 874
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 883
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 884
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1299
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1300
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(I)Ltwitter4j/ResponseList;
    .locals 5
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1309
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1310
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "page"

    invoke-direct {v3, v4, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1319
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1320
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;I)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "id"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1329
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1330
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-static {v1, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(J)Ltwitter4j/IDs;
    .locals 3
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1126
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFollowersIDs(JJ)Ltwitter4j/IDs;
    .locals 3
    .parameter "userId"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1134
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFollowersIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 3
    .parameter "screenName"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1142
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFollowersStatuses(J)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
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
    .line 617
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(JJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "userId"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
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
    .line 635
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "screenName"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
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
    .line 626
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(J)Ltwitter4j/IDs;
    .locals 3
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1103
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFriendsIDs(JJ)Ltwitter4j/IDs;
    .locals 3
    .parameter "userId"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFriendsIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 3
    .parameter "screenName"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1118
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFriendsStatuses(J)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
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
    .line 588
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(JJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "userId"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
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
    .line 607
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "screenName"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
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
    .line 597
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends_timeline.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&include_rts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getGeoDetails(Ljava/lang/String;)Ltwitter4j/Place;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1630
    new-instance v0, Ltwitter4j/PlaceJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "geo/id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getHomeTimeline()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/home_timeline.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 199
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/home_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingFriendships(J)Ltwitter4j/IDs;
    .locals 3
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1042
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/incoming.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getLocationTrends(I)Ltwitter4j/Trends;
    .locals 3
    .parameter "woeid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1570
    new-instance v0, Ltwitter4j/TrendsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/TrendsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getMemberSuggestions(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "categorySlug"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 571
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/suggestions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/members.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    .line 573
    .local v0, res:Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, v0, v2}, Ltwitter4j/UserJSONImpl;->createUserList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v1

    return-object v1
.end method

.method public getMentions()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 294
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/mentions.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&include_rts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getMentions(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 304
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/mentions.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingFriendships(J)Ltwitter4j/IDs;
    .locals 3
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1049
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1050
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/outgoing.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getPrivacyPolicy()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1670
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "legal/privacy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "privacy"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getProfileImage(Ljava/lang/String;Ltwitter4j/ProfileImage$ImageSize;)Ltwitter4j/ProfileImage;
    .locals 3
    .parameter "screenName"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Ltwitter4j/ProfileImageImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/profile_image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ltwitter4j/ProfileImage$ImageSize;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/ProfileImageImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public getPublicTimeline()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
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
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/public_timeline.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&include_rts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1157
    new-instance v0, Ltwitter4j/RateLimitStatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/rate_limit_status.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getRelatedResults(J)Ltwitter4j/RelatedResults;
    .locals 3
    .parameter "statusId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1682
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1683
    new-instance v0, Ltwitter4j/RelatedResultsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "related_results/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelatedResultsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getRetweetedBy(J)Ltwitter4j/ResponseList;
    .locals 2
    .parameter "statusId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
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
    .line 418
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 419
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/retweeted_by.json?count=100&include_entities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByIDs(J)Ltwitter4j/IDs;
    .locals 3
    .parameter "statusId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 429
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/retweeted_by/ids.json?count=100&include_entities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getRetweetedByMe()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_me.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 325
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByUser(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .parameter "userId"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_user.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByUser(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .parameter "screenName"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_user.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToMe()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 335
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_me.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 345
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToUser(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .parameter "userId"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_user.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToUser(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .parameter "screenName"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_user.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweets(J)Ltwitter4j/ResponseList;
    .locals 2
    .parameter "statusId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 488
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".json?count=100&include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 355
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweets_of_me.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 365
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweets_of_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSavedSearches()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1515
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1516
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "saved_searches.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/SavedSearchJSONImpl;->createSavedSearchList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 895
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages/sent.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 906
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages/sent.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSimilarPlaces(Ltwitter4j/GeoLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/SimilarPlaces;
    .locals 5
    .parameter "location"
    .parameter "name"
    .parameter "containedWithin"
    .parameter "streetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1596
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1597
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "lat"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "long"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    if-eqz p3, :cond_0

    .line 1601
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "contained_within"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    :cond_0
    if-eqz p4, :cond_1

    .line 1604
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "attribute:street_address"

    invoke-direct {v1, v2, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "geo/similar_places.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v2, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, v2}, Ltwitter4j/SimilarPlacesImpl;->createSimilarPlaces(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/SimilarPlaces;

    move-result-object v1

    return-object v1
.end method

.method public getSuggestedUserCategories()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "users/suggestions.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/CategoryJSONImpl;->createCategoriesList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getTermsOfService()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1659
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "legal/tos.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "tos"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getTrends()Ltwitter4j/Trends;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ltwitter4j/TrendsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/TrendsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getUserListMembers(JIJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "listOwnerId"
    .parameter "listId"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ)",
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
    .line 774
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 775
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/members.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMembers(Ljava/lang/String;IJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
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
    .line 763
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 764
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/members.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMemberships(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "listMemberScreenName"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
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
    .line 724
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 725
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/lists/memberships.json?cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListStatuses(JILtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "listOwnerId"
    .parameter "id"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 715
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/lists/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/statuses.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltwitter4j/Paging;->SMCP:[C

    const-string v2, "per_page"

    invoke-virtual {p4, v1, v2}, Ltwitter4j/Paging;->asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .parameter "listOwnerScreenName"
    .parameter "id"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 706
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/lists/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/statuses.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltwitter4j/Paging;->SMCP:[C

    const-string v2, "per_page"

    invoke-virtual {p3, v1, v2}, Ltwitter4j/Paging;->asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscribers(Ljava/lang/String;IJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
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
    .line 833
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 834
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/subscribers.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscriptions(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "listOwnerScreenName"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
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
    .line 733
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 734
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/lists/subscriptions.json?cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserLists(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .parameter "listOwnerScreenName"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
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
    .line 679
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 680
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/lists.json?cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserSuggestions(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 4
    .parameter "categorySlug"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 558
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "users/suggestions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    .line 561
    .local v1, res:Ltwitter4j/internal/http/HttpResponse;
    :try_start_0
    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v2, v1, v3}, Ltwitter4j/UserJSONImpl;->createUserList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, jsone:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getUserTimeline()Ltwitter4j/ResponseList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterImpl;->getUserTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(J)Ltwitter4j/ResponseList;
    .locals 1
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/TwitterImpl;->getUserTimeline(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 5
    .parameter "userId"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 1
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/TwitterImpl;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 5
    .parameter "screenName"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "screen_name"

    invoke-direct {v3, v4, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getWeeklyTrends()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/weekly.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWeeklyTrends(Ljava/util/Date;Z)Ljava/util/List;
    .locals 2
    .parameter "date"
    .parameter "excludeHashTags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/weekly.json?date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->toDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "&exclude=hashtags"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1802
    invoke-super {p0}, Ltwitter4j/TwitterBaseImpl;->hashCode()I

    move-result v0

    .line 1803
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1804
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1805
    return v0
.end method

.method public lookupFriendships([J)Ltwitter4j/ResponseList;
    .locals 2
    .parameter "ids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1065
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1066
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "friendships/lookup.json?user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/FriendshipJSONImpl;->createFriendshipList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public lookupFriendships([Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 2
    .parameter "screenNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1058
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "friendships/lookup.json?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/FriendshipJSONImpl;->createFriendshipList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public lookupUsers([J)Ltwitter4j/ResponseList;
    .locals 6
    .parameter "ids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
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
    .line 526
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 527
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "users/lookup.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "user_id"

    invoke-static {p1}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public lookupUsers([Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 6
    .parameter "screenNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
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
    .line 515
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 516
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "users/lookup.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "screen_name"

    invoke-static {p1}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public reportSpam(J)Ltwitter4j/User;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1495
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1496
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "report_spam.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public reportSpam(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1504
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1505
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "report_spam.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public retweetStatus(J)Ltwitter4j/Status;
    .locals 3
    .parameter "statusId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 478
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/retweet/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public reverseGeoCode(Ltwitter4j/GeoQuery;)Ltwitter4j/ResponseList;
    .locals 4
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoQuery;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1615
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "geo/reverse_geocode.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/GeoQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, v2}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1619
    :goto_0
    return-object v1

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, te:Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 1619
    new-instance v1, Ltwitter4j/ResponseListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0

    .line 1621
    :cond_0
    throw v0
.end method

.method public search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;
    .locals 4
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    new-instance v1, Ltwitter4j/QueryResultJSONImpl;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "search.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/Query;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v3}, Ltwitter4j/QueryResultJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, te:Ltwitter4j/TwitterException;
    const/16 v1, 0x194

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 103
    new-instance v1, Ltwitter4j/QueryResultJSONImpl;

    invoke-direct {v1, p1}, Ltwitter4j/QueryResultJSONImpl;-><init>(Ltwitter4j/Query;)V

    goto :goto_0

    .line 105
    :cond_0
    throw v0
.end method

.method public searchPlaces(Ltwitter4j/GeoQuery;)Ltwitter4j/ResponseList;
    .locals 4
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoQuery;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1581
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "geo/search.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/GeoQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, v2}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1585
    :goto_0
    return-object v1

    .line 1583
    :catch_0
    move-exception v0

    .line 1584
    .local v0, te:Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 1585
    new-instance v1, Ltwitter4j/ResponseListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0

    .line 1587
    :cond_0
    throw v0
.end method

.method public searchUsers(Ljava/lang/String;I)Ltwitter4j/ResponseList;
    .locals 6
    .parameter "query"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
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
    .line 537
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 538
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "users/search.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "q"

    invoke-direct {v3, v4, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "per_page"

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "page"

    invoke-direct {v3, v4, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public sendDirectMessage(JLjava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 6
    .parameter "userId"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 928
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/new.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "text"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 6
    .parameter "screenName"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 916
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/new.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "text"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showDirectMessage(J)Ltwitter4j/DirectMessage;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 949
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 950
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showFriendship(JJ)Ltwitter4j/Relationship;
    .locals 6
    .parameter "sourceId"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1031
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/show.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "source_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "target_id"

    invoke-direct {v4, v5, p3, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showFriendship(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/Relationship;
    .locals 4
    .parameter "sourceScreenName"
    .parameter "targetScreenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/show.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_screen_name"

    const-string v3, "target_screen_name"

    invoke-static {v2, p1, v3, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showSavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1524
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "saved_searches/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showStatus(J)Ltwitter4j/Status;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showUser(J)Ltwitter4j/User;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/show.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/show.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .locals 3
    .parameter "listOwnerScreenName"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 689
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/lists/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public subscribeUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .locals 3
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 844
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/subscribers.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public test()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1693
    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "help/test.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1810
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TwitterImpl{INCLUDE_ENTITIES="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", INCLUDE_RTS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .locals 4
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 853
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/subscribers.json?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->delete(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateFriendship(JZZ)Ltwitter4j/Relationship;
    .locals 6
    .parameter "userId"
    .parameter "enableDeviceNotification"
    .parameter "retweets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1088
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1089
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "device"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "retweets"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateFriendship(Ljava/lang/String;ZZ)Ltwitter4j/Relationship;
    .locals 6
    .parameter "screenName"
    .parameter "enableDeviceNotification"
    .parameter "retweets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1075
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "device"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "retweets"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .parameter "name"
    .parameter "url"
    .parameter "location"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1166
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1167
    .local v0, profile:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v1, "name"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v1, "url"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v1, "location"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v1, "description"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    new-instance v2, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "account/update_profile.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2
.end method

.method public updateProfileBackgroundImage(Ljava/io/File;Z)Ltwitter4j/User;
    .locals 6
    .parameter "image"
    .parameter "tile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1255
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1256
    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->checkFileValidity(Ljava/io/File;)V

    .line 1257
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/update_profile_background_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "tile"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateProfileBackgroundImage(Ljava/io/InputStream;Z)Ltwitter4j/User;
    .locals 7
    .parameter "image"
    .parameter "tile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1270
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/update_profile_background_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    const-string v6, "image"

    invoke-direct {v4, v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "tile"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .parameter "profileBackgroundColor"
    .parameter "profileTextColor"
    .parameter "profileLinkColor"
    .parameter "profileSidebarFillColor"
    .parameter "profileSidebarBorderColor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1202
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1204
    .local v0, colors:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v1, "profile_background_color"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v1, "profile_text_color"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v1, "profile_link_color"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v1, "profile_sidebar_fill_color"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v1, "profile_sidebar_border_color"

    invoke-direct {p0, v0, v1, p5}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    new-instance v2, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "account/update_profile_colors.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2
.end method

.method public updateProfileImage(Ljava/io/File;)Ltwitter4j/User;
    .locals 6
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->checkFileValidity(Ljava/io/File;)V

    .line 1232
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1233
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/update_profile_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateProfileImage(Ljava/io/InputStream;)Ltwitter4j/User;
    .locals 7
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1243
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1244
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/update_profile_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    const-string v6, "image"

    invoke-direct {v4, v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 6
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 447
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "status"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;
    .locals 4
    .parameter "latestStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 457
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/StatusUpdate;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateUserList(ILjava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 4
    .parameter "listId"
    .parameter "newListName"
    .parameter "isPublicList"
    .parameter "newDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v0, httpParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 665
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_0
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "mode"

    if-eqz p3, :cond_2

    const-string v1, "public"

    :goto_0
    invoke-direct {v2, v3, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    if-eqz p4, :cond_1

    .line 669
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "description"

    invoke-direct {v1, v2, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_1
    new-instance v2, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "/lists/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ".json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2

    .line 667
    :cond_2
    const-string v1, "private"

    goto :goto_0
.end method

.method public verifyCredentials()Ltwitter4j/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1150
    invoke-super {p0}, Ltwitter4j/TwitterBaseImpl;->fillInIDAndScreenName()Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method
