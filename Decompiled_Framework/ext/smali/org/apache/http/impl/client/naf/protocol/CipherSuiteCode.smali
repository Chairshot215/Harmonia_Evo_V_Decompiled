.class public Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;
.super Ljava/lang/Object;
.source "CipherSuiteCode.java"


# static fields
.field public static final AMOUNT_OF_OCTETS_IN_CIPHER_SUITE_CODE:Ljava/lang/Integer;

.field public static final TLS_RSA_WITH_AES_128_CBC_SHA__CODE:Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;


# instance fields
.field private final content:[B

.field private final firstOctet:B

.field private final secondOctet:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->AMOUNT_OF_OCTETS_IN_CIPHER_SUITE_CODE:Ljava/lang/Integer;

    new-instance v0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;-><init>(BB)V

    sput-object v0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->TLS_RSA_WITH_AES_128_CBC_SHA__CODE:Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    return-void
.end method

.method public constructor <init>(BB)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->firstOctet:B

    iput-byte p2, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->secondOctet:B

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->content:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    sget-object v1, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->AMOUNT_OF_OCTETS_IN_CIPHER_SUITE_CODE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the length of content must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->AMOUNT_OF_OCTETS_IN_CIPHER_SUITE_CODE:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->content:[B

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->firstOctet:B

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->secondOctet:B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->content:[B

    iget-object v4, v0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->content:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-byte v3, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->firstOctet:B

    iget-byte v4, v0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->firstOctet:B

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-byte v3, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->secondOctet:B

    iget-byte v4, v0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->secondOctet:B

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->content:[B

    return-object v0
.end method

.method public getFirstOctet()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->firstOctet:B

    return v0
.end method

.method public getHex()Ljava/lang/String;
    .locals 2

    new-instance v1, Lorg/apache/http/impl/client/naf/hex/CipherSuiteCodeHexRepresentation;

    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/naf/hex/CipherSuiteCodeHexRepresentation;-><init>(Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/hex/CipherSuiteCodeHexRepresentation;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondOctet()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->secondOctet:B

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->content:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->firstOctet:B

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->secondOctet:B

    add-int v1, v2, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CipherSuiteCode [firstOctet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->firstOctet:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondOctet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->secondOctet:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->content:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HEX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->getHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
