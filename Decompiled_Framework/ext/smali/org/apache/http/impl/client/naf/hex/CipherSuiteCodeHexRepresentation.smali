.class public Lorg/apache/http/impl/client/naf/hex/CipherSuiteCodeHexRepresentation;
.super Lorg/apache/http/impl/client/naf/hex/HexRepresentation;
.source "CipherSuiteCodeHexRepresentation.java"


# static fields
.field public static final AMOUNT_OF_OCTETS_IN_CIPHER_SUITE_CODE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/naf/hex/CipherSuiteCodeHexRepresentation;->AMOUNT_OF_OCTETS_IN_CIPHER_SUITE_CODE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->getContent()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getRepresentation()Ljava/lang/String;
    .locals 7

    invoke-super {p0}, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->getRepresentation()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    sget-object v5, Lorg/apache/http/impl/client/naf/hex/CipherSuiteCodeHexRepresentation;->AMOUNT_OF_OCTETS_IN_CIPHER_SUITE_CODE:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v2, v5, :cond_1

    if-nez v2, :cond_0

    const-string v5, "0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v5, ", 0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CipherSuiteCodeHexRepresentation [representation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/hex/CipherSuiteCodeHexRepresentation;->getRepresentation()Ljava/lang/String;

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
