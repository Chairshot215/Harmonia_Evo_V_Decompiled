.class public final Lorg/apache/harmony/security/x501/DirectoryString;
.super Ljava/lang/Object;
.source "DirectoryString.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/harmony/security/x501/DirectoryString$1;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x501/DirectoryString$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
