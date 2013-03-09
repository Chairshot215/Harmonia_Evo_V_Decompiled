.class public Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
.super Lcom/android/org/bouncycastle/asn1/DEROctetString;
.source "BERConstructedOctetString.java"


# static fields
.field private static final MAX_LENGTH:I = 0x3e8


# instance fields
.field private octs:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->toBytes(Ljava/util/Vector;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-void
.end method

.method public static fromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
    .locals 3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    return-object v2
.end method

.method private generateOcts()Ljava/util/Vector;
    .locals 7

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v4, v4

    if-ge v1, v4, :cond_1

    add-int/lit16 v4, v1, 0x3e8

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v5, v5

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v0, v4

    :goto_1
    sub-int v4, v0, v1

    new-array v2, v4, [B

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v4, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v1, 0x3e8

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private static toBytes(Ljava/util/Vector;)[B
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v2, v4, :cond_0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found in input should only contain DEROctetString"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception converting octets "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v1, :cond_2

    :cond_0
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    :goto_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_1
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getOctets()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object v0
.end method
