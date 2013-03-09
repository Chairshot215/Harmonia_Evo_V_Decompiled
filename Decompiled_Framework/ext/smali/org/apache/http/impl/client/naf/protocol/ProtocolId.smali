.class public Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
.super Ljava/lang/Object;
.source "ProtocolId.java"


# static fields
.field public static final HTTP_DEFAULT_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

.field private static final HTTP_DEFAULT_PROTOCOL_ID_CONTENT:[B

.field public static final TLS_RSA_WITH_AES_128_CBC_SHA__PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

.field private static final TLS_RSA_WITH_AES_128_CBC_SHA__PROTOCOL_ID_CONTENT:[B

.field public static final ZERO_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

.field private static final ZERO_PROTOCOL_ID_CONTENT:[B


# instance fields
.field private final idContent:[B

.field private final idLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x5

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->HTTP_DEFAULT_PROTOCOL_ID_CONTENT:[B

    new-instance v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    sget-object v1, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->HTTP_DEFAULT_PROTOCOL_ID_CONTENT:[B

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;-><init>([B)V

    sput-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->HTTP_DEFAULT_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->ZERO_PROTOCOL_ID_CONTENT:[B

    new-instance v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    sget-object v1, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->ZERO_PROTOCOL_ID_CONTENT:[B

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;-><init>([B)V

    sput-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->ZERO_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->TLS_RSA_WITH_AES_128_CBC_SHA__PROTOCOL_ID_CONTENT:[B

    new-instance v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    sget-object v1, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->TLS_RSA_WITH_AES_128_CBC_SHA__PROTOCOL_ID_CONTENT:[B

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;-><init>([B)V

    sput-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->TLS_RSA_WITH_AES_128_CBC_SHA__PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    aput-byte v2, v0, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->getFirstOctet()B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->getSecondOctet()B

    move-result v2

    aput-byte v2, v0, v1

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idContent:[B

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idContent:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idLength:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idContent:[B

    if-eqz p1, :cond_0

    array-length v0, p1

    iput v0, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idLength:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idLength:I

    goto :goto_0
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

    check-cast v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idContent:[B

    iget-object v4, v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idContent:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idLength:I

    iget v4, v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idLength:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHex()Ljava/lang/String;
    .locals 2

    new-instance v1, Lorg/apache/http/impl/client/naf/hex/UaSecurityProtocolIdHexRepresentation;

    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/naf/hex/UaSecurityProtocolIdHexRepresentation;-><init>(Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/hex/UaSecurityProtocolIdHexRepresentation;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdContent()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idContent:[B

    return-object v0
.end method

.method public getIdLength()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idLength:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idContent:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idLength:I

    add-int v1, v2, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtocolId [idLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->idContent:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HEX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->getHex()Ljava/lang/String;

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
