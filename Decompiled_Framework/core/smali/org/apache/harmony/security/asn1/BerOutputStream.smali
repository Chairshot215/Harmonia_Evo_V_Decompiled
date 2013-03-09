.class public Lorg/apache/harmony/security/asn1/BerOutputStream;
.super Ljava/lang/Object;
.source "BerOutputStream.java"


# instance fields
.field public content:Ljava/lang/Object;

.field public encoded:[B

.field public length:I

.field protected offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeANY()V
    .locals 5

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    return-void
.end method

.method public encodeBitString()V
    .locals 6

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v3, v0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, v0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    return-void
.end method

.method public encodeBoolean()V
    .locals 3

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeGeneralizedTime()V
    .locals 5

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    return-void
.end method

.method public encodeInteger()V
    .locals 5

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    return-void
.end method

.method public encodeOID()V
    .locals 9

    const/16 v8, 0x7f

    const/4 v7, 0x1

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v4, [I

    move-object v2, v4

    check-cast v2, [I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    array-length v4, v2

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-le v1, v7, :cond_2

    aget v0, v2, v1

    if-le v0, v8, :cond_0

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    shr-int/lit8 v0, v0, 0x7

    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    or-int/lit16 v6, v0, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    shr-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x28

    aget v5, v2, v7

    add-int v0, v4, v5

    if-le v0, v8, :cond_3

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    shr-int/lit8 v0, v0, 0x7

    :goto_2
    if-lez v0, :cond_4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    or-int/lit16 v6, v0, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    shr-int/lit8 v0, v0, 0x7

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    :cond_4
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    return-void
.end method

.method public encodeOctetString()V
    .locals 5

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeString()V
    .locals 5

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    return-void
.end method

.method public final encodeTag(I)V
    .locals 7

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    const/16 v5, 0x7f

    if-le v4, v5, :cond_2

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    shr-int/lit8 v0, v4, 0x8

    const/4 v2, 0x1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    int-to-byte v2, v4

    shr-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    or-int/lit16 v6, v2, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v4, v2

    add-int/lit8 v3, v4, -0x1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    sub-int v5, v3, v1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    :goto_2
    return-void

    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2
.end method

.method public encodeUTCTime()V
    .locals 5

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetLength(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
