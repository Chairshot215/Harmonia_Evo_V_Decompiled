.class public final Lgov/nist/javax/sip/header/AlertInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AlertInfo.java"

# interfaces
.implements Ljavax/sip/header/AlertInfoHeader;


# static fields
.field private static final serialVersionUID:J = 0x39ba1254fc6b29efL


# instance fields
.field protected string:Ljava/lang/String;

.field protected uri:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Alert-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AlertInfo;

    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    goto :goto_0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_2

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getAlertInfo()Ljavax/sip/address/URI;
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/address/GenericURI;

    iget-object v2, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    invoke-direct {v1, v2}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    return-void
.end method

.method public setAlertInfo(Ljavax/sip/address/URI;)V
    .locals 0

    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    return-void
.end method
