.class public final Lorg/apache/harmony/security/x509/ExtendedKeyUsage;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "ExtendedKeyUsage.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    new-instance v1, Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;

    invoke-direct {v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Extended Key Usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " \""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuilder;)V

    :goto_1
    return-void

    :cond_2
    const-string v2, " ]\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    return-object v0
.end method
