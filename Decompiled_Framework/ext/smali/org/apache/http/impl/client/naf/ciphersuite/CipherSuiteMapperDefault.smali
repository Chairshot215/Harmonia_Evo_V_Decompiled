.class public Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;
.super Ljava/lang/Object;
.source "CipherSuiteMapperDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;


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

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public getCipherSuiteCodeByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;
    .locals 5

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCipherSuiteCodeByAndroidName()#started   androidNameOfCipherSuite="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    :cond_1
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "getCipherSuiteCodeByAndroidName()   using default"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;->DEFAULT_CODE:Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    :goto_0
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCipherSuiteCodeByAndroidName()#finished   cipherSuiteCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    return-object v0

    :cond_4
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "getCipherSuiteCodeByAndroidName()   using mapping"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_5
    invoke-static {p1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;->getByNameUniversal(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;->DEFAULT_CODE:Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;->getCipherSuiteCode()Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnabledAndroidCipherSuitesAfterFiltering([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getUaSecurityProtocolId4Http()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->HTTP_DEFAULT_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    return-object v0
.end method

.method public getUaSecurityProtocolIdByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUaSecurityProtocolIdByAndroidName()#started   androidNameOfCipherSuite="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->getCipherSuiteCodeByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v1, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->HTTP_DEFAULT_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    :goto_0
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUaSecurityProtocolIdByAndroidName()#finished   uaSecurityProtocolId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    const/4 v2, 0x5

    new-array v2, v2, [B

    aput-byte v5, v2, v6

    aput-byte v6, v2, v5

    const/4 v3, 0x2

    aput-byte v5, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->getFirstOctet()B

    move-result v4

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->getSecondOctet()B

    move-result v4

    aput-byte v4, v2, v3

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;-><init>([B)V

    goto :goto_0
.end method
