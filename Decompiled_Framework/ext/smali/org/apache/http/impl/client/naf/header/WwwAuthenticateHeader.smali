.class public Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;
.super Ljava/lang/Object;
.source "WwwAuthenticateHeader.java"


# static fields
.field public static final HEADER_NAME:Ljava/lang/String; = "WWW-Authenticate"

.field public static final QOP_AUTH:Ljava/lang/String; = "auth"

.field public static final QOP_AUTH_INT:Ljava/lang/String; = "auth-int"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private stale:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->type:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    iput-boolean p7, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->stale:Z

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isStale()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->stale:Z

    return v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setAlgorithm(Lorg/apache/http/impl/client/naf/header/parser/Algorithm;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Algorithm cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->stringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    return-void
.end method

.method public setStale(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->stale:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WwwAuthenticateHeader [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->stale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
