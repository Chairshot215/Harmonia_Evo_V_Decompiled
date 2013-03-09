.class public Lcom/google/android/voicesearch/tcp/StunPacket;
.super Ljava/lang/Object;
.source "StunPacket.java"


# static fields
.field private static DEBUG:Z


# instance fields
.field private messageAttributes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/voicesearch/tcp/StunAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private messageLength:I

.field private messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field private transactionId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/tcp/StunPacket;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/tcp/StunMessageType;)V
    .locals 1
    .parameter "messageType"

    .prologue
    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/tcp/StunPacket;-><init>(Lcom/google/android/voicesearch/tcp/StunMessageType;Ljava/util/Random;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/tcp/StunMessageType;Ljava/util/Random;)V
    .locals 1
    .parameter "messageType"
    .parameter "random"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    .line 51
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    .line 53
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    .line 55
    return-void
.end method

.method public static fromByteArray([B)Lcom/google/android/voicesearch/tcp/StunPacket;
    .locals 3
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunPacket;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;-><init>()V

    .line 201
    .local v0, packet:Lcom/google/android/voicesearch/tcp/StunPacket;
    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->readHeader([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not read stun header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->readBody([B)V

    .line 205
    return-object v0
.end method

.method public static headerFromByteArray([B)Lcom/google/android/voicesearch/tcp/StunPacket;
    .locals 2
    .parameter "src"

    .prologue
    .line 191
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunPacket;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;-><init>()V

    .line 192
    .local v0, packet:Lcom/google/android/voicesearch/tcp/StunPacket;
    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->readHeader([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    .end local v0           #packet:Lcom/google/android/voicesearch/tcp/StunPacket;
    :goto_0
    return-object v0

    .restart local v0       #packet:Lcom/google/android/voicesearch/tcp/StunPacket;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readHeader([B)Z
    .locals 6
    .parameter "src"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    array-length v3, p1

    const/16 v4, 0x14

    if-ge v3, v4, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 150
    .local v0, wireType:I
    invoke-static {v0}, Lcom/google/android/voicesearch/tcp/StunMessageType;->fromWireValue(I)Lcom/google/android/voicesearch/tcp/StunMessageType;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 151
    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    .line 152
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    const/16 v5, 0x10

    invoke-static {p1, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    array-length v4, p1

    add-int/lit8 v4, v4, -0x14

    if-ne v3, v4, :cond_0

    .line 156
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    if-eqz v3, :cond_0

    move v1, v2

    .line 159
    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)V
    .locals 1
    .parameter "attr"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public asByteArray()[B
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v3

    new-array v1, v3, [B

    .line 121
    .local v1, packet:[B
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/tcp/StunPacket;->writeHeader([B)V

    .line 122
    const/16 v2, 0x14

    .line 123
    .local v2, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttribute;->writeIntoArray([BI)V

    .line 125
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/tcp/StunAttribute;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 80
    instance-of v2, p1, Lcom/google/android/voicesearch/tcp/StunPacket;

    if-nez v2, :cond_0

    move v2, v3

    .line 101
    :goto_0
    return v2

    :cond_0
    move-object v1, p1

    .line 83
    check-cast v1, Lcom/google/android/voicesearch/tcp/StunPacket;

    .line 84
    .local v1, o:Lcom/google/android/voicesearch/tcp/StunPacket;
    iget-object v2, v1, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    if-eq v2, v4, :cond_1

    move v2, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v4

    if-eq v2, v4, :cond_2

    move v2, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, v1, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    move v2, v3

    .line 89
    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_5

    .line 92
    iget-object v2, v1, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    aget-byte v2, v2, v0

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    aget-byte v4, v4, v0

    if-eq v2, v4, :cond_4

    move v2, v3

    .line 93
    goto :goto_0

    .line 91
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 97
    iget-object v2, v1, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/tcp/StunAttribute;

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/voicesearch/tcp/StunAttribute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    .line 98
    goto :goto_0

    .line 96
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getAttribute(Lcom/google/android/voicesearch/tcp/StunAttributeType;)Lcom/google/android/voicesearch/tcp/StunAttribute;
    .locals 3
    .parameter "type"

    .prologue
    .line 214
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/tcp/StunAttribute;

    .line 216
    .local v0, attr:Lcom/google/android/voicesearch/tcp/StunAttribute;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute;->getType()Lcom/google/android/voicesearch/tcp/StunAttributeType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 220
    .end local v0           #attr:Lcom/google/android/voicesearch/tcp/StunAttribute;
    :goto_1
    return-object v0

    .line 214
    .restart local v0       #attr:Lcom/google/android/voicesearch/tcp/StunAttribute;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0           #attr:Lcom/google/android/voicesearch/tcp/StunAttribute;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 177
    const/16 v1, 0x14

    .line 178
    .local v1, packetLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/tcp/StunAttribute;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return v1
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 224
    const-string v1, ""

    .line 225
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-object v1
.end method

.method public getType()Lcom/google/android/voicesearch/tcp/StunMessageType;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 106
    const/16 v1, 0x1f

    .line 107
    .local v1, prime:I
    const/4 v2, 0x1

    .line 108
    .local v2, result:I
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v2, v3, 0x1f

    .line 109
    mul-int/lit8 v3, v2, 0x1f

    iget v4, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    add-int v2, v3, v4

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0x10

    if-ge v0, v3, :cond_1

    .line 111
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    aget-byte v4, v4, v0

    add-int v2, v3, v4

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    .line 113
    .restart local v0       #i:I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 114
    mul-int/lit8 v4, v2, 0x1f

    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/tcp/StunAttribute;->hashCode()I

    move-result v3

    add-int v2, v4, v3

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_2
    return v2
.end method

.method public readBody([B)V
    .locals 3
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/16 v1, 0x14

    .line 164
    .local v1, offset:I
    :goto_0
    iget v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    add-int/lit8 v2, v2, 0x14

    if-ge v1, v2, :cond_0

    .line 165
    invoke-static {p1, v1}, Lcom/google/android/voicesearch/tcp/StunAttribute;->fromByteArray([BI)Lcom/google/android/voicesearch/tcp/StunAttribute;

    move-result-object v0

    .line 166
    .local v0, attr:Lcom/google/android/voicesearch/tcp/StunAttribute;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 167
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    .end local v0           #attr:Lcom/google/android/voicesearch/tcp/StunAttribute;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    iput v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    .line 170
    return-void
.end method

.method public setTransactionIDForResponse(Lcom/google/android/voicesearch/tcp/StunPacket;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p1, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    iget-object v2, p1, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    sget-boolean v2, Lcom/google/android/voicesearch/tcp/StunPacket;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stun Packet:\ntype= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/tcp/StunMessageType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ntransactionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, string:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/tcp/StunAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0           #i:I
    .end local v1           #string:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    :cond_1
    return-object v1
.end method

.method protected writeHeader([B)V
    .locals 5
    .parameter "dest"

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunMessageType;->getWireValue()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    .line 132
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;->getWireValue()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 133
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v1

    add-int/lit8 v0, v1, -0x14

    .line 134
    .local v0, len:I
    const/4 v1, 0x2

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 135
    const/4 v1, 0x3

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    .line 136
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    const/4 v2, 0x4

    const/16 v3, 0x10

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    return-void
.end method
