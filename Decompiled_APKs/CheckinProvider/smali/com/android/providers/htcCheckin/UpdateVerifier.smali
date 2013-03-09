.class public Lcom/android/providers/htcCheckin/UpdateVerifier;
.super Ljava/lang/Object;
.source "UpdateVerifier.java"


# static fields
.field private static final KEYSTORE:Ljava/io/File; = null

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "_UpdateVerifier"

.field public static bCancelVerify:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/htcCheckin/UpdateVerifier;->KEYSTORE:Ljava/io/File;

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImageId(Ljava/lang/String;)I
    .locals 6
    .parameter "strFileName"

    .prologue
    .line 286
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 288
    :cond_0
    const/4 v3, -0x1

    .line 311
    :cond_1
    :goto_0
    return v3

    .line 291
    :cond_2
    const/4 v3, 0x0

    .line 295
    .local v3, id:I
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, aryFileName:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    :cond_3
    :try_start_0
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    const-string v5, "zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v0, v4

    const-string v5, "enc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    array-length v4, v0

    add-int/lit8 v4, v4, -0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 309
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static verifyPackage(Ljava/io/File;)V
    .locals 45
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v43, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v43

    .line 71
    const/16 v42, 0x0

    :try_start_0
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    sput-object v42, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 72
    monitor-exit v43
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v34

    .line 90
    .local v34, strImageFileName:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/android/providers/htcCheckin/UpdateVerifier;->getImageId(Ljava/lang/String;)I

    move-result v28

    .line 91
    .local v28, nFileID:I
    const-string v42, "_UpdateVerifier"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "FileID:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-lez v28, :cond_0

    .line 93
    const/4 v8, 0x0

    .line 94
    .local v8, bResult:Z
    const-string v42, "_UpdateVerifier"

    const-string v43, "It\'s encrypted image!"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_1
    const-string v5, "data/misc/FotaSign_PubKey.der"

    .line 98
    .local v5, PUB_KEY:Ljava/lang/String;
    new-instance v31, Lcom/android/providers/htcCheckin/RSA_Sign;

    invoke-direct/range {v31 .. v31}, Lcom/android/providers/htcCheckin/RSA_Sign;-><init>()V

    .line 99
    .local v31, rsa_sign:Lcom/android/providers/htcCheckin/RSA_Sign;
    const/16 v42, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v5}, Lcom/android/providers/htcCheckin/RSA_Sign;->set_EncSignKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/providers/htcCheckin/RSA_Sign;->do_verify(Ljava/lang/String;)Z

    move-result v8

    .line 102
    const-string v42, "_UpdateVerifier"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Result of verifying encrypted image:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .end local v5           #PUB_KEY:Ljava/lang/String;
    .end local v31           #rsa_sign:Lcom/android/providers/htcCheckin/RSA_Sign;
    :goto_0
    if-nez v8, :cond_14

    .line 108
    new-instance v42, Ljava/security/SignatureException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Unsigned OTA image: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 72
    .end local v8           #bResult:Z
    .end local v28           #nFileID:I
    .end local v34           #strImageFileName:Ljava/lang/String;
    :catchall_0
    move-exception v42

    :try_start_2
    monitor-exit v43
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v42

    .line 103
    .restart local v8       #bResult:Z
    .restart local v28       #nFileID:I
    .restart local v34       #strImageFileName:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 104
    .local v16, e:Ljava/lang/Exception;
    const-string v42, "_UpdateVerifier"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "catch exception: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v8, 0x0

    goto :goto_0

    .line 112
    .end local v8           #bResult:Z
    .end local v16           #e:Ljava/lang/Exception;
    :cond_0
    const-string v42, "_UpdateVerifier"

    const-string v43, "Start to check the sign of non-encrypted image or can\'t get FileID"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v37, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    new-instance v39, Ljava/util/zip/ZipFile;

    sget-object v42, Lcom/android/providers/htcCheckin/UpdateVerifier;->KEYSTORE:Ljava/io/File;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 116
    .local v39, zip:Ljava/util/zip/ZipFile;
    :try_start_3
    const-string v42, "X.509"

    invoke-static/range {v42 .. v42}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v12

    .line 117
    .local v12, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual/range {v39 .. v39}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v18

    .line 118
    .local v18, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1

    .line 119
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/zip/ZipEntry;

    .line 120
    .local v19, entry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v42

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 123
    .end local v12           #cf:Ljava/security/cert/CertificateFactory;
    .end local v18           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v19           #entry:Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v42

    invoke-virtual/range {v39 .. v39}, Ljava/util/zip/ZipFile;->close()V

    throw v42

    .restart local v12       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v18       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-virtual/range {v39 .. v39}, Ljava/util/zip/ZipFile;->close()V

    .line 127
    const/16 v36, 0x0

    .line 128
    .local v36, temp:Ljava/util/zip/ZipEntry;
    const/16 v20, 0x0

    .line 129
    .local v20, entryFirmware:Ljava/util/zip/ZipEntry;
    const/16 v40, 0x0

    .line 130
    .local v40, zipFile:Ljava/util/zip/ZipFile;
    const/16 v23, 0x0

    .line 131
    .local v23, inputFirmware:Ljava/util/zip/ZipInputStream;
    const/4 v10, 0x0

    .line 133
    .local v10, bf:Ljava/io/BufferedReader;
    new-instance v25, Ljava/util/jar/JarFile;

    const/16 v42, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 135
    .local v25, jar:Ljava/util/jar/JarFile;
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v26

    .line 136
    .local v26, manifest:Ljava/util/jar/Manifest;
    if-nez v26, :cond_5

    .line 137
    new-instance v42, Ljava/util/jar/JarException;

    const-string v43, "Manifest not found"

    invoke-direct/range {v42 .. v43}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 255
    .end local v26           #manifest:Ljava/util/jar/Manifest;
    :catchall_2
    move-exception v42

    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/util/jar/JarFile;->close()V

    .line 257
    if-eqz v10, :cond_2

    .line 258
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 259
    :cond_2
    const/4 v10, 0x0

    .line 260
    const/16 v36, 0x0

    .line 261
    if-eqz v23, :cond_3

    .line 262
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipInputStream;->close()V

    .line 263
    :cond_3
    const/16 v23, 0x0

    .line 264
    const/16 v20, 0x0

    .line 265
    if-eqz v40, :cond_4

    .line 266
    invoke-virtual/range {v40 .. v40}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 267
    const/16 v40, 0x0

    .line 274
    :cond_4
    :goto_3
    sget-object v43, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v43

    .line 275
    const/16 v44, 0x0

    :try_start_6
    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    sput-object v44, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 276
    monitor-exit v43
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 255
    throw v42

    .line 141
    .restart local v26       #manifest:Ljava/util/jar/Manifest;
    :cond_5
    :try_start_7
    invoke-virtual/range {v26 .. v26}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 142
    .local v29, name:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v42

    if-nez v42, :cond_6

    .line 143
    new-instance v42, Ljava/util/jar/JarException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Missing file: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 147
    .end local v29           #name:Ljava/lang/String;
    :cond_7
    const/16 v42, 0x1000

    move/from16 v0, v42

    new-array v0, v0, [B

    move-object/from16 v32, v0

    .line 148
    .local v32, scratch:[B
    invoke-virtual/range {v25 .. v25}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v17

    .line 149
    .local v17, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_f

    .line 150
    sget-object v43, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v43
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 151
    :try_start_8
    sget-object v42, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-eqz v42, :cond_8

    .line 152
    const-string v42, "_UpdateVerifier"

    const-string v44, "Update Verifier is cancelled by new FOTA download!"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v42, Ljava/io/IOException;

    const-string v44, "Verification is cancelled by new FOTA download!"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 155
    :catchall_3
    move-exception v42

    monitor-exit v43
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v42
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_8
    :try_start_a
    monitor-exit v43
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 157
    :try_start_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/jar/JarEntry;

    .line 158
    .local v19, entry:Ljava/util/jar/JarEntry;
    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v29

    .line 161
    .restart local v29       #name:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v42

    if-nez v42, :cond_9

    const-string v42, "META-INF/MANIFEST.MF"

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_9

    const-string v42, "META-INF/"

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_a

    const-string v42, ".RSA"

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_9

    const-string v42, ".DSA"

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_9

    const-string v42, ".SF"

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_a

    .line 167
    :cond_9
    const-string v42, "_UpdateVerifier"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Exempt: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 173
    :cond_a
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    .line 174
    .local v14, data:Ljava/io/InputStream;
    :cond_b
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v42

    if-gtz v42, :cond_b

    .line 176
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 178
    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v33

    .line 179
    .local v33, signed:[Ljava/security/cert/Certificate;
    if-nez v33, :cond_c

    .line 180
    new-instance v42, Ljava/security/SignatureException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Unsigned file: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 183
    :cond_c
    const/16 v38, 0x0

    .line 184
    .local v38, verified:Z
    const/16 v21, 0x0

    .local v21, i:I
    :goto_5
    if-nez v38, :cond_d

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v21

    move/from16 v1, v42

    if-ge v0, v1, :cond_d

    .line 186
    aget-object v42, v33, v21

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    .line 184
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 188
    :cond_d
    if-eqz v38, :cond_e

    .line 189
    const-string v42, "_UpdateVerifier"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Verified: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 191
    :cond_e
    new-instance v42, Ljava/security/SignatureException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Unknown signature: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 196
    .end local v14           #data:Ljava/io/InputStream;
    .end local v19           #entry:Ljava/util/jar/JarEntry;
    .end local v21           #i:I
    .end local v29           #name:Ljava/lang/String;
    .end local v33           #signed:[Ljava/security/cert/Certificate;
    .end local v38           #verified:Z
    :cond_f
    const-string v4, "firmware.zip"

    .line 197
    .local v4, ENTRY_FIRMWARE:Ljava/lang/String;
    const-string v3, "android-info.txt"

    .line 198
    .local v3, ENTRY_ANDROID_INIFO:Ljava/lang/String;
    const-string v42, "ro.cid"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 199
    .local v15, deviceCid:Ljava/lang/String;
    const/16 v30, 0x0

    .line 200
    .local v30, packageCid:Ljava/lang/String;
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/lang/String;->length()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v42

    if-nez v42, :cond_15

    .line 255
    :cond_10
    invoke-virtual/range {v25 .. v25}, Ljava/util/jar/JarFile;->close()V

    .line 257
    if-eqz v10, :cond_11

    .line 258
    :try_start_c
    throw v10

    .line 259
    :cond_11
    const/4 v10, 0x0

    .line 260
    const/16 v36, 0x0

    .line 261
    if-eqz v23, :cond_12

    .line 262
    throw v23

    .line 263
    :cond_12
    const/16 v23, 0x0

    .line 264
    const/16 v20, 0x0

    .line 265
    if-eqz v40, :cond_13

    .line 266
    throw v40
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 267
    const/16 v40, 0x0

    .line 274
    :cond_13
    :goto_6
    sget-object v43, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v43

    .line 275
    const/16 v42, 0x0

    :try_start_d
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    sput-object v42, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 276
    monitor-exit v43
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 278
    .end local v3           #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .end local v4           #ENTRY_FIRMWARE:Ljava/lang/String;
    .end local v10           #bf:Ljava/io/BufferedReader;
    .end local v12           #cf:Ljava/security/cert/CertificateFactory;
    .end local v15           #deviceCid:Ljava/lang/String;
    .end local v17           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v18           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v20           #entryFirmware:Ljava/util/zip/ZipEntry;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .end local v25           #jar:Ljava/util/jar/JarFile;
    .end local v26           #manifest:Ljava/util/jar/Manifest;
    .end local v30           #packageCid:Ljava/lang/String;
    .end local v32           #scratch:[B
    .end local v36           #temp:Ljava/util/zip/ZipEntry;
    .end local v37           #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .end local v39           #zip:Ljava/util/zip/ZipFile;
    .end local v40           #zipFile:Ljava/util/zip/ZipFile;
    :cond_14
    :goto_7
    return-void

    .line 204
    .restart local v3       #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .restart local v4       #ENTRY_FIRMWARE:Ljava/lang/String;
    .restart local v10       #bf:Ljava/io/BufferedReader;
    .restart local v12       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v15       #deviceCid:Ljava/lang/String;
    .restart local v17       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v18       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v20       #entryFirmware:Ljava/util/zip/ZipEntry;
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v23       #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v25       #jar:Ljava/util/jar/JarFile;
    .restart local v26       #manifest:Ljava/util/jar/Manifest;
    .restart local v30       #packageCid:Ljava/lang/String;
    .restart local v32       #scratch:[B
    .restart local v36       #temp:Ljava/util/zip/ZipEntry;
    .restart local v37       #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .restart local v39       #zip:Ljava/util/zip/ZipFile;
    .restart local v40       #zipFile:Ljava/util/zip/ZipFile;
    :cond_15
    const/16 v42, 0xa

    :try_start_e
    move/from16 v0, v42

    new-array v6, v0, [Ljava/lang/String;

    const/16 v42, 0x0

    const-string v43, "00000000"

    aput-object v43, v6, v42

    const/16 v42, 0x1

    const-string v43, "11111111"

    aput-object v43, v6, v42

    const/16 v42, 0x2

    const-string v43, "22222222"

    aput-object v43, v6, v42

    const/16 v42, 0x3

    const-string v43, "33333333"

    aput-object v43, v6, v42

    const/16 v42, 0x4

    const-string v43, "44444444"

    aput-object v43, v6, v42

    const/16 v42, 0x5

    const-string v43, "55555555"

    aput-object v43, v6, v42

    const/16 v42, 0x6

    const-string v43, "66666666"

    aput-object v43, v6, v42

    const/16 v42, 0x7

    const-string v43, "77777777"

    aput-object v43, v6, v42

    const/16 v42, 0x8

    const-string v43, "88888888"

    aput-object v43, v6, v42

    const/16 v42, 0x9

    const-string v43, "99999999"

    aput-object v43, v6, v42

    .line 206
    .local v6, arySuperCID:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 207
    .local v9, bSuperCid:Z
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_8
    array-length v0, v6

    move/from16 v42, v0

    move/from16 v0, v21

    move/from16 v1, v42

    if-ge v0, v1, :cond_1a

    .line 208
    aget-object v42, v6, v21

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result v42

    if-eqz v42, :cond_19

    .line 209
    const/4 v9, 0x1

    .line 255
    invoke-virtual/range {v25 .. v25}, Ljava/util/jar/JarFile;->close()V

    .line 257
    if-eqz v10, :cond_16

    .line 258
    :try_start_f
    throw v10

    .line 259
    :cond_16
    const/4 v10, 0x0

    .line 260
    const/16 v36, 0x0

    .line 261
    if-eqz v23, :cond_17

    .line 262
    throw v23

    .line 263
    :cond_17
    const/16 v23, 0x0

    .line 264
    const/16 v20, 0x0

    .line 265
    if-eqz v40, :cond_18

    .line 266
    throw v40
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 267
    const/16 v40, 0x0

    .line 274
    :cond_18
    :goto_9
    sget-object v43, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v43

    .line 275
    const/16 v42, 0x0

    :try_start_10
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    sput-object v42, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 276
    monitor-exit v43

    goto/16 :goto_7

    :catchall_4
    move-exception v42

    monitor-exit v43
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v42

    .line 207
    :cond_19
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 215
    :cond_1a
    :try_start_11
    new-instance v41, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 216
    .end local v40           #zipFile:Ljava/util/zip/ZipFile;
    .local v41, zipFile:Ljava/util/zip/ZipFile;
    :try_start_12
    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v20

    .line 217
    const/4 v7, 0x0

    .line 218
    .local v7, bCIDValid:Z
    if-nez v20, :cond_1d

    .line 219
    const-string v42, "_UpdateVerifier"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Can\'t find:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ". Set superCID as true"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 255
    invoke-virtual/range {v25 .. v25}, Ljava/util/jar/JarFile;->close()V

    .line 257
    if-eqz v10, :cond_1b

    .line 258
    :try_start_13
    throw v10

    .line 259
    :cond_1b
    const/4 v10, 0x0

    .line 260
    const/16 v36, 0x0

    .line 261
    if-eqz v23, :cond_1c

    .line 262
    throw v23

    .line 263
    :cond_1c
    const/16 v23, 0x0

    .line 264
    const/16 v20, 0x0

    .line 265
    if-eqz v41, :cond_24

    .line 266
    invoke-virtual/range {v41 .. v41}, Ljava/util/zip/ZipFile;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    .line 267
    const/16 v40, 0x0

    .line 274
    .end local v41           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v40       #zipFile:Ljava/util/zip/ZipFile;
    :goto_a
    sget-object v43, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v43

    .line 275
    const/16 v42, 0x0

    :try_start_14
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    sput-object v42, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 276
    monitor-exit v43

    goto/16 :goto_7

    :catchall_5
    move-exception v42

    monitor-exit v43
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw v42

    .line 222
    .end local v40           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v41       #zipFile:Ljava/util/zip/ZipFile;
    :cond_1d
    :try_start_15
    new-instance v24, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .end local v23           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .local v24, inputFirmware:Ljava/util/zip/ZipInputStream;
    move-object v11, v10

    .line 223
    .end local v10           #bf:Ljava/io/BufferedReader;
    .local v11, bf:Ljava/io/BufferedReader;
    :cond_1e
    :goto_b
    :try_start_16
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v36

    if-eqz v36, :cond_22

    .line 224
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1e

    .line 225
    const-string v42, "_UpdateVerifier"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "get entry!!  ["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "]"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v42, Ljava/io/InputStreamReader;

    move-object/from16 v0, v42

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v42

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 227
    .end local v11           #bf:Ljava/io/BufferedReader;
    .restart local v10       #bf:Ljava/io/BufferedReader;
    const/16 v35, 0x0

    .line 228
    .local v35, strTemp:Ljava/lang/String;
    const/16 v27, 0x0

    .line 229
    .local v27, nCount:I
    :cond_1f
    :try_start_17
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_21

    .line 231
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v42

    const/16 v43, 0x6

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_20

    .line 232
    const/16 v42, 0x6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v43

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 233
    .local v13, cidTemp:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v43, 0x0

    const/16 v44, 0x6

    move-object/from16 v0, v35

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 235
    .end local v13           #cidTemp:Ljava/lang/String;
    :cond_20
    const-string v42, "cidnum:"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_1f

    .line 236
    const-string v42, "cidnum:"

    const-string v43, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 237
    const-string v42, "_UpdateVerifier"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "packageCid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1f

    .line 239
    const/4 v7, 0x1

    .line 240
    const-string v42, "_UpdateVerifier"

    const-string v43, "CID match!"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :cond_21
    move-object v11, v10

    .line 245
    .end local v10           #bf:Ljava/io/BufferedReader;
    .restart local v11       #bf:Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 249
    .end local v27           #nCount:I
    .end local v35           #strTemp:Ljava/lang/String;
    :cond_22
    if-eqz v30, :cond_23

    if-nez v7, :cond_25

    .line 250
    :cond_23
    :try_start_18
    new-instance v42, Ljava/util/jar/JarException;

    const-string v43, "CID not match"

    invoke-direct/range {v42 .. v43}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 255
    :catchall_6
    move-exception v42

    move-object v10, v11

    .end local v11           #bf:Ljava/io/BufferedReader;
    .restart local v10       #bf:Ljava/io/BufferedReader;
    move-object/from16 v23, v24

    .end local v24           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v23       #inputFirmware:Ljava/util/zip/ZipInputStream;
    move-object/from16 v40, v41

    .end local v41           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v40       #zipFile:Ljava/util/zip/ZipFile;
    goto/16 :goto_2

    .line 270
    .end local v3           #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .end local v4           #ENTRY_FIRMWARE:Ljava/lang/String;
    .end local v6           #arySuperCID:[Ljava/lang/String;
    .end local v7           #bCIDValid:Z
    .end local v9           #bSuperCid:Z
    .end local v15           #deviceCid:Ljava/lang/String;
    .end local v17           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v21           #i:I
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v26           #manifest:Ljava/util/jar/Manifest;
    .end local v30           #packageCid:Ljava/lang/String;
    .end local v32           #scratch:[B
    :catch_1
    move-exception v16

    .line 271
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v43, "_UpdateVerifier"

    const-string v44, "verifyPackage() faild!"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 276
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_7
    move-exception v42

    :try_start_19
    monitor-exit v43
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    throw v42

    .line 270
    .restart local v3       #ENTRY_ANDROID_INIFO:Ljava/lang/String;
    .restart local v4       #ENTRY_FIRMWARE:Ljava/lang/String;
    .restart local v15       #deviceCid:Ljava/lang/String;
    .restart local v17       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v26       #manifest:Ljava/util/jar/Manifest;
    .restart local v30       #packageCid:Ljava/lang/String;
    .restart local v32       #scratch:[B
    :catch_2
    move-exception v16

    .line 271
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v42, "_UpdateVerifier"

    const-string v43, "verifyPackage() faild!"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 276
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_8
    move-exception v42

    :try_start_1a
    monitor-exit v43
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    throw v42

    .line 270
    .restart local v6       #arySuperCID:[Ljava/lang/String;
    .restart local v9       #bSuperCid:Z
    .restart local v21       #i:I
    :catch_3
    move-exception v16

    .line 271
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v42, "_UpdateVerifier"

    const-string v43, "verifyPackage() faild!"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 270
    .end local v16           #e:Ljava/lang/Exception;
    .end local v40           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v7       #bCIDValid:Z
    .restart local v41       #zipFile:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v16

    .line 271
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v42, "_UpdateVerifier"

    const-string v43, "verifyPackage() faild!"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v16           #e:Ljava/lang/Exception;
    :cond_24
    move-object/from16 v40, v41

    .end local v41           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v40       #zipFile:Ljava/util/zip/ZipFile;
    goto/16 :goto_a

    .line 255
    .end local v10           #bf:Ljava/io/BufferedReader;
    .end local v23           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .end local v40           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v11       #bf:Ljava/io/BufferedReader;
    .restart local v24       #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v41       #zipFile:Ljava/util/zip/ZipFile;
    :cond_25
    invoke-virtual/range {v25 .. v25}, Ljava/util/jar/JarFile;->close()V

    .line 257
    if-eqz v11, :cond_26

    .line 258
    :try_start_1b
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    .line 259
    :cond_26
    const/4 v10, 0x0

    .line 260
    .end local v11           #bf:Ljava/io/BufferedReader;
    .restart local v10       #bf:Ljava/io/BufferedReader;
    const/16 v36, 0x0

    .line 261
    if-eqz v24, :cond_27

    .line 262
    :try_start_1c
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6

    .line 263
    :cond_27
    const/16 v23, 0x0

    .line 264
    .end local v24           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v23       #inputFirmware:Ljava/util/zip/ZipInputStream;
    const/16 v20, 0x0

    .line 265
    if-eqz v41, :cond_28

    .line 266
    :try_start_1d
    invoke-virtual/range {v41 .. v41}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7

    .line 267
    const/16 v40, 0x0

    .line 274
    .end local v41           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v40       #zipFile:Ljava/util/zip/ZipFile;
    :goto_c
    sget-object v43, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v43

    .line 275
    const/16 v42, 0x0

    :try_start_1e
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    sput-object v42, Lcom/android/providers/htcCheckin/UpdateVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 276
    monitor-exit v43

    goto/16 :goto_7

    :catchall_9
    move-exception v42

    monitor-exit v43
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    throw v42

    .line 270
    .end local v10           #bf:Ljava/io/BufferedReader;
    .end local v23           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .end local v40           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v11       #bf:Ljava/io/BufferedReader;
    .restart local v24       #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v41       #zipFile:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v16

    move-object v10, v11

    .end local v11           #bf:Ljava/io/BufferedReader;
    .restart local v10       #bf:Ljava/io/BufferedReader;
    move-object/from16 v23, v24

    .line 271
    .end local v24           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v16       #e:Ljava/lang/Exception;
    .restart local v23       #inputFirmware:Ljava/util/zip/ZipInputStream;
    :goto_d
    const-string v42, "_UpdateVerifier"

    const-string v43, "verifyPackage() faild!"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v16           #e:Ljava/lang/Exception;
    :cond_28
    move-object/from16 v40, v41

    .end local v41           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v40       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_c

    .line 270
    .end local v23           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .end local v40           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v24       #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v41       #zipFile:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v16

    move-object/from16 v23, v24

    .end local v24           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v23       #inputFirmware:Ljava/util/zip/ZipInputStream;
    goto :goto_d

    :catch_7
    move-exception v16

    goto :goto_d

    .line 255
    .end local v7           #bCIDValid:Z
    :catchall_a
    move-exception v42

    move-object/from16 v40, v41

    .end local v41           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v40       #zipFile:Ljava/util/zip/ZipFile;
    goto/16 :goto_2

    .end local v23           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .end local v40           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v7       #bCIDValid:Z
    .restart local v24       #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v27       #nCount:I
    .restart local v35       #strTemp:Ljava/lang/String;
    .restart local v41       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_b
    move-exception v42

    move-object/from16 v23, v24

    .end local v24           #inputFirmware:Ljava/util/zip/ZipInputStream;
    .restart local v23       #inputFirmware:Ljava/util/zip/ZipInputStream;
    move-object/from16 v40, v41

    .end local v41           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v40       #zipFile:Ljava/util/zip/ZipFile;
    goto/16 :goto_2
.end method
