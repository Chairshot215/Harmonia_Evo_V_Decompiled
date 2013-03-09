.class public final Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private final keyIdentifier:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    return-void
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;-><init>([B)V

    iput-object p0, v0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubjectKeyIdentifier: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    invoke-static {v0, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method
