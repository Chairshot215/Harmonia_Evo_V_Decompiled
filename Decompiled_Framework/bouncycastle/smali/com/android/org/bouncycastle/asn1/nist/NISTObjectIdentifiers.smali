.class public interface abstract Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;
.super Ljava/lang/Object;
.source "NISTObjectIdentifiers.java"


# static fields
.field public static final aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "23"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "24"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "26"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "27"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "41"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "42"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "44"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "45"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "46"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "47"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
