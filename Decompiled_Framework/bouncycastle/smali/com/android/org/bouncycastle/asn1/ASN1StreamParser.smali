.class public Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private set00Check(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method readImplicit(ZI)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    sparse-switch p2, :sswitch_data_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "implicit tagging not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    :cond_2
    sparse-switch p2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    move-object v0, v1

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
    .end sparse-switch
.end method

.method readIndef(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    :goto_0
    return-object v0

    :sswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v9, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v7

    and-int/lit8 v9, v6, 0x20

    if-eqz v9, :cond_1

    move v3, v8

    :cond_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v4

    if-gez v4, :cond_5

    if-nez v3, :cond_2

    new-instance v8, Ljava/io/IOException;

    const-string v9, "indefinite length primitive encoding encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    new-instance v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v2, v9, v10}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v5, v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_3

    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v8, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    :cond_3
    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_4

    new-instance v9, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v9, v8, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    move-object v8, v9

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v0, v9, v4}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_6

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    goto :goto_0

    :cond_6
    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_7

    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    sparse-switch v7, :sswitch_data_0

    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v8, v7, v10}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    move-object v8, v9

    goto :goto_0

    :sswitch_0
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    :sswitch_1
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    :cond_8
    packed-switch v7, :pswitch_data_0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    :pswitch_0
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v9, "corrupted stream detected"

    invoke-direct {v8, v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method

.method readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method
