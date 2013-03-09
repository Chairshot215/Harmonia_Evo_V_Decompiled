.class public interface abstract Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;
.super Ljava/lang/Object;
.source "BCObjectIdentifiers.java"


# static fields
.field public static final bc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs5:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha224:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs5:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha384:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final bc_pbe_sha512:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.22554"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha384:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2.3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha512:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2.4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha224:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs5:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs5:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1.22"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1.42"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1.22"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1.42"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
