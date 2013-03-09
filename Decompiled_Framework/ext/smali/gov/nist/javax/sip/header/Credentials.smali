.class public Lgov/nist/javax/sip/header/Credentials;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "Credentials.java"


# static fields
.field private static CNONCE:Ljava/lang/String; = null

.field private static DOMAIN:Ljava/lang/String; = null

.field private static NONCE:Ljava/lang/String; = null

.field private static OPAQUE:Ljava/lang/String; = null

.field private static REALM:Ljava/lang/String; = null

.field private static RESPONSE:Ljava/lang/String; = null

.field private static URI:Ljava/lang/String; = null

.field private static USERNAME:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x57ec8c1393353a04L


# instance fields
.field protected parameters:Lgov/nist/core/NameValueList;

.field protected scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "domain"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->DOMAIN:Ljava/lang/String;

    const-string v0, "realm"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->REALM:Ljava/lang/String;

    const-string v0, "opaque"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->OPAQUE:Ljava/lang/String;

    const-string v0, "response"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->RESPONSE:Ljava/lang/String;

    const-string v0, "uri"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->URI:Ljava/lang/String;

    const-string v0, "nonce"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->NONCE:Ljava/lang/String;

    const-string v0, "cnonce"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->CNONCE:Ljava/lang/String;

    const-string v0, "username"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->USERNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Credentials;

    iget-object v1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->scheme:Ljava/lang/String;

    iget-object v1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCredentials()Lgov/nist/core/NameValueList;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public setCredentials(Lgov/nist/core/NameValueList;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/Credentials;->scheme:Ljava/lang/String;

    return-void
.end method
