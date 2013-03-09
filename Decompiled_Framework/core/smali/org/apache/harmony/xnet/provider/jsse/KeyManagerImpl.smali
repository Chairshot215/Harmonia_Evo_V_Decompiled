.class public Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final hash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 5

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    const-class v4, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v0, v4}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v4, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p1, v0, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :cond_1
    return-void

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 25

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_1

    :cond_0
    const/16 v23, 0x0

    :goto_0
    return-object v23

    :cond_1
    if-nez p2, :cond_4

    const/16 v17, 0x0

    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v11}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v10

    const/16 v23, 0x0

    aget-object v6, v10, v23

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    instance-of v0, v6, Ljava/security/cert/X509Certificate;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    move-object/from16 v4, p1

    array-length v0, v4

    move/from16 v19, v0

    const/4 v13, 0x0

    move v14, v13

    :goto_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_2

    aget-object v18, v4, v14

    if-nez v18, :cond_6

    :cond_3
    :goto_4
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_3

    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/16 v23, 0x5f

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_9

    move-object/from16 v21, v18

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    if-eqz v9, :cond_7

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_a

    :cond_8
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    add-int/lit8 v23, v15, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    :cond_a
    move-object v5, v10

    array-length v0, v5

    move/from16 v20, v0

    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v13, v0, :cond_3

    aget-object v7, v5, v13

    instance-of v0, v7, Ljava/security/cert/X509Certificate;

    move/from16 v23, v0

    if-nez v23, :cond_c

    :cond_b
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_c
    move-object/from16 v22, v7

    check-cast v22, Ljava/security/cert/X509Certificate;

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_e

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, v2

    goto :goto_0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, v2

    goto :goto_0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_0

    array-length v3, v0

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
