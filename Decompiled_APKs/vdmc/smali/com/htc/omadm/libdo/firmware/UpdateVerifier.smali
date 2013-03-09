.class public Lcom/htc/omadm/libdo/firmware/UpdateVerifier;
.super Ljava/lang/Object;
.source "UpdateVerifier.java"


# static fields
.field private static final KEYSTORE:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "UpdateVerifier"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/omadm/libdo/firmware/UpdateVerifier;->KEYSTORE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyPackage(Ljava/io/File;)I
    .locals 23
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 41
    const/16 v16, 0x1

    .line 44
    .local v16, verificationResult:I
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 45
    .local v15, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    new-instance v19, Ljava/util/zip/ZipFile;

    sget-object v20, Lcom/htc/omadm/libdo/firmware/UpdateVerifier;->KEYSTORE:Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 47
    .local v19, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v20, "X.509"

    invoke-static/range {v20 .. v20}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 48
    .local v2, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 49
    .local v6, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 50
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 51
    .local v7, entry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v2           #cf:Ljava/security/cert/CertificateFactory;
    .end local v6           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v20

    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V

    throw v20

    .restart local v2       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v6       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V

    .line 57
    new-instance v10, Ljava/util/jar/JarFile;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v10, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 59
    .local v10, jar:Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v11

    .line 60
    .local v11, manifest:Ljava/util/jar/Manifest;
    if-nez v11, :cond_1

    .line 61
    const/16 v16, 0x194

    .line 62
    new-instance v20, Ljava/util/jar/JarException;

    const-string v21, "Manifest not found"

    invoke-direct/range {v20 .. v21}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .end local v11           #manifest:Ljava/util/jar/Manifest;
    :catch_0
    move-exception v4

    .line 116
    .local v4, e:Ljava/lang/Exception;
    const/16 v16, 0x194

    .line 117
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    move/from16 v17, v16

    .line 120
    .end local v4           #e:Ljava/lang/Exception;
    .end local v16           #verificationResult:I
    .local v17, verificationResult:I
    :goto_1
    return v17

    .line 66
    .end local v17           #verificationResult:I
    .restart local v11       #manifest:Ljava/util/jar/Manifest;
    .restart local v16       #verificationResult:I
    :cond_1
    :try_start_3
    invoke-virtual {v11}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 67
    .local v12, name:Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v20

    if-nez v20, :cond_2

    .line 68
    const/16 v16, 0x194

    .line 69
    new-instance v20, Ljava/util/jar/JarException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Missing file: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 119
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #manifest:Ljava/util/jar/Manifest;
    .end local v12           #name:Ljava/lang/String;
    :catchall_1
    move-exception v20

    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    move/from16 v17, v16

    .line 120
    .end local v16           #verificationResult:I
    .restart local v17       #verificationResult:I
    goto :goto_1

    .line 73
    .end local v17           #verificationResult:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #manifest:Ljava/util/jar/Manifest;
    .restart local v16       #verificationResult:I
    :cond_3
    const/16 v20, 0x1000

    :try_start_4
    move/from16 v0, v20

    new-array v13, v0, [B

    .line 74
    .local v13, scratch:[B
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 75
    .local v5, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 76
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    .line 77
    .local v7, entry:Ljava/util/jar/JarEntry;
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 80
    .restart local v12       #name:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "META-INF/MANIFEST.MF"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "META-INF/"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, ".RSA"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, ".DSA"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, ".SF"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 86
    :cond_4
    const-string v20, "UpdateVerifier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exempt: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 92
    :cond_5
    invoke-virtual {v10, v7}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 93
    .local v3, data:Ljava/io/InputStream;
    :cond_6
    invoke-virtual {v3, v13}, Ljava/io/InputStream;->read([B)I

    move-result v20

    if-gtz v20, :cond_6

    .line 94
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 96
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v14

    .line 97
    .local v14, signed:[Ljava/security/cert/Certificate;
    if-nez v14, :cond_7

    .line 98
    const/16 v16, 0x194

    .line 99
    new-instance v20, Ljava/security/SignatureException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unsigned file: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 102
    :cond_7
    const/16 v18, 0x0

    .line 103
    .local v18, verified:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-nez v18, :cond_8

    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_8

    .line 105
    aget-object v20, v14, v8

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 103
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 108
    :cond_8
    if-eqz v18, :cond_9

    .line 109
    const-string v20, "UpdateVerifier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Verified: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 111
    :cond_9
    const/16 v16, 0x194

    .line 112
    new-instance v20, Ljava/security/SignatureException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown signature: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 119
    .end local v3           #data:Ljava/io/InputStream;
    .end local v7           #entry:Ljava/util/jar/JarEntry;
    .end local v8           #i:I
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #signed:[Ljava/security/cert/Certificate;
    .end local v18           #verified:Z
    :cond_a
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    move/from16 v17, v16

    .line 120
    .end local v16           #verificationResult:I
    .restart local v17       #verificationResult:I
    goto/16 :goto_1
.end method
