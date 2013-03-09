.class public Lcom/android/org/bouncycastle/jce/PrincipalUtil;
.super Ljava/lang/Object;
.source "PrincipalUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIssuerX509Principal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/jce/X509Principal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getTBSCertList()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v1

    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v1

    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v1

    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
