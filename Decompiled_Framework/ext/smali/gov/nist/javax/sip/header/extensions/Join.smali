.class public Lgov/nist/javax/sip/header/extensions/Join;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Join.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;
.implements Lgov/nist/javax/sip/header/extensions/JoinHeader;


# static fields
.field public static final NAME:Ljava/lang/String; = "Join"

.field private static final serialVersionUID:J = -0xba8b18cd4310e78L


# instance fields
.field public callId:Ljava/lang/String;

.field public callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Join"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Join"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/Join;->callId:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->callId:Ljava/lang/String;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallIdentifer()Lgov/nist/javax/sip/header/CallIdentifier;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Join;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    return-object v0
.end method

.method public getFromTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "from-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Join;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getToTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "to-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Join;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasFromTag()Z
    .locals 1

    const-string v0, "from-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Join;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasToTag()Z
    .locals 1

    const-string v0, "to-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Join;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeFromTag()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "from-tag"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method public removeToTag()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "to-tag"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/Join;->callId:Ljava/lang/String;

    return-void
.end method

.method public setCallIdentifier(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/Join;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    return-void
.end method

.method public setFromTag(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null tag "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "bad tag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const-string v0, "from-tag"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/extensions/Join;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setToTag(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null tag "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "bad tag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const-string v0, "to-tag"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/extensions/Join;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
