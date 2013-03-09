.class Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecureX509TrustManager"
.end annotation


# instance fields
.field private mHost:Ljava/lang/String;

.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/String;)V
    .locals 0
    .parameter "trustManager"
    .parameter "host"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 66
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, ce:Ljava/security/cert/CertificateException;
    const-string v1, "Failed client"

    const/4 v2, 0x1

    #calls: Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->logCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    invoke-static {p1, v1, v2}, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->access$100([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 75
    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/net/DomainNameValidator;->match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const-string v1, "Failed domain name"

    #calls: Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->logCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    invoke-static {p1, v1, v3}, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->access$100([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 91
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate domain name does not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, ce:Ljava/security/cert/CertificateException;
    const-string v1, "Failed server"

    #calls: Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->logCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    invoke-static {p1, v1, v3}, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->access$100([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 86
    throw v0

    .line 93
    .end local v0           #ce:Ljava/security/cert/CertificateException;
    :cond_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
