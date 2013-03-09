.class public Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
.super Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    invoke-interface {v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-super {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    move-object v2, v1

    goto :goto_0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    invoke-interface {v1, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    :cond_0
    return-void
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 0

    return-void
.end method

.method public setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->setSessionTimeout(I)V

    return-void
.end method
