.class public final Lorg/apache/harmony/security/provider/crypto/CryptoProvider;
.super Ljava/security/Provider;
.source "CryptoProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x6ee674ab6c76830eL


# direct methods
.method public constructor <init>()V
    .locals 9

    const-string v5, "Crypto"

    const-wide/high16 v6, 0x3ff0

    const-string v8, "HARMONY (SHA1 digest; SecureRandom; SHA1withDSA signature)"

    invoke-direct {p0, v5, v6, v7, v8}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v1, "org.apache.harmony.security.provider.crypto.SHA1_MessageDigestImpl"

    const-string v4, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    const-string v3, "org.apache.harmony.security.provider.crypto.SHA1withDSA_SignatureImpl"

    const-string v2, "SHA1withDSA"

    const-string v0, "org.apache.harmony.security.provider.crypto.DSAKeyFactoryImpl"

    const-string v5, "MessageDigest.SHA-1"

    const-string v6, "org.apache.harmony.security.provider.crypto.SHA1_MessageDigestImpl"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "MessageDigest.SHA-1 ImplementedIn"

    const-string v6, "Software"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.MessageDigest.SHA1"

    const-string v6, "SHA-1"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.MessageDigest.SHA"

    const-string v6, "SHA-1"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->isServiceAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SecureRandom.SHA1PRNG"

    const-string v6, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v6, "Software"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v5, "Signature.SHA1withDSA"

    const-string v6, "org.apache.harmony.security.provider.crypto.SHA1withDSA_SignatureImpl"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Signature.SHA1withDSA ImplementedIn"

    const-string v6, "Software"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.SHAwithDSA"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.DSAwithSHA1"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.SHA1/DSA"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.SHA/DSA"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.SHA-1/DSA"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.DSA"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.DSS"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.OID.1.2.840.10040.4.3"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.1.2.840.10040.4.3"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.1.3.14.3.2.13"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.Signature.1.3.14.3.2.27"

    const-string v6, "SHA1withDSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "KeyFactory.DSA"

    const-string v6, "org.apache.harmony.security.provider.crypto.DSAKeyFactoryImpl"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "KeyFactory.DSA ImplementedIn"

    const-string v6, "Software"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.KeyFactory.1.3.14.3.2.12"

    const-string v6, "DSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Alg.Alias.KeyFactory.1.2.840.10040.4.1"

    const-string v6, "DSA"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
