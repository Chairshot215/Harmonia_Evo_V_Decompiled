.class public Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
.super Ljava/lang/Object;
.source "JCEPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field algorithm:Ljava/lang/String;

.field digest:I

.field ivSize:I

.field keySize:I

.field oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

.field tryWrong:Z

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->type:I

    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->digest:I

    iput p5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->keySize:I

    iput p6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->ivSize:I

    iput-object p7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    iput-object p8, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method getDigest()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->digest:I

    return v0
.end method

.method public getEncoded()[B
    .locals 3

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    instance-of v1, v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    :goto_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    goto :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    return v0
.end method

.method getIvSize()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->ivSize:I

    return v0
.end method

.method getKeySize()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->keySize:I

    return v0
.end method

.method public getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->type:I

    return v0
.end method

.method setTryWrongPKCS12Zero(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    return-void
.end method

.method shouldTryWrongPKCS12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    return v0
.end method
