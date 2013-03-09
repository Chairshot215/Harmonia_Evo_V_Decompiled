.class public Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;
.super Ljava/lang/Object;
.source "UaSecurityProtocolIdCalculatorDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;


# instance fields
.field private final lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field private final mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

.field private final predefindeUaSecurityProtocolId:[B


# direct methods
.method public constructor <init>([BLorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UaSecurityProtocolIdCalculatorDefault()   predefindeUaSecurityProtocolId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   mapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->predefindeUaSecurityProtocolId:[B

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    return-void
.end method


# virtual methods
.method public getUaSecurityProtocolId()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    .locals 4

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUaSecurityProtocolId()#started   lastUsedCipherSuiteName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->predefindeUaSecurityProtocolId:[B

    if-eqz v1, :cond_3

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "getUaSecurityProtocolId()#   it will use predefined"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->predefindeUaSecurityProtocolId:[B

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;-><init>([B)V

    :goto_0
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUaSecurityProtocolId()#finished   resUaSecurityProtocolId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "getUaSecurityProtocolId()#   it will use default"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;->getUaSecurityProtocolId4Http()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_7

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "getUaSecurityProtocolId()#   it will use mapping"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_7
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;->getUaSecurityProtocolIdByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    move-result-object v0

    goto :goto_0
.end method

.method public setLastUsedCipherSuiteName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastUsedCipherSuiteName()#finished   lastUsedCipherSuiteName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
