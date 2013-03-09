.class public Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;
.super Ljava/lang/Object;
.source "AkaDigestCalculationContext.java"


# instance fields
.field private final akaDigestType:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

.field private final algorithm:Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

.field private final cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

.field private final digestUriValue:Ljava/lang/String;

.field private final entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

.field private final method:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

.field private final nonce:Ljava/lang/String;

.field private final nonceCount:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

.field private final passw:Ljava/lang/String;

.field private final qop:Lorg/apache/http/impl/client/naf/wrapper/Qop;

.field private final realm:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;Lorg/apache/http/impl/client/naf/wrapper/NonceCount;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)V
    .locals 13

    sget-object v12, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->AKA_DIGEST_REQUEST:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;Lorg/apache/http/impl/client/naf/wrapper/NonceCount;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;Lorg/apache/http/impl/client/naf/aka/AkaDigestType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;Lorg/apache/http/impl/client/naf/wrapper/NonceCount;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;Lorg/apache/http/impl/client/naf/aka/AkaDigestType;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->qop:Lorg/apache/http/impl/client/naf/wrapper/Qop;

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->algorithm:Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->username:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->realm:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->passw:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->nonce:Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    iput-object p8, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->nonceCount:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    iput-object p9, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->method:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    iput-object p10, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->digestUriValue:Ljava/lang/String;

    iput-object p11, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    iput-object p12, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->akaDigestType:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    return-void
.end method


# virtual methods
.method public getAkaDigestType()Lorg/apache/http/impl/client/naf/aka/AkaDigestType;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->akaDigestType:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    return-object v0
.end method

.method public getAlgorithm()Lorg/apache/http/impl/client/naf/wrapper/Algorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->algorithm:Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    return-object v0
.end method

.method public getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    return-object v0
.end method

.method public getDigestUriValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->digestUriValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityBody()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    return-object v0
.end method

.method public getMethod()Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->method:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->nonceCount:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    return-object v0
.end method

.method public getPassw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->passw:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->qop:Lorg/apache/http/impl/client/naf/wrapper/Qop;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->username:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AkaDigestCalculationContext [akaDigestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->akaDigestType:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", algorithm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->algorithm:Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cnonce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", digestUriValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->digestUriValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", entityBody="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->method:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->nonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonceCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->nonceCount:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->qop:Lorg/apache/http/impl/client/naf/wrapper/Qop;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", realm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x40

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AkaDigestCalculationContext [akaDigestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->akaDigestType:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", algorithm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->algorithm:Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cnonce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", digestUriValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->digestUriValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", entityBody="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->method:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->nonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonceCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->nonceCount:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", passw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->passw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->qop:Lorg/apache/http/impl/client/naf/wrapper/Qop;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", realm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
