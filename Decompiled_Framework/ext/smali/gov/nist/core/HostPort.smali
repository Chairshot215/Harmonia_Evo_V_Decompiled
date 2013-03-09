.class public final Lgov/nist/core/HostPort;
.super Lgov/nist/core/GenericObject;
.source "HostPort.java"


# static fields
.field private static final serialVersionUID:J = -0x629463c90d3e66ebL


# instance fields
.field protected host:Lgov/nist/core/Host;

.field protected port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/core/HostPort;->port:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/HostPort;

    iget-object v1, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    invoke-virtual {v1}, Lgov/nist/core/Host;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/Host;

    iput-object v1, v0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    invoke-virtual {v0, p1}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgov/nist/core/HostPort;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    check-cast v0, Lgov/nist/core/HostPort;

    iget v2, p0, Lgov/nist/core/HostPort;->port:I

    iget v3, v0, Lgov/nist/core/HostPort;->port:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    iget-object v3, v0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    invoke-virtual {v2, v3}, Lgov/nist/core/Host;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHost()Lgov/nist/core/Host;
    .locals 1

    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    invoke-virtual {v0}, Lgov/nist/core/Host;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    return v0
.end method

.method public hasPort()Z
    .locals 2

    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    invoke-virtual {v0}, Lgov/nist/core/Host;->hashCode()I

    move-result v0

    iget v1, p0, Lgov/nist/core/HostPort;->port:I

    add-int/2addr v0, v1

    return v0
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lgov/nist/core/HostPort;

    iget v0, p1, Lgov/nist/core/HostPort;->port:I

    iput v0, p0, Lgov/nist/core/HostPort;->port:I

    :cond_0
    return-void
.end method

.method public removePort()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/core/HostPort;->port:I

    return-void
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lgov/nist/core/HostPort;->port:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
