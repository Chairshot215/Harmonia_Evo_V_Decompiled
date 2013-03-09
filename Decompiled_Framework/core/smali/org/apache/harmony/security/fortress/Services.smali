.class public Lorg/apache/harmony/security/fortress/Services;
.super Ljava/lang/Object;
.source "Services.java"


# static fields
.field private static needRefresh:Z

.field private static final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final providersNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field static refreshNumber:I

.field private static secureRandom:Ljava/security/Provider$Service;

.field private static final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x14

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    const/4 v0, 0x1

    sput v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->loadProviders()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    goto :goto_0
.end method

.method public static getProviders()[Ljava/security/Provider;
    .locals 2

    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/Provider;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Provider;

    return-object v0
.end method

.method public static getProvidersList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getSecureRandomService()Ljava/security/Provider$Service;
    .locals 1

    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->secureRandom:Ljava/security/Provider$Service;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 1

    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    return-object v0
.end method

.method public static initServiceInfo(Ljava/security/Provider;)V
    .locals 9

    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    invoke-virtual {v4}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->secureRandom:Ljava/security/Provider$Service;

    if-nez v6, :cond_1

    const-string v6, "SecureRandom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sput-object v4, Lorg/apache/harmony/security/fortress/Services;->secureRandom:Ljava/security/Provider$Service;

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v6, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v6, v4}, Lorg/apache/harmony/security/fortress/SecurityAccess;->getAliases(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static insertProviderAt(Ljava/security/Provider;I)I
    .locals 3

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    add-int/lit8 p1, v0, 0x1

    :cond_1
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    return p1
.end method

.method public static isEmpty()Z
    .locals 1

    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static loadProviders()V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "security.provider."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v5

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v5

    move v1, v2

    goto :goto_0

    :catch_2
    move-exception v5

    move v1, v2

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v5}, Lorg/apache/harmony/security/fortress/SecurityAccess;->renumProviders()V

    return-void
.end method

.method public static refresh()V
    .locals 1

    sget-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->updateServiceInfo()V

    :cond_0
    return-void
.end method

.method public static removeProvider(I)V
    .locals 3

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    add-int/lit8 v2, p0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    return-void
.end method

.method public static setNeedRefresh()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    return-void
.end method

.method public static updateServiceInfo()V
    .locals 3

    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/harmony/security/fortress/Services;->secureRandom:Ljava/security/Provider$Service;

    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    return-void
.end method
