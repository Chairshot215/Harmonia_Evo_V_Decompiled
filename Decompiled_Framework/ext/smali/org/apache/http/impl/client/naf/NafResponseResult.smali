.class public Lorg/apache/http/impl/client/naf/NafResponseResult;
.super Ljava/lang/Object;
.source "NafResponseResult.java"


# instance fields
.field private final entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

.field private final opaque:Ljava/lang/String;

.field private final requestDigestCalculationContext:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

.field private final response:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/naf/content/HttpEntityContent;Ljava/lang/String;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->opaque:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->requestDigestCalculationContext:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    iput-object p4, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->response:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntityBody()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->requestDigestCalculationContext:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->response:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NafResponseResult [opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->opaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestDigestCalculationContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->requestDigestCalculationContext:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entityBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/NafResponseResult;->entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
