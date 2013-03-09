.class public Lcom/htc/sie/tool/CWZipVerifier;
.super Ljava/lang/Object;
.source "CWZipVerifier.java"


# static fields
.field private static final KEYSTORE:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "RunX_CWZipVerifier"

.field public static bCancelVerify:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/cwcerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/sie/tool/CWZipVerifier;->KEYSTORE:Ljava/io/File;

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/sie/tool/CWZipVerifier;->bCancelVerify:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyPackage(Ljava/io/File;)V
    .locals 20
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v18, Lcom/htc/sie/tool/CWZipVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v18

    .line 46
    const/16 v17, 0x0

    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    sput-object v17, Lcom/htc/sie/tool/CWZipVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 47
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    sget-object v17, Lcom/htc/sie/tool/CWZipVerifier;->KEYSTORE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 65
    new-instance v17, Ljava/io/FileNotFoundException;

    const-string v18, "Keystore not found."

    invoke-direct/range {v17 .. v18}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 47
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 68
    :cond_0
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 69
    .local v14, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    new-instance v16, Ljava/util/zip/ZipFile;

    sget-object v17, Lcom/htc/sie/tool/CWZipVerifier;->KEYSTORE:Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 71
    .local v16, zip:Ljava/util/zip/ZipFile;
    :try_start_2
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 72
    .local v2, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 73
    .local v5, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 74
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 75
    .local v6, entry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 78
    .end local v2           #cf:Ljava/security/cert/CertificateFactory;
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v17

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    throw v17

    .restart local v2       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v5       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    .line 81
    new-instance v9, Ljava/util/jar/JarFile;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v9, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 83
    .local v9, jar:Ljava/util/jar/JarFile;
    :try_start_3
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v10

    .line 84
    .local v10, manifest:Ljava/util/jar/Manifest;
    if-nez v10, :cond_2

    .line 85
    new-instance v17, Ljava/util/jar/JarException;

    const-string v18, "Manifest not found"

    invoke-direct/range {v17 .. v18}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 144
    .end local v10           #manifest:Ljava/util/jar/Manifest;
    :catchall_2
    move-exception v17

    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V

    .line 146
    sget-object v18, Lcom/htc/sie/tool/CWZipVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v18

    .line 147
    const/16 v19, 0x0

    :try_start_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    sput-object v19, Lcom/htc/sie/tool/CWZipVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 148
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    throw v17

    .line 89
    .restart local v10       #manifest:Ljava/util/jar/Manifest;
    :cond_2
    :try_start_5
    invoke-virtual {v10}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 90
    .local v11, name:Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v17

    if-nez v17, :cond_3

    .line 91
    new-instance v17, Ljava/util/jar/JarException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Missing file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 95
    .end local v11           #name:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x1000

    move/from16 v0, v17

    new-array v12, v0, [B

    .line 96
    .local v12, scratch:[B
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 97
    .local v4, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 98
    sget-object v18, Lcom/htc/sie/tool/CWZipVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 99
    :try_start_6
    sget-object v17, Lcom/htc/sie/tool/CWZipVerifier;->bCancelVerify:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 100
    const-string v17, "RunX_CWZipVerifier"

    const-string v19, "Update Verifier is cancelled by new FOTA download!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v17, Ljava/io/IOException;

    const-string v19, "Verification is cancelled by new FOTA download!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 103
    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_5
    :try_start_8
    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 105
    :try_start_9
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/JarEntry;

    .line 106
    .local v6, entry:Ljava/util/jar/JarEntry;
    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 109
    .restart local v11       #name:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "META-INF/MANIFEST.MF"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "META-INF/"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, ".RSA"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, ".DSA"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, ".SF"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 115
    :cond_6
    const-string v17, "RunX_CWZipVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exempt: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 121
    :cond_7
    invoke-virtual {v9, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 122
    .local v3, data:Ljava/io/InputStream;
    :cond_8
    invoke-virtual {v3, v12}, Ljava/io/InputStream;->read([B)I

    move-result v17

    if-gtz v17, :cond_8

    .line 124
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 126
    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v13

    .line 127
    .local v13, signed:[Ljava/security/cert/Certificate;
    if-nez v13, :cond_9

    .line 128
    new-instance v17, Ljava/security/SignatureException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsigned file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 131
    :cond_9
    const/4 v15, 0x0

    .line 132
    .local v15, verified:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-nez v15, :cond_a

    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_a

    .line 134
    aget-object v17, v13, v7

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 132
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 137
    :cond_a
    if-eqz v15, :cond_b

    .line 138
    const-string v17, "RunX_CWZipVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Verified: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 140
    :cond_b
    new-instance v17, Ljava/security/SignatureException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown signature: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 144
    .end local v3           #data:Ljava/io/InputStream;
    .end local v6           #entry:Ljava/util/jar/JarEntry;
    .end local v7           #i:I
    .end local v11           #name:Ljava/lang/String;
    .end local v13           #signed:[Ljava/security/cert/Certificate;
    .end local v15           #verified:Z
    :cond_c
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V

    .line 146
    sget-object v18, Lcom/htc/sie/tool/CWZipVerifier;->bCancelVerify:Ljava/lang/Boolean;

    monitor-enter v18

    .line 147
    const/16 v17, 0x0

    :try_start_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    sput-object v17, Lcom/htc/sie/tool/CWZipVerifier;->bCancelVerify:Ljava/lang/Boolean;

    .line 148
    monitor-exit v18

    .line 150
    return-void

    .line 148
    :catchall_4
    move-exception v17

    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v17

    .end local v4           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #manifest:Ljava/util/jar/Manifest;
    .end local v12           #scratch:[B
    :catchall_5
    move-exception v17

    :try_start_b
    monitor-exit v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v17
.end method
