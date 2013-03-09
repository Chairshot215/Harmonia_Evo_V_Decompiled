.class public final Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;
.super Lorg/apache/harmony/security/asn1/ASN1Time;
.source "ASN1GeneralizedTime.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime; = null

.field private static final GEN_PATTERN:Ljava/lang/String; = "yyyyMMddHHmmss.SSS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Time;-><init>(I)V

    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;
    .locals 1

    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readGeneralizedTime()V

    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeGeneralizedTime()V

    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss.SSS"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/16 v4, 0x30

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move v7, v5

    :goto_1
    if-ne v1, v0, :cond_1

    move v4, v5

    :goto_2
    and-int/2addr v4, v7

    if-eqz v4, :cond_2

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_3

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    iget-object v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    array-length v4, v4

    iput v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    return-void
.end method
