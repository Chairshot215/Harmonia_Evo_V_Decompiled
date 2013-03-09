.class public Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
.super Ljava/lang/Object;
.source "HttpEntityContent.java"


# static fields
.field public static final EMPTY:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;


# instance fields
.field private final byteLength:J

.field private final byteRepresentation:[B

.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->EMPTY:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteRepresentation:[B

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->stringRepresentation:Ljava/lang/String;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteLength:J

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteLength:J

    goto :goto_0
.end method

.method public static createFromString(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 2

    sget-object v0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->EMPTY:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    if-eqz p0, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;-><init>([BLjava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

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

    check-cast v0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    iget-wide v3, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteLength:J

    iget-wide v5, v0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteLength:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteRepresentation:[B

    iget-object v4, v0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteRepresentation:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->stringRepresentation:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->stringRepresentation:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->stringRepresentation:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getByteLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteLength:J

    return-wide v0
.end method

.method public getByteRepresentation()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteRepresentation:[B

    return-object v0
.end method

.method public getHex()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteRepresentation:[B

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;-><init>([B)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRepresentation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteLength:J

    iget-wide v4, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteLength:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteRepresentation:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->stringRepresentation:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    return v1

    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpEntityContent [byteLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->byteLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ... ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
