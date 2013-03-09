.class public Lcom/htc/android/mail/ssl/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CertificateChainValidator"

.field private static sInstance:Lcom/htc/android/mail/ssl/CertificateChainValidator;


# instance fields
.field private mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

.field private mLastModified:J

.field private mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, file:Ljava/io/File;
    if-eqz p1, :cond_0

    .line 141
    :try_start_0
    const-string v1, "keystore"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/ssl/CertificateChainValidator;->init(Landroid/content/Context;Ljava/io/File;)V

    .line 147
    return-void

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
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
    .line 384
    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 388
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
    .line 377
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ssl/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 379
    return-void

    .restart local p2
    :cond_0
    move-object p2, p3

    .line 377
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/android/mail/ssl/CertificateChainValidator;
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    sget-object v0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->sInstance:Lcom/htc/android/mail/ssl/CertificateChainValidator;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/htc/android/mail/ssl/CertificateChainValidator;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ssl/CertificateChainValidator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->sInstance:Lcom/htc/android/mail/ssl/CertificateChainValidator;

    .line 50
    :goto_0
    sget-object v0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->sInstance:Lcom/htc/android/mail/ssl/CertificateChainValidator;

    return-object v0

    .line 45
    :cond_0
    sget-object v1, Lcom/htc/android/mail/ssl/CertificateChainValidator;->sInstance:Lcom/htc/android/mail/ssl/CertificateChainValidator;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->sInstance:Lcom/htc/android/mail/ssl/CertificateChainValidator;

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/ssl/CertificateChainValidator;->reinit(Landroid/content/Context;)V

    .line 47
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;Ljava/io/File;)V
    .locals 15
    .parameter "context"
    .parameter "file"

    .prologue
    .line 55
    const/4 v6, 0x0

    .line 56
    .local v6, ks:Ljava/security/KeyStore;
    const/4 v3, 0x0

    .line 57
    .local v3, fis:Ljava/io/FileInputStream;
    const-string v9, ""

    .line 60
    .local v9, pwd:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 61
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    move-object v3, v4

    .line 67
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 68
    const-string v13, "pwd"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 69
    .local v8, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v13, "pwd"

    const-string v14, ""

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    .end local v8           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    if-eqz v3, :cond_2

    .line 74
    :try_start_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 76
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-virtual {v6, v3, v13}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 77
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 90
    :cond_2
    :goto_1
    :try_start_2
    const-string v13, "X509"

    invoke-static {v13}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v11

    .line 92
    .local v11, trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    const/4 v13, 0x0

    check-cast v13, Ljava/security/KeyStore;

    invoke-virtual {v11, v13}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 93
    invoke-virtual {v11}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    .line 95
    .local v12, trustManagers:[Ljavax/net/ssl/TrustManager;
    if-eqz v12, :cond_3

    array-length v13, v12

    if-lez v13, :cond_3

    .line 96
    move-object v1, v12

    .local v1, arr$:[Ljavax/net/ssl/TrustManager;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-object v10, v1, v5

    .line 97
    .local v10, trustManager:Ljavax/net/ssl/TrustManager;
    instance-of v13, v10, Ljavax/net/ssl/X509TrustManager;

    if-eqz v13, :cond_5

    .line 98
    check-cast v10, Ljavax/net/ssl/X509TrustManager;

    .end local v10           #trustManager:Ljavax/net/ssl/TrustManager;
    check-cast v10, Ljavax/net/ssl/X509TrustManager;

    iput-object v10, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 104
    .end local v1           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_3
    invoke-virtual {v11, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 105
    const/4 v12, 0x0

    .line 106
    invoke-virtual {v11}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    .line 107
    if-eqz v12, :cond_4

    array-length v13, v12

    if-lez v13, :cond_4

    .line 108
    move-object v1, v12

    .restart local v1       #arr$:[Ljavax/net/ssl/TrustManager;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v7, :cond_4

    aget-object v10, v1, v5

    .line 109
    .restart local v10       #trustManager:Ljavax/net/ssl/TrustManager;
    instance-of v13, v10, Ljavax/net/ssl/X509TrustManager;

    if-eqz v13, :cond_6

    .line 110
    check-cast v10, Ljavax/net/ssl/X509TrustManager;

    .end local v10           #trustManager:Ljavax/net/ssl/TrustManager;
    check-cast v10, Ljavax/net/ssl/X509TrustManager;

    iput-object v10, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 119
    .end local v1           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v11           #trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    .end local v12           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :cond_4
    :goto_4
    return-void

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const-string v13, "CertificateChainValidator"

    const-string v14, "Unable to get X509 Trust Manager "

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 82
    .local v2, e:Ljava/security/KeyStoreException;
    const-string v13, "CertificateChainValidator"

    const-string v14, "Key Store exception while initializing TrustManagerFactory "

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 83
    .end local v2           #e:Ljava/security/KeyStoreException;
    :catch_2
    move-exception v2

    .line 84
    .local v2, e:Ljava/io/IOException;
    const-string v13, "CertificateChainValidator"

    const-string v14, "IOException "

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 85
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 86
    .local v2, e:Ljava/security/cert/CertificateException;
    const-string v13, "CertificateChainValidator"

    const-string v14, "CertificateException "

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 96
    .end local v2           #e:Ljava/security/cert/CertificateException;
    .restart local v1       #arr$:[Ljavax/net/ssl/TrustManager;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v10       #trustManager:Ljavax/net/ssl/TrustManager;
    .restart local v11       #trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    .restart local v12       #trustManagers:[Ljavax/net/ssl/TrustManager;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 108
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 116
    .end local v1           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v10           #trustManager:Ljavax/net/ssl/TrustManager;
    .end local v11           #trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    .end local v12           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :catch_4
    move-exception v13

    goto :goto_4

    .line 63
    :catch_5
    move-exception v13

    goto/16 :goto_0
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
    .line 154
    const/4 v12, 0x1

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    const/4 v11, 0x0

    .line 163
    .local v11, serverCertificates:[Ljava/security/cert/X509Certificate;
    const/4 v12, 0x1

    new-array v7, v12, [Ljava/security/cert/X509Certificate;

    .line 165
    .local v7, lastCertificates:[Ljava/security/cert/X509Certificate;
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "CertificateChainValidator"

    const-string v13, "getPeerCertificates"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v8

    .line 169
    .local v8, peerCertificates:[Ljava/security/cert/Certificate;
    if-eqz v8, :cond_1

    array-length v12, v8

    if-gtz v12, :cond_9

    .line 170
    :cond_1
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string v12, "CertificateChainValidator"

    const-string v13, "failed to retrieve peer certificates"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    const-string v12, "failed to retrieve peer certificates"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/htc/android/mail/ssl/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 190
    :cond_3
    :goto_1
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_4

    const-string v12, "CertificateChainValidator"

    const-string v13, "get first certificate"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_4
    const/4 v12, 0x0

    aget-object v2, v11, v12

    .line 193
    .local v2, currCertificate:Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_c

    .line 194
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "CertificateChainValidator"

    const-string v13, "certificate for this site is null"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_5
    const-string v12, "certificate for this site is null"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/htc/android/mail/ssl/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 217
    :cond_6
    :goto_2
    :try_start_1
    iget-object v13, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    monitor-enter v13
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    :try_start_2
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_7

    const-string v12, "CertificateChainValidator"

    const-string v14, "check ServerTrusted"

    invoke-static {v12, v14}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_7
    iget-object v12, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v14, "RSA"

    invoke-interface {v12, v11, v14}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 223
    const/4 v4, 0x0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    :cond_8
    :goto_3
    return-object v4

    .line 156
    .end local v2           #currCertificate:Ljava/security/cert/X509Certificate;
    .end local v7           #lastCertificates:[Ljava/security/cert/X509Certificate;
    .end local v8           #peerCertificates:[Ljava/security/cert/Certificate;
    .end local v11           #serverCertificates:[Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v3

    .line 157
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "failed to perform SSL handshake"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12, v13}, Lcom/htc/android/mail/ssl/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #lastCertificates:[Ljava/security/cert/X509Certificate;
    .restart local v8       #peerCertificates:[Ljava/security/cert/Certificate;
    .restart local v11       #serverCertificates:[Ljava/security/cert/X509Certificate;
    :cond_9
    array-length v12, v8

    new-array v11, v12, [Ljava/security/cert/X509Certificate;

    .line 176
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    array-length v12, v8

    if-ge v6, v12, :cond_b

    .line 177
    aget-object v12, v8, v6

    check-cast v12, Ljava/security/cert/X509Certificate;

    check-cast v12, Ljava/security/cert/X509Certificate;

    aput-object v12, v11, v6

    .line 179
    if-nez v6, :cond_a

    .line 180
    const/4 v13, 0x0

    aget-object v12, v8, v6

    check-cast v12, Ljava/security/cert/X509Certificate;

    check-cast v12, Ljava/security/cert/X509Certificate;

    aput-object v12, v7, v13

    .line 176
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 183
    :cond_b
    if-eqz p1, :cond_3

    .line 184
    const/4 v12, 0x0

    aget-object v12, v11, v12

    if-eqz v12, :cond_3

    .line 185
    const/4 v12, 0x0

    aget-object v12, v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/htc/android/mail/server/Server;->setX509Certificate(Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    .line 198
    .end local v6           #i:I
    .restart local v2       #currCertificate:Ljava/security/cert/X509Certificate;
    :cond_c
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_6

    const-string v12, "CertificateChainValidator"

    const-string v13, "check domain"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 224
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

    .line 225
    :catch_1
    move-exception v3

    .line 226
    .local v3, e:Ljava/security/cert/CertificateException;
    const-string v12, "CertificateChainValidator"

    const-string v13, "failed to pre-validate the certificate chain, error: "

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    :try_start_5
    iget-object v13, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;

    monitor-enter v13
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_2

    .line 229
    :try_start_6
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_d

    const-string v12, "CertificateChainValidator"

    const-string v14, "check ServerTrusted again"

    invoke-static {v12, v14}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_d
    iget-object v12, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v14, "RSA"

    invoke-interface {v12, v7, v14}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 231
    const/4 v4, 0x0

    monitor-exit v13

    goto :goto_3

    .line 232
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v12
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_2

    .line 233
    :catch_2
    move-exception v1

    .line 234
    .local v1, ce:Ljava/security/cert/CertificateException;
    const-string v12, "CertificateChainValidator"

    const-string v13, "failed to pre-validate the certificate chain, error: "

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 241
    const/4 v4, 0x0

    .line 246
    .local v4, error:Lcom/htc/android/mail/ssl/MailSslError;
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    aget-object v2, v11, v12

    .line 248
    if-nez v2, :cond_e

    .line 249
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_e

    const-string v12, "CertificateChainValidator"

    const-string v13, "root certificate is null"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_e
    const/4 v12, 0x1

    new-array v10, v12, [Ljava/security/cert/X509Certificate;

    const/4 v12, 0x0

    aput-object v2, v10, v12

    .line 255
    .local v10, rootCertificateChain:[Ljava/security/cert/X509Certificate;
    :try_start_8
    iget-object v13, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    monitor-enter v13
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_3

    .line 256
    :try_start_9
    iget-object v12, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v14, "RSA"

    invoke-interface {v12, v10, v14}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 258
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 296
    .end local v3           #e:Ljava/security/cert/CertificateException;
    :goto_5
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v11, v12

    .line 299
    .local v9, prevCertificate:Ljava/security/cert/X509Certificate;
    array-length v12, v11

    add-int/lit8 v6, v12, -0x2

    .restart local v6       #i:I
    :goto_6
    if-ltz v6, :cond_1b

    .line 300
    aget-object v2, v11, v6

    .line 303
    if-nez v2, :cond_10

    .line 304
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_f

    const-string v12, "CertificateChainValidator"

    const-string v13, "null certificate in the chain"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_f
    const-string v12, "null certificate in the chain"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/htc/android/mail/ssl/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 310
    :cond_10
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 312
    const-string v5, "not trusted by chain"

    .line 314
    .local v5, errorMessage:Ljava/lang/String;
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x3

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_3

    .line 258
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

    .line 259
    :catch_3
    move-exception v1

    .line 261
    :try_start_c
    iget-object v13, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;

    monitor-enter v13
    :try_end_c
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_6

    .line 262
    :try_start_d
    iget-object v12, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mOwnTrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v14, "RSA"

    invoke-interface {v12, v10, v14}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 264
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

    .line 265
    :catch_4
    move-exception v3

    .line 266
    .local v3, e:Ljava/security/cert/CertificateExpiredException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 267
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_11

    .line 268
    const-string v5, "root certificate has expired"

    .line 271
    :cond_11
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x1

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 289
    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    goto :goto_5

    .line 273
    .end local v5           #errorMessage:Ljava/lang/String;
    .local v3, e:Ljava/security/cert/CertificateException;
    :catch_5
    move-exception v3

    .line 274
    .local v3, e:Ljava/security/cert/CertificateNotYetValidException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 275
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_12

    .line 276
    const-string v5, "root certificate not valid yet"

    .line 279
    :cond_12
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x0

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 289
    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    goto :goto_5

    .line 281
    .end local v5           #errorMessage:Ljava/lang/String;
    .local v3, e:Ljava/security/cert/CertificateException;
    :catch_6
    move-exception v3

    .line 282
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 283
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_13

    .line 284
    const-string v5, "root certificate not trusted"

    .line 287
    :cond_13
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x3

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_3

    .line 319
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

    .line 332
    :try_start_10
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_10
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_10 .. :try_end_10} :catch_9

    .line 357
    :cond_15
    :goto_7
    move-object v9, v2

    .line 299
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_6

    .line 320
    :catch_7
    move-exception v3

    .line 321
    .local v3, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 322
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_16

    .line 323
    const-string v5, "not trusted by chain"

    .line 326
    :cond_16
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x3

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_3

    .line 333
    .end local v3           #e:Ljava/security/GeneralSecurityException;
    .end local v5           #errorMessage:Ljava/lang/String;
    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    :catch_8
    move-exception v3

    .line 334
    .local v3, e:Ljava/security/cert/CertificateExpiredException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 335
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_17

    .line 336
    const-string v5, "certificate expired"

    .line 339
    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/htc/android/mail/ssl/MailSslError;->getPrimaryError()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_15

    .line 341
    :cond_18
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x1

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    goto :goto_7

    .line 344
    .end local v3           #e:Ljava/security/cert/CertificateExpiredException;
    .end local v5           #errorMessage:Ljava/lang/String;
    :catch_9
    move-exception v3

    .line 345
    .local v3, e:Ljava/security/cert/CertificateNotYetValidException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 346
    .restart local v5       #errorMessage:Ljava/lang/String;
    if-nez v5, :cond_19

    .line 347
    const-string v5, "certificate not valid yet"

    .line 350
    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/htc/android/mail/ssl/MailSslError;->getPrimaryError()I

    move-result v12

    if-gez v12, :cond_15

    .line 352
    :cond_1a
    new-instance v4, Lcom/htc/android/mail/ssl/MailSslError;

    .end local v4           #error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v12, 0x0

    invoke-direct {v4, v12, v2}, Lcom/htc/android/mail/ssl/MailSslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .restart local v4       #error:Lcom/htc/android/mail/ssl/MailSslError;
    goto :goto_7

    .line 362
    .end local v3           #e:Ljava/security/cert/CertificateNotYetValidException;
    .end local v5           #errorMessage:Ljava/lang/String;
    :cond_1b
    if-nez v4, :cond_8

    .line 363
    sget-boolean v12, Lcom/htc/android/mail/ssl/CertificateChainValidator;->DEBUG:Z

    if-eqz v12, :cond_1c

    const-string v12, "CertificateChainValidator"

    const-string v13, "failed to pre-validate the certificate chain due to a non-standard error"

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1c
    const-string v12, "failed to pre-validate the certificate chain due to a non-standard error"

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/htc/android/mail/ssl/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public reinit(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, file:Ljava/io/File;
    :try_start_0
    const-string v3, "keystore"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 127
    .local v1, lastModified:J
    iget-wide v3, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mLastModified:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    .line 128
    iput-wide v1, p0, Lcom/htc/android/mail/ssl/CertificateChainValidator;->mLastModified:J

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/ssl/CertificateChainValidator;->init(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0           #file:Ljava/io/File;
    .end local v1           #lastModified:J
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v0       #file:Ljava/io/File;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
