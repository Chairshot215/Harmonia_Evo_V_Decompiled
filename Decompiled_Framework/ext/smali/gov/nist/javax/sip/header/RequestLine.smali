.class public Lgov/nist/javax/sip/header/RequestLine;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "RequestLine.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SipRequestLine;


# static fields
.field private static final serialVersionUID:J = -0x2d9bbb31060a5df9L


# instance fields
.field protected method:Ljava/lang/String;

.field protected sipVersion:Ljava/lang/String;

.field protected uri:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    const-string v0, "SIP/2.0"

    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/GenericURI;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    iput-object p2, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    const-string v0, "SIP/2.0"

    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    iget-object v1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RequestLine;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/header/RequestLine;

    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    iget-object v4, v2, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    iget-object v4, v2, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    iget-object v4, v2, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getSipVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Lgov/nist/javax/sip/address/GenericURI;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public bridge synthetic getUri()Ljavax/sip/address/URI;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public getVersionMajor()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    if-eqz v2, :cond_2

    if-nez v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-eqz v0, :cond_2

    if-nez v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    return-void
.end method

.method public setSipVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljavax/sip/address/URI;)V
    .locals 0

    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    return-void
.end method
