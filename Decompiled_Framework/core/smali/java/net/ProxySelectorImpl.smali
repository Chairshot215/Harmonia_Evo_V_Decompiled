.class final Ljava/net/ProxySelectorImpl;
.super Ljava/net/ProxySelector;
.source "ProxySelectorImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    return-void
.end method

.method private getSystemPropertyInt(Ljava/lang/String;I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method private lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;
    .locals 4

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, p2, p4}, Ljava/net/ProxySelectorImpl;->getSystemPropertyInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/net/Proxy;

    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0
.end method

.method private selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;
    .locals 9

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "scheme == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v5, "http"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v2, 0x50

    const-string v1, "http.nonProxyHosts"

    const-string v5, "http.proxyHost"

    const-string v6, "http.proxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ljava/net/ProxySelectorImpl;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_1
    return-object v5

    :cond_2
    const-string v5, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v2, 0x1bb

    const-string v1, "https.nonProxyHosts"

    const-string v5, "https.proxyHost"

    const-string v6, "https.proxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v5, "ftp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v2, 0x50

    const-string v1, "ftp.nonProxyHosts"

    const-string v5, "ftp.proxyHost"

    const-string v6, "ftp.proxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v5, "socket"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    move-object v5, v3

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    const-string v5, "proxyHost"

    const-string v6, "proxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object v5, v3

    goto :goto_1

    :cond_8
    const-string v5, "socksProxyHost"

    const-string v6, "socksProxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/16 v8, 0x438

    invoke-direct {p0, v5, v6, v7, v8}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object v5, v3

    goto :goto_1

    :cond_9
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_1
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/net/ProxySelectorImpl;->selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
