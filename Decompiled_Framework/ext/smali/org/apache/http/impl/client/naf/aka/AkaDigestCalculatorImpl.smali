.class public Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;
.super Ljava/lang/Object;
.source "AkaDigestCalculatorImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;


# static fields
.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final SEPARATOR:Ljava/lang/String; = ":"


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

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method calculateA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "calculateA1()#started"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateA1()#   algorithm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->isUnspecified()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->isMd5()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "A1 = unq(username-value) \":\" unq(realm-value) \":\" passwd"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateA1()#finished a1Res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->isMd5Sess()Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_6

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "A1 = H( unq(username-value) \":\" unq(realm-value) \":\" passwd ) \":\" unq(nonce-value) \":\" unq(cnonce-value)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p5}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm value, algorithm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method calculateA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "calculateA2()#started"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateA2()#   qop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isUnspecified()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isAuth()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "A2 = Method \":\" digest-uri-value"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateA2()#finished a2Res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isAuthInt()Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_6

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "A2 = Method \":\" digest-uri-value \":\" H(entity-body)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->getByteRepresentation()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance v1, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported qop value, qop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method calculateH(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateH()#started   hInputString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateMd5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateH()#finished   hResultString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method calculateH([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateH()#started   hInputData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateMd5Hex([B)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateH()#finished   hResultString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method calculateHA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "calculateHA1()#started"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p0 .. p6}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateHA1()#finished   ha1Result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method calculateHA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "calculateHA2()#started"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateHA2()#finished   ha2Result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method calculateKd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateKd()#started   secret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateKd()#finished   kdResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method calculateMd5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->getMd5Calc()Lorg/apache/http/impl/client/naf/aka/Md5Calculator;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/aka/Md5Calculator;->calculate(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/aka/Md5Result;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/Md5Result;->getHexRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method calculateMd5Hex([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->getMd5Calc()Lorg/apache/http/impl/client/naf/aka/Md5Calculator;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/aka/Md5Calculator;->calculate([B)Lorg/apache/http/impl/client/naf/aka/Md5Result;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/Md5Result;->getHexRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public calculateRequestDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v17, "calculateRequestDigest()#started"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getAlgorithm()Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getPassw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonce()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getMethod()Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getDigestUriValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getEntityBody()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v13

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v17, "calculateRequestDigest()#----------------------------------------------"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   qop="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   algorithm="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->getAlgorithmFromResponse()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x40

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   username="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   realm="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x40

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   passw="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   nonce="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   cnonce="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   method="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   digestUriValue="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v17, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   entityBody_HEX_REPRESENTETION="

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->getHex()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#   nonceCount="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v17, "calculateRequestDigest()#----------------------------------------------"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v14}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isAuth()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v14}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isAuthInt()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v17, "request-digest = KD ( H(A1), unq(nonce-value) \":\" nc-value \":\" unq(cnonce-value) \":\" unq(qop-value) \":\" H(A2) )"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateHA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v10, v11}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateHA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateKd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :goto_1
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "calculateRequestDigest()#finished   response="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_6
    return-object v15

    :cond_7
    const-string v2, ""

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v14}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isUnspecified()Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v17, "request-digest = KD ( H(A1), unq(nonce-value) \":\" H(A2) )"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateHA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v10, v11}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateHA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateKd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_a
    new-instance v2, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupported qop value, qop="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public calculateResponseDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "calculateResponseDigest()#started"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getAlgorithm()Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getPassw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonce()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v8

    sget-object v9, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->NONE:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getDigestUriValue()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->AKA_DIGEST_RESPONSE:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;Lorg/apache/http/impl/client/naf/wrapper/NonceCount;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;Lorg/apache/http/impl/client/naf/aka/AkaDigestType;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateRequestDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;)Ljava/lang/String;

    move-result-object v13

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "calculateResponseDigest()#finished"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v13
.end method

.method getMd5Calc()Lorg/apache/http/impl/client/naf/aka/Md5Calculator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;

    invoke-direct {v1}, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method unq(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p1

    if-eqz p1, :cond_0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
