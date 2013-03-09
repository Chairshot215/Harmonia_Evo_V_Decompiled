.class public Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source "ExtendedPKIXParameters.java"


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final PKIX_VALIDITY_MODEL:I


# instance fields
.field private additionalLocationsEnabled:Z

.field private additionalStores:Ljava/util/List;

.field private attrCertCheckers:Ljava/util/Set;

.field private necessaryACAttributes:Ljava/util/Set;

.field private prohibitedACAttributes:Ljava/util/Set;

.field private selector:Lcom/android/org/bouncycastle/util/Selector;

.field private stores:Ljava/util/List;

.field private trustedACIssuers:Ljava/util/Set;

.field private useDeltas:Z

.field private validityModel:I


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    iput v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .locals 4

    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addAddionalStore(Lcom/android/org/bouncycastle/util/Store;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lcom/android/org/bouncycastle/util/Store;)V

    return-void
.end method

.method public addAdditionalStore(Lcom/android/org/bouncycastle/util/Store;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addStore(Lcom/android/org/bouncycastle/util/Store;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAdditionalStores()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttrCertCheckers()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNecessaryACAttributes()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProhibitedACAttributes()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStores()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/util/Selector;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrustedACIssuers()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValidityModel()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    return v0
.end method

.method public isAdditionalLocationsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    return v0
.end method

.method public isUseDeltasEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    return v0
.end method

.method public setAdditionalLocationsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    return-void
.end method

.method public setAttrCertCheckers(Ljava/util/Set;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/x509/PKIXAttrCertChecker;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/org/bouncycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertStore;

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNecessaryACAttributes(Ljava/util/Set;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 4

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setDate(Ljava/util/Date;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertStores(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setAnyPolicyInhibited(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setExplicitPolicyRequired(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyMappingInhibited(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setRevocationEnabled(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyQualifiersRejected(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setSigProvider(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v2, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    iget v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iput v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iget-boolean v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    iget-boolean v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    :cond_0
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/util/Selector;

    goto :goto_0
.end method

.method public setProhibitedACAttributes(Ljava/util/Set;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setStores(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/util/Store;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of list must be of type org.bouncycastle.util.Store."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    goto :goto_0
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    if-eqz p1, :cond_0

    check-cast p1, Ljava/security/cert/X509CertSelector;

    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    goto :goto_0
.end method

.method public setTargetConstraints(Lcom/android/org/bouncycastle/util/Selector;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/util/Selector;

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    goto :goto_0
.end method

.method public setTrustedACIssuers(Ljava/util/Set;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setUseDeltasEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    return-void
.end method

.method public setValidityModel(I)V
    .locals 0

    iput p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    return-void
.end method
