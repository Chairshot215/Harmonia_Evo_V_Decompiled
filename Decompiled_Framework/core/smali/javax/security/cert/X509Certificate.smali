.class public abstract Ljavax/security/cert/X509Certificate;
.super Ljavax/security/cert/Certificate;
.source "X509Certificate.java"


# static fields
.field private static constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string v2, "cert.provider.x509v1"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Ljavax/security/cert/X509Certificate;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/security/cert/Certificate;-><init>()V

    return-void
.end method

.method public static final getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v3, Ljavax/security/cert/CertificateException;

    const-string v4, "inStream == null"

    invoke-direct {v3, v4}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    sget-object v3, Ljavax/security/cert/X509Certificate;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v3, Ljavax/security/cert/X509Certificate;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Ljavax/security/cert/CertificateException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_1
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v3, Ljavax/security/cert/X509Certificate$1;

    invoke-direct {v3, v0}, Ljavax/security/cert/X509Certificate$1;-><init>(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Ljavax/security/cert/CertificateException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final getInstance([B)Ljavax/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v1, Ljavax/security/cert/CertificateException;

    const-string v2, "certData == null"

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Ljavax/security/cert/X509Certificate;->getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public abstract getNotAfter()Ljava/util/Date;
.end method

.method public abstract getNotBefore()Ljava/util/Date;
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSubjectDN()Ljava/security/Principal;
.end method

.method public abstract getVersion()I
.end method
