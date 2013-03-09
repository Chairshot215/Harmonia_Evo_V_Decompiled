.class public final Lgov/nist/javax/sip/header/ErrorInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ErrorInfo.java"

# interfaces
.implements Ljavax/sip/header/ErrorInfoHeader;


# static fields
.field private static final serialVersionUID:J = -0x58179228634e738aL


# instance fields
.field protected errorInfo:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Error-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/GenericURI;)V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ErrorInfo;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getErrorInfo()Ljavax/sip/address/URI;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ErrorInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setErrorInfo(Ljavax/sip/address/URI;)V
    .locals 0

    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception , ErrorInfoHeader, setErrorMessage(), the message parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "message"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ErrorInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
