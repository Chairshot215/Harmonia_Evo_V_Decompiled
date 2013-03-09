.class final Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
.super Ljava/lang/Object;
.source "AuthenticatedAttributes.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;


# instance fields
.field private final authenticatedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;

    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    return-void
.end method

.method private constructor <init>([BLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->authenticatedAttributes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>([BLjava/util/List;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;-><init>([BLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->authenticatedAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1SetOf;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    return-object v0
.end method
