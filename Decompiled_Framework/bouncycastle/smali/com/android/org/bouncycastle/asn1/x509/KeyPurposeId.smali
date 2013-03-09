.class public Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
.super Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
.source "KeyPurposeId.java"


# static fields
.field public static final anyExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId; = null

.field private static final id_kp:Ljava/lang/String; = "1.3.6.1.5.5.7.3"

.field public static final id_kp_OCSPSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapAC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapWTP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_clientAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_codeSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_dvcs:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverLAN:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverPPP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_emailProtection:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecEndSystem:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecIKE:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecTunnel:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecUser:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_sbgpCertAAServerAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpClient:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpServer:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvp_responder:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_serverAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_smartcardlogon:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_timeStamping:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_codeSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_emailProtection:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.5"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecEndSystem:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.6"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecTunnel:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecUser:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.8"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_timeStamping:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.9"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.10"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_dvcs:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.11"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_sbgpCertAAServerAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.12"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvp_responder:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.13"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverPPP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.14"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverLAN:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.15"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpServer:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.16"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpClient:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.17"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecIKE:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.18"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapAC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.19"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapWTP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.4.1.311.20.2.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_smartcardlogon:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-void
.end method
