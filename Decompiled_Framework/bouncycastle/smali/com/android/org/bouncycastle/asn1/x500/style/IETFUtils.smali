.class public Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 3

    array-length v2, p0

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OID."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 19

    new-instance v5, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V

    :goto_0
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x3d

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_0

    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "badly formated directory string"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v17, v4, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    const/16 v17, 0x2b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-lez v17, :cond_2

    new-instance v13, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v17, 0x2b

    move/from16 v0, v17

    invoke-direct {v13, v14, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v15, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x3d

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v17, v6, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v17

    invoke-static {v15}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3, v8, v14}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->build()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v17

    return-object v17
.end method

.method public static stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x20

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v5, :cond_0

    if-eq v1, v5, :cond_1

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    move v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static valueFromHexString(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x61

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-eq v1, v4, :cond_2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v2, v6, :cond_0

    add-int/lit8 v4, v2, -0x30

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    :goto_1
    if-ge v3, v6, :cond_1

    aget-byte v4, v0, v1

    add-int/lit8 v5, v3, -0x30

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, -0x61

    add-int/lit8 v4, v4, 0xa

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_1

    :cond_1
    aget-byte v4, v0, v1

    add-int/lit8 v5, v3, -0x61

    add-int/lit8 v5, v5, 0xa

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    return-object v4
.end method

.method public static valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x5c

    const/16 v7, 0x23

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v4, :cond_4

    instance-of v4, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    if-nez v4, :cond_4

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    add-int/lit8 v1, v1, 0x2

    :cond_0
    :goto_1
    if-eq v1, v0, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_2

    :cond_1
    const-string v4, "\\"

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
