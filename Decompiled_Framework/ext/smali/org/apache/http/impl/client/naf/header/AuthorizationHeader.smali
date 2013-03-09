.class public Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;
.super Ljava/lang/Object;
.source "AuthorizationHeader.java"


# static fields
.field public static final HEADER_NAME:Ljava/lang/String; = "Authorization"

.field private static final HEADER_VALUE_FORMAT:Ljava/lang/String; = "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=\"%s\", nc=%s, cnonce=\"%s\", response=\"%s\", opaque=\"%s\", algorithm=\"%s\""


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private nc:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildHttpHeaderValue()Ljava/lang/String;
    .locals 5

    const-string v1, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=\"%s\", nc=%s, cnonce=\"%s\", response=\"%s\", opaque=\"%s\", algorithm=\"%s\""

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->username:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->realm:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uri:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->qop:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nc:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->response:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCnonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nc:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method getNotNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setCnonce(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    return-void
.end method

.method public setNc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nc:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->qop:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->realm:Ljava/lang/String;

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->response:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uri:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorizationHeader [username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->qop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
