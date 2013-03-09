.class public abstract Lgov/nist/javax/sip/header/AuthenticationHeader;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AuthenticationHeader.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final CK:Ljava/lang/String; = "ck"

.field public static final CNONCE:Ljava/lang/String; = "cnonce"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final IK:Ljava/lang/String; = "ik"

.field public static final INTEGRITY_PROTECTED:Ljava/lang/String; = "integrity-protected"

.field public static final NC:Ljava/lang/String; = "nc"

.field public static final NONCE:Ljava/lang/String; = "nonce"

.field public static final OPAQUE:Ljava/lang/String; = "opaque"

.field public static final QOP:Ljava/lang/String; = "qop"

.field public static final REALM:Ljava/lang/String; = "realm"

.field public static final RESPONSE:Ljava/lang/String; = "response"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SIGNED_BY:Ljava/lang/String; = "signed-by"

.field public static final STALE:Ljava/lang/String; = "stale"

.field public static final URI:Ljava/lang/String; = "uri"

.field public static final USERNAME:Ljava/lang/String; = "username"


# instance fields
.field protected scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>()V

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    const-string v0, "Digest"

    iput-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "algorithm"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCK()Ljava/lang/String;
    .locals 1

    const-string v0, "ck"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCNonce()Ljava/lang/String;
    .locals 1

    const-string v0, "cnonce"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    const-string v0, "domain"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIK()Ljava/lang/String;
    .locals 1

    const-string v0, "ik"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegrityProtected()Ljava/lang/String;
    .locals 1

    const-string v0, "integrity-protected"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonceCount()I
    .locals 1

    const-string v0, "nc"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterAsHexInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    const-string v0, "opaque"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    const-string v0, "qop"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    const-string v0, "response"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljavax/sip/address/URI;
    .locals 1

    const-string v0, "uri"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterAsURI(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    const-string v0, "username"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStale()Z
    .locals 1

    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterAsBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "algorithm"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCK(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setCk(), The auth-param CK parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "ck"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCNonce(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "cnonce"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChallenge(Lgov/nist/javax/sip/header/Challenge;)V
    .locals 1

    iget-object v0, p1, Lgov/nist/javax/sip/header/Challenge;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    iget-object v0, p1, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "domain"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIK(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setIk(), The auth-param IK parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "ik"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIntegrityProtected(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setIntegrityProtected(), The integrity-protected parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "integrity-protected"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setNonce(), The nonce parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "nonce"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNonceCount(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x0

    if-gez p1, :cond_0

    new-instance v2, Ljava/text/ParseException;

    const-string v3, "bad value"

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "00000000"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nc"

    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "opaque"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "qop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "realm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "username"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "domain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "opaque"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nextnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "uri"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "response"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ik"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ck"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "integrity-protected"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    instance-of v1, p0, Lgov/nist/javax/sip/header/Authorization;

    if-nez v1, :cond_1

    instance-of v1, p0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "qop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    if-nez p2, :cond_3

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    goto :goto_0

    :cond_3
    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Unexpected DOUBLE_QUOTE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_4
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    :goto_1
    return-void

    :cond_5
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "qop"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setRealm(), The realm parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "realm"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "response"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setStale(Z)V
    .locals 3

    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "stale"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setURI(Ljavax/sip/address/URI;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "uri"

    invoke-direct {v0, v1, p1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null URI"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
