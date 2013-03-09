.class public Lcom/android/updater/util/UpdateVerifier;
.super Ljava/lang/Object;
.source "UpdateVerifier.java"


# static fields
.field private static final KEYSTORE:Ljava/io/File; = null

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | _UpdateVerifier"

.field public static bCancelVerify:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/updater/util/UpdateVerifier;->KEYSTORE:Ljava/io/File;

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImageId(Ljava/lang/String;)I
    .locals 7
    .parameter "strURL"

    .prologue
    .line 441
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 443
    :cond_0
    const/4 v4, -0x1

    .line 477
    :cond_1
    :goto_0
    return v4

    .line 446
    :cond_2
    const/4 v4, 0x0

    .line 447
    .local v4, id:I
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 448
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, aryFileName:[Ljava/lang/String;
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, filename:Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 453
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 459
    :cond_3
    :try_start_0
    const-string v5, ".zip"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    array-length v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    const-string v6, "zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v0, v5

    const-string v6, "enc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 463
    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 466
    :cond_4
    const-string v5, ".enc"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    const-string v6, "enc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 469
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    .line 475
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private static getMID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 424
    const-string v0, ""

    .line 425
    .local v0, STRING_EMPTY:Ljava/lang/String;
    move-object v2, v0

    .line 427
    .local v2, mid:Ljava/lang/String;
    :try_start_0
    const-string v3, "ro.mid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 432
    :goto_0
    return-object v2

    .line 428
    :catch_0
    move-exception v1

    .line 430
    .local v1, e:Ljava/lang/Exception;
    move-object v2, v0

    goto :goto_0
.end method

.method public static verifyPackage(Ljava/io/File;)V
    .locals 65
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v63, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v63

    .line 75
    const/16 v62, 0x0

    :try_start_0
    invoke-static/range {v62 .. v62}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v62

    sput-object v62, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 76
    monitor-exit v63
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v49

    .line 94
    .local v49, strImageFileName:Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Lcom/android/updater/util/UpdateVerifier;->getImageId(Ljava/lang/String;)I

    move-result v36

    .line 95
    .local v36, nFileID:I
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "FileID:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-lez v36, :cond_0

    .line 97
    const/4 v9, 0x0

    .line 98
    .local v9, bResult:Z
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "It\'s encrypted image!"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_1
    const-string v5, "/system/etc/security/FotaSign_PubKey.der"

    .line 102
    .local v5, PUB_KEY:Ljava/lang/String;
    new-instance v46, Lcom/android/updater/util/RSA_Sign;

    invoke-direct/range {v46 .. v46}, Lcom/android/updater/util/RSA_Sign;-><init>()V

    .line 103
    .local v46, rsa_sign:Lcom/android/updater/util/RSA_Sign;
    const/16 v62, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v62

    invoke-virtual {v0, v1, v5}, Lcom/android/updater/util/RSA_Sign;->set_EncSignKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v46

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/android/updater/util/RSA_Sign;->do_verify(Ljava/lang/String;)Z

    move-result v9

    .line 106
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Result of verifying encrypted image:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    .end local v5           #PUB_KEY:Ljava/lang/String;
    .end local v46           #rsa_sign:Lcom/android/updater/util/RSA_Sign;
    :goto_0
    if-nez v9, :cond_1b

    .line 112
    new-instance v62, Ljava/security/SignatureException;

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Unsigned OTA image: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-direct/range {v62 .. v63}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v62

    .line 76
    .end local v9           #bResult:Z
    .end local v36           #nFileID:I
    .end local v49           #strImageFileName:Ljava/lang/String;
    :catchall_0
    move-exception v62

    :try_start_2
    monitor-exit v63
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v62

    .line 107
    .restart local v9       #bResult:Z
    .restart local v36       #nFileID:I
    .restart local v49       #strImageFileName:Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 108
    .local v22, e:Ljava/lang/Exception;
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "catch exception: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v9, 0x0

    goto :goto_0

    .line 116
    .end local v9           #bResult:Z
    .end local v22           #e:Ljava/lang/Exception;
    :cond_0
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "Start to check the sign of non-encrypted image or can\'t get FileID"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v54, Ljava/util/HashSet;

    invoke-direct/range {v54 .. v54}, Ljava/util/HashSet;-><init>()V

    .line 120
    .local v54, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    new-instance v57, Ljava/util/zip/ZipFile;

    sget-object v62, Lcom/android/updater/util/UpdateVerifier;->KEYSTORE:Ljava/io/File;

    move-object/from16 v0, v57

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 122
    .local v57, zip:Ljava/util/zip/ZipFile;
    :try_start_3
    const-string v62, "X.509"

    invoke-static/range {v62 .. v62}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v16

    .line 123
    .local v16, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual/range {v57 .. v57}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v25

    .line 124
    .local v25, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v62

    if-eqz v62, :cond_1

    .line 125
    invoke-interface/range {v25 .. v25}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/zip/ZipEntry;

    .line 126
    .local v26, entry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v57

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v62

    move-object/from16 v0, v16

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v62

    move-object/from16 v0, v54

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 129
    .end local v16           #cf:Ljava/security/cert/CertificateFactory;
    .end local v25           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v26           #entry:Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v62

    invoke-virtual/range {v57 .. v57}, Ljava/util/zip/ZipFile;->close()V

    throw v62

    .restart local v16       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v25       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-virtual/range {v57 .. v57}, Ljava/util/zip/ZipFile;->close()V

    .line 133
    const/16 v51, 0x0

    .line 134
    .local v51, temp:Ljava/util/zip/ZipEntry;
    const/16 v27, 0x0

    .line 135
    .local v27, entryFirmware:Ljava/util/zip/ZipEntry;
    const/16 v58, 0x0

    .line 136
    .local v58, zipFile:Ljava/util/zip/ZipFile;
    const/16 v30, 0x0

    .line 137
    .local v30, inputFirmware:Ljava/util/zip/ZipInputStream;
    const/4 v12, 0x0

    .line 139
    .local v12, bf:Ljava/io/BufferedReader;
    new-instance v32, Ljava/util/jar/JarFile;

    const/16 v62, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v62

    invoke-direct {v0, v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 141
    .local v32, jar:Ljava/util/jar/JarFile;
    :try_start_4
    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v33

    .line 142
    .local v33, manifest:Ljava/util/jar/Manifest;
    if-nez v33, :cond_5

    .line 143
    new-instance v62, Ljava/util/jar/JarException;

    const-string v63, "Manifest not found"

    invoke-direct/range {v62 .. v63}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v62
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 393
    .end local v33           #manifest:Ljava/util/jar/Manifest;
    :catchall_2
    move-exception v62

    :goto_2
    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    .line 395
    if-eqz v12, :cond_2

    .line 396
    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 397
    :cond_2
    const/4 v12, 0x0

    .line 398
    const/16 v51, 0x0

    .line 399
    if-eqz v30, :cond_3

    .line 400
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->close()V

    .line 401
    :cond_3
    const/16 v30, 0x0

    .line 402
    const/16 v27, 0x0

    .line 403
    if-eqz v58, :cond_4

    .line 404
    invoke-virtual/range {v58 .. v58}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 405
    const/16 v58, 0x0

    .line 412
    :cond_4
    :goto_3
    sget-object v63, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v63

    .line 413
    const/16 v64, 0x0

    :try_start_6
    invoke-static/range {v64 .. v64}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v64

    sput-object v64, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 414
    monitor-exit v63
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 393
    throw v62

    .line 147
    .restart local v33       #manifest:Ljava/util/jar/Manifest;
    :cond_5
    :try_start_7
    invoke-virtual/range {v33 .. v33}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_7

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 148
    .local v39, name:Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v62

    if-nez v62, :cond_6

    .line 149
    new-instance v62, Ljava/util/jar/JarException;

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Missing file: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-direct/range {v62 .. v63}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v62

    .line 153
    .end local v39           #name:Ljava/lang/String;
    :cond_7
    const/16 v62, 0x1000

    move/from16 v0, v62

    new-array v0, v0, [B

    move-object/from16 v47, v0

    .line 154
    .local v47, scratch:[B
    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v23

    .line 155
    .local v23, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v62

    if-eqz v62, :cond_f

    .line 156
    sget-object v63, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v63
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 157
    :try_start_8
    sget-object v62, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-eqz v62, :cond_8

    .line 158
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v64, "Update Verifier is cancelled by new FOTA download!"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v62, Ljava/io/IOException;

    const-string v64, "Verification is cancelled by new FOTA download!"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v62

    .line 161
    :catchall_3
    move-exception v62

    monitor-exit v63
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v62
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_8
    :try_start_a
    monitor-exit v63
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 163
    :try_start_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/jar/JarEntry;

    .line 164
    .local v26, entry:Ljava/util/jar/JarEntry;
    invoke-virtual/range {v26 .. v26}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v39

    .line 167
    .restart local v39       #name:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v62

    if-nez v62, :cond_9

    const-string v62, "META-INF/MANIFEST.MF"

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-nez v62, :cond_9

    const-string v62, "META-INF/"

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_a

    const-string v62, ".RSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v62

    if-nez v62, :cond_9

    const-string v62, ".DSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v62

    if-nez v62, :cond_9

    const-string v62, ".SF"

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_a

    .line 173
    :cond_9
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Exempt: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 179
    :cond_a
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v18

    .line 180
    .local v18, data:Ljava/io/InputStream;
    :cond_b
    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v62

    if-gtz v62, :cond_b

    .line 182
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 184
    invoke-virtual/range {v26 .. v26}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v48

    .line 185
    .local v48, signed:[Ljava/security/cert/Certificate;
    if-nez v48, :cond_c

    .line 186
    new-instance v62, Ljava/security/SignatureException;

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Unsigned file: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-direct/range {v62 .. v63}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v62

    .line 189
    :cond_c
    const/16 v56, 0x0

    .line 190
    .local v56, verified:Z
    const/16 v28, 0x0

    .local v28, i:I
    :goto_5
    if-nez v56, :cond_d

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v62, v0

    move/from16 v0, v28

    move/from16 v1, v62

    if-ge v0, v1, :cond_d

    .line 192
    aget-object v62, v48, v28

    move-object/from16 v0, v54

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v56

    .line 190
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 194
    :cond_d
    if-eqz v56, :cond_e

    .line 195
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Verified: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v26 .. v26}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 197
    :cond_e
    new-instance v62, Ljava/security/SignatureException;

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Unknown signature: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-direct/range {v62 .. v63}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v62
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 203
    .end local v18           #data:Ljava/io/InputStream;
    .end local v26           #entry:Ljava/util/jar/JarEntry;
    .end local v28           #i:I
    .end local v39           #name:Ljava/lang/String;
    .end local v48           #signed:[Ljava/security/cert/Certificate;
    .end local v56           #verified:Z
    :cond_f
    const/4 v11, 0x0

    .line 206
    .local v11, bSuperCid:Z
    const/4 v10, 0x0

    .line 208
    .local v10, bShipBootloader:Z
    :try_start_c
    const-string v62, "ro.bootloader"

    invoke-static/range {v62 .. v62}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, bootLoaderVer:Ljava/lang/String;
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-result v62

    if-nez v62, :cond_16

    .line 210
    :cond_10
    const/4 v10, 0x0

    .line 221
    .end local v15           #bootLoaderVer:Ljava/lang/String;
    :cond_11
    :goto_6
    :try_start_d
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "bShipBootloader:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-nez v10, :cond_12

    .line 223
    const/4 v11, 0x1

    .line 226
    :cond_12
    const-string v4, "firmware.zip"

    .line 227
    .local v4, ENTRY_FIRMWARE:Ljava/lang/String;
    const-string v3, "android-info.txt"

    .line 228
    .local v3, ENTRY_ANDROID_INIFO:Ljava/lang/String;
    const-string v62, "ro.cid"

    invoke-static/range {v62 .. v62}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 229
    .local v19, deviceCid:Ljava/lang/String;
    const/16 v43, 0x0

    .local v43, packageCid:Ljava/lang/String;
    const/16 v44, 0x0

    .line 230
    .local v44, packageMid:Ljava/lang/String;
    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v62

    if-nez v62, :cond_14

    .line 231
    :cond_13
    const/4 v11, 0x1

    .line 234
    :cond_14
    const/16 v62, 0xa

    move/from16 v0, v62

    new-array v6, v0, [Ljava/lang/String;

    const/16 v62, 0x0

    const-string v63, "00000000"

    aput-object v63, v6, v62

    const/16 v62, 0x1

    const-string v63, "11111111"

    aput-object v63, v6, v62

    const/16 v62, 0x2

    const-string v63, "22222222"

    aput-object v63, v6, v62

    const/16 v62, 0x3

    const-string v63, "33333333"

    aput-object v63, v6, v62

    const/16 v62, 0x4

    const-string v63, "44444444"

    aput-object v63, v6, v62

    const/16 v62, 0x5

    const-string v63, "55555555"

    aput-object v63, v6, v62

    const/16 v62, 0x6

    const-string v63, "66666666"

    aput-object v63, v6, v62

    const/16 v62, 0x7

    const-string v63, "77777777"

    aput-object v63, v6, v62

    const/16 v62, 0x8

    const-string v63, "88888888"

    aput-object v63, v6, v62

    const/16 v62, 0x9

    const-string v63, "99999999"

    aput-object v63, v6, v62

    .line 237
    .local v6, arySuperCID:[Ljava/lang/String;
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_7
    array-length v0, v6

    move/from16 v62, v0

    move/from16 v0, v28

    move/from16 v1, v62

    if-ge v0, v1, :cond_17

    .line 238
    aget-object v62, v6, v28

    move-object/from16 v0, v62

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v62

    if-eqz v62, :cond_15

    .line 239
    const/4 v11, 0x1

    .line 237
    :cond_15
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 212
    .end local v3           #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .end local v4           #ENTRY_FIRMWARE:Ljava/lang/String;
    .end local v6           #arySuperCID:[Ljava/lang/String;
    .end local v19           #deviceCid:Ljava/lang/String;
    .end local v28           #i:I
    .end local v43           #packageCid:Ljava/lang/String;
    .end local v44           #packageMid:Ljava/lang/String;
    .restart local v15       #bootLoaderVer:Ljava/lang/String;
    :cond_16
    :try_start_e
    const-string v62, "."

    move-object/from16 v0, v62

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v35

    .line 213
    .local v35, nDotIdx:I
    add-int/lit8 v62, v35, 0x1

    add-int/lit8 v63, v35, 0x2

    move/from16 v0, v62

    move/from16 v1, v63

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 214
    .local v14, bootLoadType:Ljava/lang/String;
    const-string v62, "0"

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    move-result v62

    if-eqz v62, :cond_11

    .line 215
    const/4 v10, 0x1

    goto/16 :goto_6

    .line 217
    .end local v14           #bootLoadType:Ljava/lang/String;
    .end local v15           #bootLoaderVer:Ljava/lang/String;
    .end local v35           #nDotIdx:I
    :catch_1
    move-exception v24

    .line 218
    .local v24, e1:Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 219
    :try_start_f
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Err in get boot loader version. Error:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 243
    .end local v24           #e1:Ljava/lang/Exception;
    .restart local v3       #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .restart local v4       #ENTRY_FIRMWARE:Ljava/lang/String;
    .restart local v6       #arySuperCID:[Ljava/lang/String;
    .restart local v19       #deviceCid:Ljava/lang/String;
    .restart local v28       #i:I
    .restart local v43       #packageCid:Ljava/lang/String;
    .restart local v44       #packageMid:Ljava/lang/String;
    :cond_17
    invoke-static {}, Lcom/android/updater/util/UpdateVerifier;->getMID()Ljava/lang/String;

    move-result-object v20

    .line 247
    .local v20, deviceMid:Ljava/lang/String;
    const-string v42, "*"

    .local v42, oneStar:Ljava/lang/String;
    const-string v55, "**"

    .local v55, twoStar:Ljava/lang/String;
    const-string v52, "***"

    .line 248
    .local v52, threeStar:Ljava/lang/String;
    const/16 v40, 0x0

    .line 249
    .local v40, ndSkipCnt:I
    move-object/from16 v0, v19

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1c

    .line 250
    const/16 v40, 0x3

    .line 255
    :cond_18
    :goto_8
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "ndSkipCnt:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v59, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 259
    .end local v58           #zipFile:Ljava/util/zip/ZipFile;
    .local v59, zipFile:Ljava/util/zip/ZipFile;
    :try_start_10
    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v27

    .line 260
    const/4 v7, 0x0

    .line 261
    .local v7, bCIDValid:Z
    const/4 v8, 0x0

    .line 262
    .local v8, bMIDValid:Z
    if-nez v27, :cond_1e

    .line 263
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Can\'t find:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ". Set superCID as true"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 393
    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    .line 395
    if-eqz v12, :cond_19

    .line 396
    :try_start_11
    throw v12

    .line 397
    :cond_19
    const/4 v12, 0x0

    .line 398
    const/16 v51, 0x0

    .line 399
    if-eqz v30, :cond_1a

    .line 400
    throw v30

    .line 401
    :cond_1a
    const/16 v30, 0x0

    .line 402
    const/16 v27, 0x0

    .line 403
    if-eqz v59, :cond_2e

    .line 404
    invoke-virtual/range {v59 .. v59}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 405
    const/16 v58, 0x0

    .line 412
    .end local v59           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v58       #zipFile:Ljava/util/zip/ZipFile;
    :goto_9
    sget-object v63, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v63

    .line 413
    const/16 v62, 0x0

    :try_start_12
    invoke-static/range {v62 .. v62}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v62

    sput-object v62, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 414
    monitor-exit v63
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 416
    .end local v3           #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .end local v4           #ENTRY_FIRMWARE:Ljava/lang/String;
    .end local v6           #arySuperCID:[Ljava/lang/String;
    .end local v7           #bCIDValid:Z
    .end local v8           #bMIDValid:Z
    .end local v10           #bShipBootloader:Z
    .end local v11           #bSuperCid:Z
    .end local v12           #bf:Ljava/io/BufferedReader;
    .end local v16           #cf:Ljava/security/cert/CertificateFactory;
    .end local v19           #deviceCid:Ljava/lang/String;
    .end local v20           #deviceMid:Ljava/lang/String;
    .end local v23           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v25           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v27           #entryFirmware:Ljava/util/zip/ZipEntry;
    .end local v28           #i:I
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v30           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .end local v32           #jar:Ljava/util/jar/JarFile;
    .end local v33           #manifest:Ljava/util/jar/Manifest;
    .end local v40           #ndSkipCnt:I
    .end local v42           #oneStar:Ljava/lang/String;
    .end local v43           #packageCid:Ljava/lang/String;
    .end local v44           #packageMid:Ljava/lang/String;
    .end local v47           #scratch:[B
    .end local v51           #temp:Ljava/util/zip/ZipEntry;
    .end local v52           #threeStar:Ljava/lang/String;
    .end local v54           #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .end local v55           #twoStar:Ljava/lang/String;
    .end local v57           #zip:Ljava/util/zip/ZipFile;
    .end local v58           #zipFile:Ljava/util/zip/ZipFile;
    :cond_1b
    :goto_a
    return-void

    .line 251
    .restart local v3       #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .restart local v4       #ENTRY_FIRMWARE:Ljava/lang/String;
    .restart local v6       #arySuperCID:[Ljava/lang/String;
    .restart local v10       #bShipBootloader:Z
    .restart local v11       #bSuperCid:Z
    .restart local v12       #bf:Ljava/io/BufferedReader;
    .restart local v16       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v19       #deviceCid:Ljava/lang/String;
    .restart local v20       #deviceMid:Ljava/lang/String;
    .restart local v23       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v25       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v27       #entryFirmware:Ljava/util/zip/ZipEntry;
    .restart local v28       #i:I
    .restart local v29       #i$:Ljava/util/Iterator;
    .restart local v30       #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v32       #jar:Ljava/util/jar/JarFile;
    .restart local v33       #manifest:Ljava/util/jar/Manifest;
    .restart local v40       #ndSkipCnt:I
    .restart local v42       #oneStar:Ljava/lang/String;
    .restart local v43       #packageCid:Ljava/lang/String;
    .restart local v44       #packageMid:Ljava/lang/String;
    .restart local v47       #scratch:[B
    .restart local v51       #temp:Ljava/util/zip/ZipEntry;
    .restart local v52       #threeStar:Ljava/lang/String;
    .restart local v54       #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .restart local v55       #twoStar:Ljava/lang/String;
    .restart local v57       #zip:Ljava/util/zip/ZipFile;
    .restart local v58       #zipFile:Ljava/util/zip/ZipFile;
    :cond_1c
    :try_start_13
    move-object/from16 v0, v19

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1d

    .line 252
    const/16 v40, 0x2

    goto/16 :goto_8

    .line 253
    :cond_1d
    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-result v62

    if-eqz v62, :cond_18

    .line 254
    const/16 v40, 0x1

    goto/16 :goto_8

    .line 268
    .end local v58           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v7       #bCIDValid:Z
    .restart local v8       #bMIDValid:Z
    .restart local v59       #zipFile:Ljava/util/zip/ZipFile;
    :cond_1e
    :try_start_14
    move-object/from16 v0, v59

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v60

    .line 269
    .local v60, zipInputStream:Ljava/io/InputStream;
    new-instance v61, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    .local v61, zipStreamTemp:Ljava/util/zip/ZipInputStream;
    invoke-virtual/range {v61 .. v61}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v62

    if-nez v62, :cond_25

    .line 272
    invoke-virtual/range {v60 .. v60}, Ljava/io/InputStream;->close()V

    .line 273
    move-object/from16 v0, v59

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v60

    .line 274
    const-wide/16 v62, 0x100

    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 275
    new-instance v31, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 276
    .end local v30           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .local v31, inputFirmware:Ljava/util/zip/ZipInputStream;
    :try_start_15
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "It may has header, skip 256 bytes"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    move-object v13, v12

    .end local v12           #bf:Ljava/io/BufferedReader;
    .local v13, bf:Ljava/io/BufferedReader;
    move-object/from16 v30, v31

    .line 284
    .end local v31           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v30       #inputFirmware:Ljava/util/zip/ZipInputStream;
    :cond_1f
    :goto_b
    :try_start_16
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v51

    if-eqz v51, :cond_2b

    .line 285
    invoke-virtual/range {v51 .. v51}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1f

    .line 286
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "get entry!!  ["

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v51 .. v51}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "]"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v62, Ljava/io/InputStreamReader;

    move-object/from16 v0, v62

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v62

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 288
    .end local v13           #bf:Ljava/io/BufferedReader;
    .restart local v12       #bf:Ljava/io/BufferedReader;
    const/16 v50, 0x0

    .line 289
    .local v50, strTemp:Ljava/lang/String;
    const/16 v34, 0x0

    .line 290
    .local v34, nCount:I
    :cond_20
    :goto_c
    :try_start_17
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v50

    if-eqz v50, :cond_2a

    .line 292
    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->length()I

    move-result v62

    const/16 v63, 0x7

    move/from16 v0, v62

    move/from16 v1, v63

    if-le v0, v1, :cond_21

    .line 293
    const/16 v62, 0x7

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->length()I

    move-result v63

    move-object/from16 v0, v50

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 294
    .local v17, cidTemp:Ljava/lang/String;
    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v63, 0x0

    const/16 v64, 0x7

    move-object/from16 v0, v50

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 296
    .end local v17           #cidTemp:Ljava/lang/String;
    :cond_21
    const-string v62, "cidnum:"

    move-object/from16 v0, v50

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v62

    const/16 v63, -0x1

    move/from16 v0, v62

    move/from16 v1, v63

    if-le v0, v1, :cond_23

    .line 297
    if-nez v11, :cond_20

    if-nez v7, :cond_20

    .line 299
    const-string v62, "cidnum:"

    const-string v63, ""

    move-object/from16 v0, v50

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    .line 300
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Checking packageCid:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v41, 0x0

    .line 303
    .local v41, npSkipCnt:I
    move-object/from16 v0, v43

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_26

    .line 304
    const/16 v41, 0x3

    .line 309
    :cond_22
    :goto_d
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "npSkipCnt:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v62

    rsub-int/lit8 v38, v62, 0x8

    .line 311
    .local v38, nValidLen:I
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "nValidLen:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Cid1:["

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const/16 v64, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v64

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "]"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Cid2:["

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const/16 v64, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v64

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "]"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "==="

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/16 v62, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v62

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v62

    const/16 v63, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v63

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_23

    .line 318
    const/4 v7, 0x1

    .line 319
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "CID match!"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v38           #nValidLen:I
    .end local v41           #npSkipCnt:I
    :cond_23
    const-string v62, "modelid:"

    move-object/from16 v0, v50

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v62

    const/16 v63, -0x1

    move/from16 v0, v62

    move/from16 v1, v63

    if-le v0, v1, :cond_20

    .line 323
    if-nez v8, :cond_20

    .line 325
    const-string v62, "modelid:"

    const-string v63, ""

    move-object/from16 v0, v50

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v44

    .line 328
    if-eqz v10, :cond_29

    .line 331
    const/16 v37, 0x5

    .line 332
    .local v37, nMaxWildcardNo:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v62

    sub-int v53, v62, v37

    .line 334
    .local v53, threshold:I
    const/4 v8, 0x1

    .line 335
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v28

    :goto_e
    if-lez v28, :cond_20

    .line 340
    move/from16 v0, v28

    move/from16 v1, v53

    if-le v0, v1, :cond_28

    .line 342
    add-int/lit8 v62, v28, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v62

    const/16 v63, 0x2a

    move/from16 v0, v62

    move/from16 v1, v63

    if-eq v0, v1, :cond_24

    add-int/lit8 v62, v28, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v62

    const/16 v63, 0x2a

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_28

    .line 335
    :cond_24
    add-int/lit8 v28, v28, -0x1

    goto :goto_e

    .line 278
    .end local v34           #nCount:I
    .end local v37           #nMaxWildcardNo:I
    .end local v50           #strTemp:Ljava/lang/String;
    .end local v53           #threshold:I
    :cond_25
    invoke-virtual/range {v60 .. v60}, Ljava/io/InputStream;->close()V

    .line 279
    move-object/from16 v0, v59

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v60

    .line 280
    new-instance v31, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 281
    .end local v30           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v31       #inputFirmware:Ljava/util/zip/ZipInputStream;
    :try_start_18
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "Do not skip 256 bytes"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move-object v13, v12

    .end local v12           #bf:Ljava/io/BufferedReader;
    .restart local v13       #bf:Ljava/io/BufferedReader;
    move-object/from16 v30, v31

    .end local v31           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v30       #inputFirmware:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_b

    .line 305
    .end local v13           #bf:Ljava/io/BufferedReader;
    .restart local v12       #bf:Ljava/io/BufferedReader;
    .restart local v34       #nCount:I
    .restart local v41       #npSkipCnt:I
    .restart local v50       #strTemp:Ljava/lang/String;
    :cond_26
    :try_start_19
    move-object/from16 v0, v43

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_27

    .line 306
    const/16 v41, 0x2

    goto/16 :goto_d

    .line 307
    :cond_27
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_22

    .line 308
    const/16 v41, 0x1

    goto/16 :goto_d

    .line 348
    .end local v41           #npSkipCnt:I
    .restart local v37       #nMaxWildcardNo:I
    .restart local v53       #threshold:I
    :cond_28
    add-int/lit8 v62, v28, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v62

    add-int/lit8 v63, v28, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v63

    move/from16 v0, v62

    move/from16 v1, v63

    if-eq v0, v1, :cond_24

    .line 350
    const/4 v8, 0x0

    .line 351
    goto/16 :goto_c

    .line 357
    .end local v37           #nMaxWildcardNo:I
    .end local v53           #threshold:I
    :cond_29
    const/16 v62, 0x0

    const/16 v63, 0x4

    move-object/from16 v0, v44

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v45

    .line 358
    .local v45, pkgMidTemp:Ljava/lang/String;
    const/16 v62, 0x0

    const/16 v63, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 362
    .local v21, deviceMidTemp:Ljava/lang/String;
    const/16 v62, 0x0

    const/16 v63, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v62

    const/16 v63, 0x0

    const/16 v64, 0x4

    move-object/from16 v0, v44

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    move-result v62

    if-eqz v62, :cond_20

    .line 363
    const/4 v8, 0x1

    goto/16 :goto_c

    .end local v21           #deviceMidTemp:Ljava/lang/String;
    .end local v45           #pkgMidTemp:Ljava/lang/String;
    :cond_2a
    move-object v13, v12

    .line 372
    .end local v12           #bf:Ljava/io/BufferedReader;
    .restart local v13       #bf:Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 377
    .end local v34           #nCount:I
    .end local v50           #strTemp:Ljava/lang/String;
    :cond_2b
    if-eqz v43, :cond_2c

    if-nez v7, :cond_2d

    :cond_2c
    if-nez v11, :cond_2d

    .line 378
    :try_start_1a
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "Checking CID failed."

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v62, Ljava/util/jar/JarException;

    const-string v63, "CID not match"

    invoke-direct/range {v62 .. v63}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v62

    .line 393
    :catchall_4
    move-exception v62

    move-object v12, v13

    .end local v13           #bf:Ljava/io/BufferedReader;
    .restart local v12       #bf:Ljava/io/BufferedReader;
    move-object/from16 v58, v59

    .end local v59           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v58       #zipFile:Ljava/util/zip/ZipFile;
    goto/16 :goto_2

    .line 383
    .end local v12           #bf:Ljava/io/BufferedReader;
    .end local v58           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #bf:Ljava/io/BufferedReader;
    .restart local v59       #zipFile:Ljava/util/zip/ZipFile;
    :cond_2d
    if-nez v8, :cond_2f

    .line 384
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "Checking MID failed."

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v62, Ljava/util/jar/JarException;

    const-string v63, "CID not match"

    invoke-direct/range {v62 .. v63}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v62
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 408
    .end local v3           #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .end local v4           #ENTRY_FIRMWARE:Ljava/lang/String;
    .end local v6           #arySuperCID:[Ljava/lang/String;
    .end local v7           #bCIDValid:Z
    .end local v8           #bMIDValid:Z
    .end local v10           #bShipBootloader:Z
    .end local v11           #bSuperCid:Z
    .end local v13           #bf:Ljava/io/BufferedReader;
    .end local v19           #deviceCid:Ljava/lang/String;
    .end local v20           #deviceMid:Ljava/lang/String;
    .end local v23           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v28           #i:I
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v33           #manifest:Ljava/util/jar/Manifest;
    .end local v40           #ndSkipCnt:I
    .end local v42           #oneStar:Ljava/lang/String;
    .end local v43           #packageCid:Ljava/lang/String;
    .end local v44           #packageMid:Ljava/lang/String;
    .end local v47           #scratch:[B
    .end local v52           #threeStar:Ljava/lang/String;
    .end local v55           #twoStar:Ljava/lang/String;
    .end local v59           #zipFile:Ljava/util/zip/ZipFile;
    .end local v60           #zipInputStream:Ljava/io/InputStream;
    .end local v61           #zipStreamTemp:Ljava/util/zip/ZipInputStream;
    .restart local v12       #bf:Ljava/io/BufferedReader;
    .restart local v58       #zipFile:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v22

    .line 409
    .restart local v22       #e:Ljava/lang/Exception;
    const-string v63, "UpdaterAPK | _UpdateVerifier"

    const-string v64, "verifyPackage() faild!"

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 414
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_5
    move-exception v62

    :try_start_1b
    monitor-exit v63
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    throw v62

    .line 408
    .end local v58           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .restart local v4       #ENTRY_FIRMWARE:Ljava/lang/String;
    .restart local v6       #arySuperCID:[Ljava/lang/String;
    .restart local v7       #bCIDValid:Z
    .restart local v8       #bMIDValid:Z
    .restart local v10       #bShipBootloader:Z
    .restart local v11       #bSuperCid:Z
    .restart local v19       #deviceCid:Ljava/lang/String;
    .restart local v20       #deviceMid:Ljava/lang/String;
    .restart local v23       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v28       #i:I
    .restart local v29       #i$:Ljava/util/Iterator;
    .restart local v33       #manifest:Ljava/util/jar/Manifest;
    .restart local v40       #ndSkipCnt:I
    .restart local v42       #oneStar:Ljava/lang/String;
    .restart local v43       #packageCid:Ljava/lang/String;
    .restart local v44       #packageMid:Ljava/lang/String;
    .restart local v47       #scratch:[B
    .restart local v52       #threeStar:Ljava/lang/String;
    .restart local v55       #twoStar:Ljava/lang/String;
    .restart local v59       #zipFile:Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v22

    .line 409
    .restart local v22       #e:Ljava/lang/Exception;
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "verifyPackage() faild!"

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v22           #e:Ljava/lang/Exception;
    :cond_2e
    move-object/from16 v58, v59

    .end local v59           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v58       #zipFile:Ljava/util/zip/ZipFile;
    goto/16 :goto_9

    .line 414
    :catchall_6
    move-exception v62

    :try_start_1c
    monitor-exit v63
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    throw v62

    .line 393
    .end local v12           #bf:Ljava/io/BufferedReader;
    .end local v58           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #bf:Ljava/io/BufferedReader;
    .restart local v59       #zipFile:Ljava/util/zip/ZipFile;
    .restart local v60       #zipInputStream:Ljava/io/InputStream;
    .restart local v61       #zipStreamTemp:Ljava/util/zip/ZipInputStream;
    :cond_2f
    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    .line 395
    if-eqz v13, :cond_30

    .line 396
    :try_start_1d
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4

    .line 397
    :cond_30
    const/4 v12, 0x0

    .line 398
    .end local v13           #bf:Ljava/io/BufferedReader;
    .restart local v12       #bf:Ljava/io/BufferedReader;
    const/16 v51, 0x0

    .line 399
    if-eqz v30, :cond_31

    .line 400
    :try_start_1e
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->close()V

    .line 401
    :cond_31
    const/16 v30, 0x0

    .line 402
    const/16 v27, 0x0

    .line 403
    if-eqz v59, :cond_32

    .line 404
    invoke-virtual/range {v59 .. v59}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_5

    .line 405
    const/16 v58, 0x0

    .line 412
    .end local v59           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v58       #zipFile:Ljava/util/zip/ZipFile;
    :goto_f
    sget-object v63, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v63

    .line 413
    const/16 v62, 0x0

    :try_start_1f
    invoke-static/range {v62 .. v62}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v62

    sput-object v62, Lcom/android/updater/util/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 414
    monitor-exit v63

    goto/16 :goto_a

    :catchall_7
    move-exception v62

    monitor-exit v63
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    throw v62

    .line 408
    .end local v12           #bf:Ljava/io/BufferedReader;
    .end local v58           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #bf:Ljava/io/BufferedReader;
    .restart local v59       #zipFile:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v22

    move-object v12, v13

    .line 409
    .end local v13           #bf:Ljava/io/BufferedReader;
    .restart local v12       #bf:Ljava/io/BufferedReader;
    .restart local v22       #e:Ljava/lang/Exception;
    :goto_10
    const-string v62, "UpdaterAPK | _UpdateVerifier"

    const-string v63, "verifyPackage() faild!"

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v22           #e:Ljava/lang/Exception;
    :cond_32
    move-object/from16 v58, v59

    .end local v59           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v58       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_f

    .line 408
    .end local v58           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v59       #zipFile:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v22

    goto :goto_10

    .line 393
    .end local v7           #bCIDValid:Z
    .end local v8           #bMIDValid:Z
    .end local v60           #zipInputStream:Ljava/io/InputStream;
    .end local v61           #zipStreamTemp:Ljava/util/zip/ZipInputStream;
    :catchall_8
    move-exception v62

    move-object/from16 v58, v59

    .end local v59           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v58       #zipFile:Ljava/util/zip/ZipFile;
    goto/16 :goto_2

    .end local v30           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .end local v58           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v7       #bCIDValid:Z
    .restart local v8       #bMIDValid:Z
    .restart local v31       #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v59       #zipFile:Ljava/util/zip/ZipFile;
    .restart local v60       #zipInputStream:Ljava/io/InputStream;
    .restart local v61       #zipStreamTemp:Ljava/util/zip/ZipInputStream;
    :catchall_9
    move-exception v62

    move-object/from16 v30, v31

    .end local v31           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v30       #inputFirmware:Ljava/util/zip/ZipInputStream;
    move-object/from16 v58, v59

    .end local v59           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v58       #zipFile:Ljava/util/zip/ZipFile;
    goto/16 :goto_2
.end method
