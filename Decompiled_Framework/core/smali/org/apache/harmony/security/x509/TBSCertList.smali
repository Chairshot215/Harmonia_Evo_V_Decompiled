.class public final Lorg/apache/harmony/security/x509/TBSCertList;
.super Ljava/lang/Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

.field private encoding:[B

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final nextUpdate:Ljava/util/Date;

.field private final revokedCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final thisUpdate:Ljava/util/Date;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList$1;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    sget-object v4, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertList$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/harmony/security/x509/AlgorithmIdentifier;",
            "Lorg/apache/harmony/security/x501/Name;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;",
            ">;",
            "Lorg/apache/harmony/security/x509/Extensions;",
            "[B)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertList$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/apache/harmony/security/x509/TBSCertList;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/TBSCertList;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x501/Name;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 9

    const/16 v8, 0x5d

    const/16 v7, 0xa

    const-string v4, "X.509 CRL v"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nSignature Algorithm: ["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v4, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\nIssuer: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    const-string v6, "RFC2253"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nThis Update: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nNext Update: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eqz v4, :cond_1

    const-string v4, "\nRevoked Certificates: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    const-string v4, "\n  ["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const-string v4, "]\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v4, :cond_2

    const-string v4, "\nCRL Extensions: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/Extensions;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    const-string v5, "  "

    invoke-virtual {v4, p1, v5}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v4, "]\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v6, 0x3e8

    instance-of v2, p1, Lorg/apache/harmony/security/x509/TBSCertList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList;

    iget v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    iget v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v2

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    if-nez v2, :cond_0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eq v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_0

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/Extensions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2
.end method

.method public getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getRevokedCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    return v0
.end method
