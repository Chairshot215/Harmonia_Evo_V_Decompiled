.class public final Lgov/nist/javax/sip/stack/HopImpl;
.super Ljava/lang/Object;
.source "HopImpl.java"

# interfaces
.implements Ljavax/sip/address/Hop;
.implements Ljava/io/Serializable;


# instance fields
.field protected defaultRoute:Z

.field protected host:Ljava/lang/String;

.field protected port:I

.field protected transport:Ljava/lang/String;

.field protected uriRoute:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v5, 0x13c4

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null arg!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/16 v6, 0x5d

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v6, 0x3a

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/16 v6, 0x2f

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v1, :cond_3

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    if-lez v4, :cond_2

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    :goto_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "no host!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "UDP"

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Bad port spec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    if-lez v4, :cond_5

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    iget-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v7, "TLS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v5, 0x13c5

    :cond_4
    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    goto :goto_1

    :cond_5
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string v6, "UDP"

    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    if-lez v0, :cond_7

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_7

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Bad IPv6 reference spec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "UDP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "TLS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "TCP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad transport string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    :cond_0
    iput p2, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    iput-object p3, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public isURIRoute()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    return v0
.end method

.method public setURIRouteFlag()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
