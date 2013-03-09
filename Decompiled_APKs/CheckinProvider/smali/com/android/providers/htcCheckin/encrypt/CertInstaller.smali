.class public Lcom/android/providers/htcCheckin/encrypt/CertInstaller;
.super Ljava/lang/Object;
.source "CertInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;
    }
.end annotation


# static fields
.field private static final HEXDIGITS:[C = null

.field private static final TAG:Ljava/lang/String; = "htcCheckinService.Encrypt"


# instance fields
.field private CERT_NAME_DEFAULT:Ljava/lang/String;

.field private CERT_PATH_DEFAULT:Ljava/lang/String;

.field private final PASSWORD_CERT_NEW:Ljava/lang/String;

.field public final VERBOSE:Z

.field private mHost:Ljava/lang/String;

.field private mPort:I

.field private passphrase:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->HEXDIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->VERBOSE:Z

    .line 64
    iput-object v1, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->mHost:Ljava/lang/String;

    .line 65
    iput v0, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->mPort:I

    .line 66
    iput-object v1, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->passphrase:[C

    .line 68
    const-string v0, "system/etc/security/"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->CERT_PATH_DEFAULT:Ljava/lang/String;

    .line 69
    const-string v0, "cacerts.bks"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->CERT_NAME_DEFAULT:Ljava/lang/String;

    .line 70
    const-string v0, "89124138af"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->PASSWORD_CERT_NEW:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->mHost:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->mPort:I

    .line 75
    const-string v0, "89124138af"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->passphrase:[C

    .line 77
    return-void
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 7
    .parameter "bytes"

    .prologue
    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 183
    .local v1, b:I
    and-int/lit16 v1, v1, 0xff

    .line 184
    sget-object v5, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->HEXDIGITS:[C

    shr-int/lit8 v6, v1, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    sget-object v5, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->HEXDIGITS:[C

    and-int/lit8 v6, v1, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v1           #b:I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public installCert(Ljava/lang/String;)Z
    .locals 25
    .parameter "certFile"

    .prologue
    .line 82
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v10, file:Ljava/io/File;
    const/4 v14, 0x0

    .line 89
    .local v14, ks:Ljava/security/KeyStore;
    const/4 v13, 0x0

    .line 90
    .local v13, isAndroidCAStore:Z
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 91
    const-string v22, "htcCheckinService.Encrypt"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Loading KeyStore "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v12, in:Ljava/io/InputStream;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v14

    .line 94
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v14, v12, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 95
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 104
    .end local v12           #in:Ljava/io/InputStream;
    :goto_0
    const-string v22, "TLS"

    invoke-static/range {v22 .. v22}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 105
    .local v6, context:Ljavax/net/ssl/SSLContext;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v21

    .line 106
    .local v21, tmf:Ljavax/net/ssl/TrustManagerFactory;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 107
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v7, v22, v23

    check-cast v7, Ljavax/net/ssl/X509TrustManager;

    .line 108
    .local v7, defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
    new-instance v20, Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    .line 109
    .local v20, tm:Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v20, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v6, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 110
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    .line 112
    .local v9, factory:Ljavax/net/ssl/SSLSocketFactory;
    const-string v22, "htcCheckinService.Encrypt"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "connect to Cert Server: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->mHost:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->mPort:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->mHost:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->mPort:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v19

    check-cast v19, Ljavax/net/ssl/SSLSocket;

    .line 114
    .local v19, socket:Ljavax/net/ssl/SSLSocket;
    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 118
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 119
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 123
    #getter for: Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;->chain:[Ljava/security/cert/X509Certificate;
    invoke-static/range {v20 .. v20}, Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;->access$000(Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 124
    .local v5, chain:[Ljava/security/cert/X509Certificate;
    if-nez v5, :cond_1

    .line 125
    const-string v22, "htcCheckinService.Encrypt"

    const-string v23, "Could not obtain server certificate chain"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v22, 0x0

    .line 172
    .end local v5           #chain:[Ljava/security/cert/X509Certificate;
    .end local v6           #context:Ljavax/net/ssl/SSLContext;
    .end local v7           #defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
    .end local v9           #factory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v10           #file:Ljava/io/File;
    .end local v13           #isAndroidCAStore:Z
    .end local v14           #ks:Ljava/security/KeyStore;
    .end local v19           #socket:Ljavax/net/ssl/SSLSocket;
    .end local v20           #tm:Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;
    .end local v21           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :goto_1
    return v22

    .line 99
    .restart local v10       #file:Ljava/io/File;
    .restart local v13       #isAndroidCAStore:Z
    .restart local v14       #ks:Ljava/security/KeyStore;
    :cond_0
    const-string v22, "AndroidCAStore"

    invoke-static/range {v22 .. v22}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v14

    .line 100
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 101
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 129
    .restart local v5       #chain:[Ljava/security/cert/X509Certificate;
    .restart local v6       #context:Ljavax/net/ssl/SSLContext;
    .restart local v7       #defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
    .restart local v9       #factory:Ljavax/net/ssl/SSLSocketFactory;
    .restart local v19       #socket:Ljavax/net/ssl/SSLSocket;
    .restart local v20       #tm:Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;
    .restart local v21       #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :cond_1
    if-eqz v13, :cond_2

    .line 131
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v14

    .line 132
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 135
    :cond_2
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    sget-object v23, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct/range {v22 .. v23}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 139
    .local v17, reader:Ljava/io/BufferedReader;
    const-string v22, "SHA1"

    invoke-static/range {v22 .. v22}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v18

    .line 140
    .local v18, sha1:Ljava/security/MessageDigest;
    const-string v22, "MD5"

    invoke-static/range {v22 .. v22}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v15

    .line 142
    .local v15, md5:Ljava/security/MessageDigest;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    array-length v0, v5

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_3

    .line 143
    aget-object v4, v5, v11

    .line 147
    .local v4, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 150
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->mHost:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v11, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, alias:Ljava/lang/String;
    invoke-virtual {v14, v3, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 156
    const-string v22, "htcCheckinService.Encrypt"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Add cert to keystore ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] (with password) using alias \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 163
    .end local v3           #alias:Ljava/lang/String;
    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    :cond_3
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 164
    .local v16, out:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->passphrase:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 165
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 170
    .end local v5           #chain:[Ljava/security/cert/X509Certificate;
    .end local v6           #context:Ljavax/net/ssl/SSLContext;
    .end local v7           #defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
    .end local v9           #factory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #i:I
    .end local v13           #isAndroidCAStore:Z
    .end local v14           #ks:Ljava/security/KeyStore;
    .end local v15           #md5:Ljava/security/MessageDigest;
    .end local v16           #out:Ljava/io/OutputStream;
    .end local v17           #reader:Ljava/io/BufferedReader;
    .end local v18           #sha1:Ljava/security/MessageDigest;
    .end local v19           #socket:Ljavax/net/ssl/SSLSocket;
    .end local v20           #tm:Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;
    .end local v21           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v8

    .line 171
    .local v8, e:Ljava/lang/Exception;
    const-string v22, "htcCheckinService.Encrypt"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error in installCert(). Err:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v22, 0x0

    goto/16 :goto_1
.end method
