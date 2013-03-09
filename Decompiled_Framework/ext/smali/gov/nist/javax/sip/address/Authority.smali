.class public Lgov/nist/javax/sip/address/Authority;
.super Lgov/nist/javax/sip/address/NetObject;
.source "Authority.java"


# static fields
.field private static final serialVersionUID:J = -0x318c6e34baa9fca6L


# instance fields
.field protected hostPort:Lgov/nist/core/HostPort;

.field protected userInfo:Lgov/nist/javax/sip/address/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/address/NetObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/Authority;

    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/HostPort;

    iput-object v1, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/UserInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/UserInfo;

    iput-object v1, v0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    :cond_1
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/Authority;

    iget-object v2, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    iget-object v3, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v2, v3}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    iget-object v3, v0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHost()Lgov/nist/core/Host;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    iget-object v0, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    iget-object v0, v0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserInfo()Lgov/nist/javax/sip/address/UserInfo;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Null hostPort cannot compute hashcode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public removePort()V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->removePort()V

    :cond_0
    return-void
.end method

.method public removeUserInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    return-void
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    return-void
.end method

.method public setHostPort(Lgov/nist/core/HostPort;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setPort(I)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setPort(I)V

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setUser(Ljava/lang/String;)V

    return-void
.end method

.method public setUserInfo(Lgov/nist/javax/sip/address/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    return-void
.end method
