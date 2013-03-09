.class public final Lorg/apache/harmony/security/x501/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field public bytes:[B

.field public encoded:[B

.field public escapedString:Ljava/lang/String;

.field public hasQE:Z

.field private hexString:Ljava/lang/String;

.field public rawString:Ljava/lang/String;

.field private tag:I

.field public final wasEncoded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    iput-boolean p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    :try_start_0
    new-instance v2, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v2, p2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    iget v3, v2, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    iput p3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    goto :goto_0
.end method

.method private static isPrintableString(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    const/16 v2, 0x27

    if-lt v0, v2, :cond_0

    const/16 v2, 0x29

    if-le v0, v2, :cond_4

    :cond_0
    const/16 v2, 0x2b

    if-lt v0, v2, :cond_1

    const/16 v2, 0x3a

    if-le v0, v2, :cond_4

    :cond_1
    const/16 v2, 0x3d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_4

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-le v0, v2, :cond_4

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private makeEscaped(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x5c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :sswitch_0
    if-eqz v2, :cond_1

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x3d -> :sswitch_2
        0x3e -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public appendQEString(Ljava/lang/StringBuilder;)V
    .locals 5

    const/16 v4, 0x5c

    const/16 v3, 0x22

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getHexString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->isPrintableString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    if-ge v1, v5, :cond_2

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    and-int/lit8 v1, v3, 0xf

    if-ge v1, v5, :cond_3

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    return-object v3
.end method

.method public getTag()I
    .locals 2

    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    :goto_0
    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    return v0

    :cond_1
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    goto :goto_0
.end method

.method public makeCanonical()Ljava/lang/String;
    .locals 10

    const/16 v9, 0x5c

    const/16 v8, 0x23

    const/16 v7, 0x20

    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v4, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_4
    const/4 v5, -0x1

    if-le v1, v5, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3e -> :sswitch_1
        0x5c -> :sswitch_1
    .end sparse-switch
.end method
