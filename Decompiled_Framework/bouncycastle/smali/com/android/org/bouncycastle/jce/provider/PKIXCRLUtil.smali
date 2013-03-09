.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;
.super Ljava/lang/Object;
.source "PKIXCRLUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lcom/android/org/bouncycastle/x509/X509Store;

    if-eqz v7, :cond_0

    move-object v6, v5

    check-cast v6, Lcom/android/org/bouncycastle/x509/X509Store;

    :try_start_0
    invoke-virtual {v6, p1}, Lcom/android/org/bouncycastle/x509/X509Store;->getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Exception searching in X.509 CRL store."

    invoke-direct {v4, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move-object v6, v5

    check-cast v6, Ljava/security/cert/CertStore;

    :try_start_1
    invoke-virtual {v6, p1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Exception searching in X.509 CRL store."

    invoke-direct {v4, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_2

    throw v4

    :cond_2
    return-object v0
.end method


# virtual methods
.method public findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v6, p3

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v6

    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Exception obtaining complete CRLs."

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_2
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Exception obtaining complete CRLs."

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
