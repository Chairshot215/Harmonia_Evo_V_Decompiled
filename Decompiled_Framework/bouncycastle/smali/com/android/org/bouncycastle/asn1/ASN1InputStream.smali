.class public Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static createPrimitiveDERObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance([B)Lcom/android/org/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto :goto_0

    :pswitch_10
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    goto :goto_0

    :pswitch_11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto :goto_0

    :pswitch_12
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .locals 1

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->getRemaining()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_1
    const/16 v4, 0x7f

    if-le v1, v4, :cond_6

    and-int/lit8 v3, v1, 0x7f

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DER length more than 4 bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_3

    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    if-lt v1, p1, :cond_6

    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move v4, v1

    goto :goto_0
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v1, p1, 0x1f

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected buildObject(III)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0, p3}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_1

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v1, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    :goto_1
    return-object v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_2

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    sparse-switch p2, :sswitch_data_0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v2, p2, v4}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    move-object v2, v3

    goto :goto_1

    :sswitch_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    iget-object v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    goto :goto_1

    :sswitch_1
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;-><init>([B)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)Lcom/android/org/bouncycastle/asn1/DERSet;

    move-result-object v2

    goto :goto_1

    :sswitch_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERExternal;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method protected readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected readLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v5

    if-gtz v5, :cond_1

    if-nez v5, :cond_0

    new-instance v7, Ljava/io/IOException;

    const-string v8, "unexpected end-of-contents marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_1
    invoke-static {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v6

    and-int/lit8 v8, v5, 0x20

    if-eqz v8, :cond_2

    move v2, v7

    :goto_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v3

    if-gez v3, :cond_6

    if-nez v2, :cond_3

    new-instance v7, Ljava/io/IOException;

    const-string v8, "indefinite length primitive encoding encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v1, p0, v8}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v4, v1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v8, v5, 0x40

    if-eqz v8, :cond_4

    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v7, v6, v4}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    :cond_4
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_5

    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v8, v7, v6, v4}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    :cond_5
    sparse-switch v6, :sswitch_data_0

    new-instance v7, Ljava/io/IOException;

    const-string v8, "unknown BER object encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :sswitch_0
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    :sswitch_1
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    :sswitch_2
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    :sswitch_3
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-virtual {p0, v5, v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v8, "corrupted stream detected"

    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
