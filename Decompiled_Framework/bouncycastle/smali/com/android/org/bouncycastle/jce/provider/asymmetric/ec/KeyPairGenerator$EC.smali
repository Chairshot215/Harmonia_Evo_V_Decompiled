.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
.super Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# static fields
.field private static ecParameters:Ljava/util/Hashtable;


# instance fields
.field algorithm:Ljava/lang/String;

.field certainty:I

.field ecParams:Ljava/lang/Object;

.field engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

.field initialised:Z

.field param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime192v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0xef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime239v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-224"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-384"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-521"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "EC"

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    const/16 v0, 0xef

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->strength:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->certainty:I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    const/16 v0, 0xef

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->strength:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->certainty:I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    if-nez v5, :cond_0

    const/16 v5, 0xc0

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, v5, v6}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialize(ILjava/security/SecureRandom;)V

    :cond_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    invoke-direct {v5, v4, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    :goto_0
    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    if-nez v5, :cond_2

    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v8, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    invoke-direct {v5, v6, v7}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V

    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v5, v4, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->strength:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, v1, p2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "key size not configurable."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "unknown key size."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    :cond_0
    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_1

    move-object v12, p1

    check-cast v12, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_2

    move-object v12, p1

    check-cast v12, Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v7, v0, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v7, v10, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    if-nez v8, :cond_6

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    :cond_3
    if-nez v8, :cond_6

    :try_start_0
    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v11, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    :cond_4
    if-nez v8, :cond_5

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    :cond_5
    if-nez v8, :cond_6

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown curve OID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v9

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown curve name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v12, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v7, v0, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v7, v10, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    goto/16 :goto_0

    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v12

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    goto/16 :goto_0

    :cond_8
    if-nez p1, :cond_9

    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "null parameter passed but no implicitCA set"

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "parameter object not a ECParameterSpec"

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
