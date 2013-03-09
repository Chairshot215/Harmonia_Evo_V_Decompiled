.class public Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CertificateChainValidator"

.field private static sInstance:Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;


# instance fields
.field private mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

.field private mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, file:Ljava/io/File;
    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->init(Landroid/content/Context;Ljava/io/File;)V

    .line 77
    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 1
    .parameter "socket"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 318
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "socket"
    .parameter "errorMessage"
    .parameter "defaultErrorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 309
    return-void

    .restart local p2
    :cond_0
    move-object p2, p3

    .line 307
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    sget-object v0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->sInstance:Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->sInstance:Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;

    .line 46
    :cond_0
    sget-object v0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->sInstance:Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;

    return-object v0
.end method

.method private init(Landroid/content/Context;Ljava/io/File;)V
    .locals 8
    .parameter "context"
    .parameter "file"

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 54
    .local v2, ks:Ljava/security/KeyStore;
    :try_start_0
    const-string v7, "X509"

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 56
    .local v5, trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    const/4 v7, 0x0

    check-cast v7, Ljava/security/KeyStore;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 57
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    .line 59
    .local v6, trustManagers:[Ljavax/net/ssl/TrustManager;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 60
    move-object v0, v6

    .local v0, arr$:[Ljavax/net/ssl/TrustManager;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 61
    .local v4, trustManager:Ljavax/net/ssl/TrustManager;
    instance-of v7, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_1

    .line 62
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .end local v4           #trustManager:Ljavax/net/ssl/TrustManager;
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 63
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    iput-object v7, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v5           #trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    .end local v6           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :cond_0
    :goto_1
    return-void

    .line 60
    .restart local v0       #arr$:[Ljavax/net/ssl/TrustManager;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #trustManager:Ljavax/net/ssl/TrustManager;
    .restart local v5       #trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    .restart local v6       #trustManagers:[Ljavax/net/ssl/TrustManager;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #trustManager:Ljavax/net/ssl/TrustManager;
    .end local v5           #trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    .end local v6           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Lcom/htc/android/mail/server/Server;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Lcom/htc/android/mail/ssl/MailSslError;
    .locals 15
    .parameter "server"
    .parameter "sslSocket"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v12, 0x1

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    const/4 v11, 0x0

    .line 93
    .local v11, serverCertificates:[Ljava/security/cert/X509Certificate;
    const/4 v12, 0x1

    new-array v7, v12, [Ljava/security/cert/X509Certificate;

    .line 95
    .local v7, lastCertificates:[Ljava/security/cert/X509Certificate;
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "CertificateChainValidator"

    const-string v13, "getPeerCertificates"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v8

    .line 99
    .local v8, peerCertificates:[Ljava/security/cert/Certificate;
    if-eqz v8, :cond_1

    array-length v12, v8

    if-gtz v12, :cond_9

    .line 100
    :cond_1
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string v12, "CertificateChainValidator"

    const-string v13, "failed to retrieve peer certificates"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_2
    const-string v12, "failed to retrieve peer certificates"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 120
    :cond_3
    :goto_1
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_4

    const-string v12, "CertificateChainValidator"

    const-string v13, "get first certificate"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_4
    const/4 v12, 0x0

    aget-object v2, v11, v12

    .line 123
    .local v2, currCertificate:Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_c

    .line 124
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "CertificateChainValidator"

    const-string v13, "certificate for this site is null"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_5
    const-string v12, "certificate for this site is null"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 147
    :cond_6
    :goto_2
    :try_start_1
    iget-object v13, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    monitor-enter v13
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :try_start_2
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_7

    const-string v12, "CertificateChainValidator"

    const-string v14, "check ServerTrusted"

    invoke-static {v12, v14}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_7
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v14, "RSA"

    invoke-interface {v12, v11, v14}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 153
    const/4 v4, 0x0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    :cond_8
    :goto_3
    return-object v4

    .line 86
    .end local v2           #currCertificate:Ljava/security/cert/X509Certificate;
    .end local v7           #lastCertificates:[Ljava/security/cert/X509Certificate;
    .end local v8           #peerCertificates:[Ljava/security/cert/Certificate;
    .end local v11           #serverCertificates:[Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v3

    .line 87
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "failed to perform SSL handshake"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12, v13}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #lastCertificates:[Ljava/security/cert/X509Certificate;
    .restart local v8       #peerCertificates:[Ljava/security/cert/Certificate;
    .restart local v11       #serverCertificates:[Ljava/security/cert/X509Certificate;
    :cond_9
    array-length v12, v8

    new-array v11, v12, [Ljava/security/cert/X509Certificate;

    .line 106
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    array-length v12, v8

    if-ge v6, v12, :cond_b

    .line 107
    aget-object v12, v8, v6

    check-cast v12, Ljava/security/cert/X509Certificate;

    check-cast v12, Ljava/security/cert/X509Certificate;

    aput-object v12, v11, v6

    .line 109
    if-nez v6, :cond_a

    .line 110
    const/4 v13, 0x0

    aget-object v12, v8, v6

    check-cast v12, Ljava/security/cert/X509Certificate;

    check-cast v12, Ljava/security/cert/X509Certificate;

    aput-object v12, v7, v13

    .line 106
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 113
    :cond_b
    if-eqz p1, :cond_3

    .line 114
    const/4 v12, 0x0

    aget-object v12, v11, v12

    if-eqz v12, :cond_3

    .line 115
    const/4 v12, 0x0

    aget-object v12, v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/htc/android/mail/server/Server;->setX509Certificate(Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    .line 128
    .end local v6           #i:I
    .restart local v2       #currCertificate:Ljava/security/cert/X509Certificate;
    :cond_c
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_6

    const-string v12, "CertificateChainValidator"

    const-string v13, "check domain"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 154
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v12
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 155
    :catch_1
    move-exception v3

    .line 156
    .local v3, e:Ljava/security/cert/CertificateException;
    const-string v12, "CertificateChainValidator"

    const-string v13, "failed to pre-validate the certificate chain, error: "

    invoke-static {v12, v13, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 158
    :try_start_5
    iget-object v13, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;

    monitor-enter v13
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_2

    .line 159
    :try_start_6
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_d

    const-string v12, "CertificateChainValidator"

    const-string v14, "check ServerTrusted again"

    invoke-static {v12, v14}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_d
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v14, "RSA"

    invoke-interface {v12, v7, v14}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 161
    const/4 v4, 0x0

    monitor-exit v13

    goto :goto_3

    .line 162
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v12
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_2

    .line 163
    :catch_2
    move-exception v1

    .line 164
    .local v1, ce:Ljava/security/cert/CertificateException;
    const-string v12, "CertificateChainValidator"

    const-string v13, "failed to pre-validate the certificate chain, error2: "

    invoke-static {v12, v13, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 171
    const/4 v4, 0x0

    .line 176
    .local v4, error:Lcom/htc/android/mail/ssl/MailSslError;
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    aget-object v2, v11, v12

    .line 178
    if-nez v2, :cond_e

    .line 179
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_e

    const-string v12, "CertificateChainValidator"

    const-string v13, "root certificate is null"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_e
    const/4 v12, 0x1

    new-array v10, v12, [Ljava/security/cert/X509Certificate;

    const/4 v12, 0x0

    aput-object v2, v10, v12

    .line 185
    .local v10, rootCertificateChain:[Ljava/security/cert/X509Certificate;
    :try_start_8
    iget-object v13, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    monitor-enter v13
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_3

    .line 186
    :try_start_9
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v14, "RSA"

    invoke-interface {v12, v10, v14}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 188
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 226
    .end local v3           #e:Ljava/security/cert/CertificateException;
    :goto_5
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v11, v12

    .line 229
    .local v9, prevCertificate:Ljava/security/cert/X509Certificate;
    array-length v12, v11

    add-int/lit8 v6, v12, -0x2

    .restart local v6       #i:I
    :goto_6
    if-ltz v6, :cond_1b

    .line 230
    aget-object v2, v11, v6

    .line 233
    if-nez v2, :cond_10

    .line 234
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_f

    const-string v12, "CertificateChainValidator"

    const-string v13, "null certificate in the chain"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_f
    const-string v12, "null certificate in the chain"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 240
    :cond_10
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 242
    const-string v5, "not trusted by chain"

    .line 244
    .local v5, errorMessage:Ljava/lang/String;
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x3

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_3

    .line 188
    .end local v5           #errorMessage:Ljava/lang/String;
    .end local v6           #i:I
    .end local v9           #prevCertificate:Ljava/security/cert/X509Certificate;
    .restart local v3       #e:Ljava/security/cert/CertificateException;
    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    :catchall_2
    move-exception v12

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v12
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_3

    .line 189
    :catch_3
    move-exception v1

    .line 191
    :try_start_c
    iget-object v13, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;

    monitor-enter v13
    :try_end_c
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_6

    .line 192
    :try_start_d
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v14, "RSA"

    invoke-interface {v12, v10, v14}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 194
    monitor-exit v13

    goto :goto_5

    :catchall_3
    move-exception v12

    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v12
    :try_end_e
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_6

    .line 195
    :catch_4
    move-exception v3

    .line 196
    .local v3, e:Ljava/security/cert/CertificateExpiredException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 197
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_11

    .line 198
    const-string v5, "root certificate has expired"

    .line 201
    :cond_11
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x1

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 219
    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    goto :goto_5

    .line 203
    .end local v5           #errorMessage:Ljava/lang/String;
    .local v3, e:Ljava/security/cert/CertificateException;
    :catch_5
    move-exception v3

    .line 204
    .local v3, e:Ljava/security/cert/CertificateNotYetValidException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 205
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_12

    .line 206
    const-string v5, "root certificate not valid yet"

    .line 209
    :cond_12
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x0

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 219
    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    goto :goto_5

    .line 211
    .end local v5           #errorMessage:Ljava/lang/String;
    .local v3, e:Ljava/security/cert/CertificateException;
    :catch_6
    move-exception v3

    .line 212
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 213
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_13

    .line 214
    const-string v5, "root certificate not trusted"

    .line 217
    :cond_13
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x3

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_3

    .line 249
    .end local v3           #e:Ljava/security/cert/CertificateException;
    .end local v5           #errorMessage:Ljava/lang/String;
    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    .restart local v6       #i:I
    .restart local v9       #prevCertificate:Ljava/security/cert/X509Certificate;
    :cond_14
    :try_start_f
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_f
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_f} :catch_7

    .line 262
    :try_start_10
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_10
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_10 .. :try_end_10} :catch_9

    .line 287
    :cond_15
    :goto_7
    move-object v9, v2

    .line 229
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_6

    .line 250
    :catch_7
    move-exception v3

    .line 251
    .local v3, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 252
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_16

    .line 253
    const-string v5, "not trusted by chain"

    .line 256
    :cond_16
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x3

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_3

    .line 263
    .end local v3           #e:Ljava/security/GeneralSecurityException;
    .end local v5           #errorMessage:Ljava/lang/String;
    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    :catch_8
    move-exception v3

    .line 264
    .local v3, e:Ljava/security/cert/CertificateExpiredException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 265
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_17

    .line 266
    const-string v5, "certificate expired"

    .line 269
    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/htc/android/mail/ssl/MailSslError;->getPrimaryError()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_15

    .line 271
    :cond_18
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x1

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    goto :goto_7

    .line 274
    .end local v3           #e:Ljava/security/cert/CertificateExpiredException;
    .end local v5           #errorMessage:Ljava/lang/String;
    :catch_9
    move-exception v3

    .line 275
    .local v3, e:Ljava/security/cert/CertificateNotYetValidException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 276
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_19

    .line 277
    const-string v5, "certificate not valid yet"

    .line 280
    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/htc/android/mail/ssl/MailSslError;->getPrimaryError()I

    move-result v12

    if-gez v12, :cond_15

    .line 282
    :cond_1a
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x0

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    goto :goto_7

    .line 292
    .end local v3           #e:Ljava/security/cert/CertificateNotYetValidException;
    .end local v5           #errorMessage:Ljava/lang/String;
    :cond_1b
    if-nez v4, :cond_8

    .line 293
    sget-boolean v12, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_1c

    const-string v12, "CertificateChainValidator"

    const-string v13, "failed to pre-validate the certificate chain due to a non-standard error"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_1c
    const-string v12, "failed to pre-validate the certificate chain due to a non-standard error"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
