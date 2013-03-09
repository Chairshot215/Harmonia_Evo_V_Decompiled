.class public Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;
.super Ljava/lang/Object;
.source "AuthInfoResponseValidatorDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/AuthInfoResponseValidator;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private calculateLocalRspauth(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateLocalRspauth()#started   akaDigestCalculator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getEntityBody()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v0

    invoke-interface {p2, v2, v3, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;->calculateResponseDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateLocalRspauth()#finished   localRspauth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private validateCnonce(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getCnonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CNONCE validation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not equal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getCnonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/impl/client/naf/AuthInfoException;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/AuthInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private validateNc(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getNonceCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NC validation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not equal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getNonceCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/impl/client/naf/AuthInfoException;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/AuthInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private validateQop(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QOP validation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not equal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/impl/client/naf/AuthInfoException;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/AuthInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private validateRspauth(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;,
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->calculateLocalRspauth(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getRspauth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSPAUTH validation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not equal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getRspauth()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/http/impl/client/naf/AuthInfoException;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/naf/AuthInfoException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method


# virtual methods
.method public validate(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;,
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validate()#started   nafResponseResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   authenticationInfoHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "validateQop()   before"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->validateQop(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "validateCnonce()   before"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->validateCnonce(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "validateNc()   before"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->validateNc(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "validateRspauth()   before"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->validateRspauth(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)V

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "validate()#finished"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
