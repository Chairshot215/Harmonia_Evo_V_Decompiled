.class public final Lorg/apache/harmony/security/x509/CertificatePolicies;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CertificatePolicies.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private policyInformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/x509/CertificatePolicies$1;

    sget-object v1, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificatePolicies$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;[B)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/CertificatePolicies$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/CertificatePolicies;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/CertificatePolicies;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/CertificatePolicies;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/CertificatePolicies;

    iput-object p0, v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    return-object v0
.end method


# virtual methods
.method public addPolicyInformation(Lorg/apache/harmony/security/x509/PolicyInformation;)Lorg/apache/harmony/security/x509/CertificatePolicies;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CertificatePolicies [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/PolicyInformation;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/x509/PolicyInformation;->dumpValue(Ljava/lang/StringBuilder;)V

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    return-object v0
.end method

.method public getPolicyInformations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
