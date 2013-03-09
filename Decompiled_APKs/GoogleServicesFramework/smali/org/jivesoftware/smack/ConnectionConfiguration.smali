.class public Lorg/jivesoftware/smack/ConnectionConfiguration;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private compressionEnabled:Z

.field private debuggerEnabled:Z

.field private expiredCertificatesCheckEnabled:Z

.field private host:Ljava/lang/String;

.field private maxServerHeartbeatTimeMillis:J

.field private notMatchingDomainCheckEnabled:Z

.field private port:I

.field private saslAuthenticationEnabled:Z

.field private selfSignedCertificateEnabled:Z

.field private serviceName:Ljava/lang/String;

.field private tlsEnabled:Z

.field private truststorePassword:Ljava/lang/String;

.field private truststorePath:Ljava/lang/String;

.field private truststoreType:Ljava/lang/String;

.field private useProtoBuf:Z

.field private verifyChainEnabled:Z

.field private verifyRootCAEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "host"
    .parameter "port"
    .parameter "serviceName"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v4, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->tlsEnabled:Z

    .line 47
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 48
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 49
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 50
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 51
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 53
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 55
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->useProtoBuf:Z

    .line 56
    const-wide/32 v2, 0xdbba0

    iput-wide v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->maxServerHeartbeatTimeMillis:J

    .line 58
    iput-boolean v4, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 60
    sget-boolean v2, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z

    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 63
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    .line 64
    iput p2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->port:I

    .line 65
    iput-object p3, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->serviceName:Ljava/lang/String;

    .line 69
    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, javaHome:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "security"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "cacerts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePath:Ljava/lang/String;

    .line 76
    const-string v2, "jks"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststoreType:Ljava/lang/String;

    .line 78
    const-string v2, "changeit"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePassword:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->port:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseProtoBuf()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->useProtoBuf:Z

    return v0
.end method

.method public isCompressionEnabled()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    return v0
.end method

.method public isSASLAuthenticationEnabled()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    return v0
.end method

.method public isTLSEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->tlsEnabled:Z

    return v0
.end method

.method public setCompressionEnabled(Z)V
    .locals 0
    .parameter "compressionEnabled"

    .prologue
    .line 312
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 313
    return-void
.end method

.method public setDebuggerEnabled(Z)V
    .locals 0
    .parameter "debuggerEnabled"

    .prologue
    .line 356
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 357
    return-void
.end method

.method public setSASLAuthenticationEnabled(Z)V
    .locals 0
    .parameter "saslAuthenticationEnabled"

    .prologue
    .line 336
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 337
    return-void
.end method

.method public setTLSEnabled(Z)V
    .locals 0
    .parameter "tlsEnabled"

    .prologue
    .line 133
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->tlsEnabled:Z

    .line 134
    return-void
.end method

.method public setUseProtoBuf(Z)V
    .locals 0
    .parameter "useProtoBuf"

    .prologue
    .line 377
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->useProtoBuf:Z

    .line 378
    return-void
.end method
