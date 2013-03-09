.class public Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;
.super Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEP"
.end annotation


# instance fields
.field currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 11

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    sget-object v8, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/MGF1ParameterSpec;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    sget-object v10, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v8, v9, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v2, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v5

    check-cast v5, Ljavax/crypto/spec/PSource$PSpecified;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_pSpecified:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v5}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-direct {v4, v1, v2, v6}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    :try_start_0
    const-string v7, "DER"

    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error encoding OAEPParameters"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->engineGetEncoded()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "OAEPParameterSpec required to initialise an OAEP algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-void
.end method

.method protected engineInit([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getPSourceAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid OAEP Parameter encoding."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid OAEP Parameter encoding."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->engineInit([B)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "OAEP Parameters"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to OAEP parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
