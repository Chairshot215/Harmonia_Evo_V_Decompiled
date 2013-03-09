.class public final Lorg/apache/harmony/security/x509/GeneralSubtree;
.super Ljava/lang/Object;
.source "GeneralSubtree.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final base:Lorg/apache/harmony/security/x509/GeneralName;

.field private encoding:[B

.field private final maximum:I

.field private final minimum:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/harmony/security/x509/GeneralSubtree$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v2, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralSubtree;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/GeneralName;II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;

    iput p2, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->minimum:I

    iput p3, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/GeneralSubtree;)Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/GeneralSubtree;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->minimum:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/GeneralSubtree;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I

    return v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "General Subtree: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  base: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  minimum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->minimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  maximum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getBase()Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/GeneralSubtree;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->encoding:[B

    return-object v0
.end method
