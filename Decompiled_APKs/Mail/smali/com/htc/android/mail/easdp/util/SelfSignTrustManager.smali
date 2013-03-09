.class public Lcom/htc/android/mail/easdp/util/SelfSignTrustManager;
.super Lcom/htc/android/mail/ssl/TrustManagerImpl;
.source "SelfSignTrustManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SelfSignTrustManager"


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 0
    .parameter "ks"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ssl/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    .line 18
    return-void
.end method


# virtual methods
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 12
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 23
    const/4 v2, 0x0

    .line 25
    .local v2, defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_start_0
    const-string v10, "X509"

    invoke-static {v10}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v8

    .line 26
    .local v8, trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    const/4 v10, 0x0

    check-cast v10, Ljava/security/KeyStore;

    invoke-virtual {v8, v10}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 27
    invoke-virtual {v8}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v9

    .line 28
    .local v9, trustManagers:[Ljavax/net/ssl/TrustManager;
    if-eqz v9, :cond_0

    array-length v10, v9

    if-lez v10, :cond_0

    .line 29
    move-object v1, v9

    .local v1, arr$:[Ljavax/net/ssl/TrustManager;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v1, v5

    .line 30
    .local v7, trustManager:Ljavax/net/ssl/TrustManager;
    instance-of v10, v7, Ljavax/net/ssl/X509TrustManager;

    if-eqz v10, :cond_2

    .line 31
    check-cast v7, Ljavax/net/ssl/X509TrustManager;

    .end local v7           #trustManager:Ljavax/net/ssl/TrustManager;
    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    .end local v1           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    .end local v9           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 42
    :try_start_1
    invoke-interface {v2, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :cond_1
    :goto_2
    return-void

    .line 29
    .restart local v1       #arr$:[Ljavax/net/ssl/TrustManager;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #trustManager:Ljavax/net/ssl/TrustManager;
    .restart local v8       #trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    .restart local v9       #trustManagers:[Ljavax/net/ssl/TrustManager;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 44
    .end local v1           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #trustManager:Ljavax/net/ssl/TrustManager;
    .end local v8           #trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    .end local v9           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v3

    .line 45
    .local v3, e:Ljava/security/cert/CertificateException;
    const/4 v10, 0x1

    new-array v4, v10, [Ljava/security/cert/X509Certificate;

    .line 46
    .local v4, firstCert:[Ljava/security/cert/X509Certificate;
    aget-object v10, p1, v11

    aput-object v10, v4, v11

    .line 47
    invoke-super {p0, v4, p2}, Lcom/htc/android/mail/ssl/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_2

    .line 36
    .end local v3           #e:Ljava/security/cert/CertificateException;
    .end local v4           #firstCert:[Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v10

    goto :goto_1
.end method
