.class public Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "PMediaAuthorization.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final serialVersionUID:J = -0x59b36d79798089bdL


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "P-Media-Authorization"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaAuthorizationToken(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, " the Media-Authorization-Token parameter is null or empty"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

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
