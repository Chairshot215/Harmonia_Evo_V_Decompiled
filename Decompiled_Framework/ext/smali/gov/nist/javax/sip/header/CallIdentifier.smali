.class public final Lgov/nist/javax/sip/header/CallIdentifier;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "CallIdentifier.java"


# static fields
.field private static final serialVersionUID:J = 0x65834be26eebb7f1L


# instance fields
.field protected host:Ljava/lang/String;

.field protected localId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;->setCallID(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    iput-object p2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/CallIdentifier;

    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    iget-object v4, v0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object v4, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_3
    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object v4, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hash code called before id is set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCallID(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "NULL!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CallID  must be token@token or token"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    return-void
.end method
