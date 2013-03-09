.class public interface abstract Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;
.super Ljava/lang/Object;
.source "CryptoProObjectIdentifiers.java"


# static fields
.field public static final GOST_id:Ljava/lang/String; = "1.2.643.2.2"

.field public static final gostR28147_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_A:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_B:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_XchA:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_XchB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_A:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_B:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_D:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_XchA:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_XchB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_XchC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411_94_CryptoProParamSet:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411_94_with_gostR3410_2001:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411_94_with_gostR3410_94:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gost_ElSgDH3410_1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gost_ElSgDH3410_default:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.9"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.21"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR28147_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.20"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.19"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.30.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_A:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_B:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.5"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_D:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.33.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_XchA:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.33.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_XchB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.33.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_XchC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.35.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.35.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.35.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.0"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.0"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gost_ElSgDH3410_default:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gost_ElSgDH3410_1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
