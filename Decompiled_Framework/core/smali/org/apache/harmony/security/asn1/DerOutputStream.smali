.class public final Lorg/apache/harmony/security/asn1/DerOutputStream;
.super Lorg/apache/harmony/security/asn1/BerOutputStream;
.source "DerOutputStream.java"


# static fields
.field private static final initSize:I = 0x20


# instance fields
.field private index:I

.field private len:[[I

.field private val:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;Ljava/lang/Object;)V
    .locals 2

    const/16 v1, 0x20

    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;-><init>()V

    new-array v0, v1, [[I

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    return-void
.end method

.method private encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 5

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v2, v3, v4

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v3, v4

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    iput-object v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    aget v3, v0, v1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 6

    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->getValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v5, v1

    new-array v4, v5, [Ljava/lang/Object;

    array-length v5, v4

    new-array v0, v5, [I

    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v5, v1, v2

    iput-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    aput v5, v0, v2

    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v2

    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    return-void
.end method

.method private push([I[Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aput-object p1, v2, v3

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aput-object p2, v2, v3

    return-void
.end method


# virtual methods
.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 3

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    return-void
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    iget v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 6

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v3, v4, v5

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v4, v5

    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    aget-object v4, v3, v1

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v4, v3, v1

    iput-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    aget v4, v0, v1

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    return-void
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getIndex(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    return-void
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    new-array v0, v2, [I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    aput v2, v0, v3

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    return-void
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 7

    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    array-length v5, v3

    new-array v4, v5, [Ljava/lang/Object;

    array-length v5, v3

    new-array v0, v5, [I

    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->getValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_3

    aget-object v5, v4, v1

    if-nez v5, :cond_1

    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    :cond_1
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aget-object v6, v4, v1

    invoke-static {v5, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aput-object v5, v4, v1

    goto :goto_1

    :cond_2
    aget-object v5, v4, v1

    iput-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    aput v5, v0, v1

    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v1

    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    :cond_3
    iput v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    return-void
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    return-void
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    return-void
.end method
