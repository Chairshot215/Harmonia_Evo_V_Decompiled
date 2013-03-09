.class public abstract Lorg/apache/harmony/security/asn1/ASN1Choice;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Choice.java"


# instance fields
.field private final identifiers:[[I

.field public final type:[Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 13

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    array-length v10, p1

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ASN.1 choice type MUST have at least one alternative: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    const/4 v4, 0x0

    :goto_0
    array-length v10, p1

    if-ge v4, v10, :cond_5

    aget-object v9, p1, v4

    instance-of v10, v9, Lorg/apache/harmony/security/asn1/ASN1Any;

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ASN.1 choice type MUST have alternatives with distinct tags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    instance-of v10, v9, Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-eqz v10, :cond_2

    check-cast v9, Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget-object v0, v9, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v6, 0x0

    :goto_1
    aget-object v10, v0, v12

    array-length v10, v10

    if-ge v6, v10, :cond_4

    aget-object v10, v0, v12

    aget v10, v10, v6

    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-virtual {v9, v10}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    :cond_3
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-virtual {v9, v10}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v10

    if-eqz v10, :cond_4

    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v8

    const/4 v10, 0x2

    filled-new-array {v10, v8}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    iput-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    iget-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    aget-object v10, v10, v12

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v10, v2

    iget-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/math/BigInteger;

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    aput v10, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method private addIdentifier(Ljava/util/TreeMap;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            ">;II)V"
        }
    .end annotation

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 choice type MUST have alternatives with distinct tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode ASN.1 choice type.  No alternatives were found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget v0, v1, v0

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-boolean v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    return-void
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    return-void
.end method

.method public abstract getIndex(Ljava/lang/Object;)I
.end method

.method public abstract getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    return-void
.end method
