.class public final Lorg/apache/harmony/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private generalSubtrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;

    sget-object v1, Lorg/apache/harmony/security/x509/GeneralSubtree;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/GeneralSubtrees;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    return-object v0
.end method

.method public getSubtrees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    return-object v0
.end method
