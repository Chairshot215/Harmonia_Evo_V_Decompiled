.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$1;,
        Ljava/security/Security$SecurityDoor;
    }
.end annotation


# static fields
.field private static final secprops:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const/4 v3, 0x0

    :try_start_0
    const-class v4, Ljava/security/Security;

    const-string v5, "security.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v4, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v3, :cond_0

    invoke-static {}, Ljava/security/Security;->registerDefaultProviders()V

    :cond_0
    new-instance v4, Ljava/security/Security$SecurityDoor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/security/Security$SecurityDoor;-><init>(Ljava/security/Security$1;)V

    sput-object v4, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    return-void

    :catch_0
    move-exception v1

    const-string v4, "Could not load \'security.properties\'"

    invoke-static {v4, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Ljava/security/Security;->renumProviders()V

    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    return v0
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alg."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v7

    move-object v0, v7

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/security/Provider;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider$Service;

    invoke-virtual {v6}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2

    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/apache/harmony/security/fortress/Services;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getProviders()[Ljava/security/Provider;
    .locals 2

    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .locals 4

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    :cond_3
    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    move-result-object v2

    return-object v2

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    const-class v15, Ljava/security/Security;

    monitor-enter v15

    if-nez p0, :cond_0

    :try_start_0
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    :cond_0
    :try_start_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    :goto_0
    monitor-exit v15

    return-object v14

    :cond_1
    :try_start_2
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProvidersList()Ljava/util/List;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v14, 0x20

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v14, 0x2e

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v14, -0x1

    if-ne v6, v14, :cond_3

    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    :cond_3
    const/4 v14, -0x1

    if-ne v4, v14, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_7

    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    :cond_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    :cond_5
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_6

    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_7
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_9

    :cond_8
    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    :cond_9
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    if-ge v7, v14, :cond_2

    :try_start_3
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/Provider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v10, v12, v0, v1, v13}, Ljava/security/Provider;->implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :cond_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_c

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/security/Provider;

    invoke-interface {v11, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/security/Provider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .locals 3

    const-class v2, Ljava/security/Security;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/Services;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    invoke-static {}, Ljava/security/Security;->renumProviders()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static registerDefaultProviders()V
    .locals 3

    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.1"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.2"

    const-string v2, "org.apache.harmony.security.provider.cert.DRLCertFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.3"

    const-string v2, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.4"

    const-string v2, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.5"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.JSSEProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .locals 3

    const-class v2, Ljava/security/Security;

    monitor-enter v2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/Provider;->getProviderNumber()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->removeProvider(I)V

    invoke-static {}, Ljava/security/Security;->renumProviders()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/security/Provider;->setProviderNumber(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static renumProviders()V
    .locals 4

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/security/Provider;->setProviderNumber(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
