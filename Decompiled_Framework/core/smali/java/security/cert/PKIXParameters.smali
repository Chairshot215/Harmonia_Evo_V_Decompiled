.class public Ljava/security/cert/PKIXParameters;
.super Ljava/lang/Object;
.source "PKIXParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# instance fields
.field private anyPolicyInhibited:Z

.field private certPathCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private certStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private date:Ljava/util/Date;

.field private explicitPolicyRequired:Z

.field private initialPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private policyMappingInhibited:Z

.field private policyQualifiersRejected:Z

.field private revocationEnabled:Z

.field private sigProvider:Ljava/lang/String;

.field private targetCertConstraints:Ljava/security/cert/CertSelector;

.field private trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    iput-boolean v3, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    iput-boolean v3, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    iput-boolean v3, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "keyStore == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->size()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "keyStore.size() == 0"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    instance-of v3, v1, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    new-instance v4, Ljava/security/cert/TrustAnchor;

    check-cast v1, Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    invoke-direct {p0, v3}, Ljava/security/cert/PKIXParameters;->checkTrustAnchors(Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustAnchors == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;->checkTrustAnchors(Ljava/util/Set;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method private checkTrustAnchors(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "trustAnchors.isEmpty()"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addCertStore(Ljava/security/cert/CertStore;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXParameters;

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    :cond_0
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getCertPathCheckers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    :cond_0
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public getCertStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public getInitialPolicies()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public getPolicyQualifiersRejected()Z
    .locals 1

    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    return v0
.end method

.method public getSigProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCertConstraints()Ljava/security/cert/CertSelector;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    invoke-interface {v0}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertSelector;

    goto :goto_0
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAnyPolicyInhibited()Z
    .locals 1

    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    return v0
.end method

.method public isExplicitPolicyRequired()Z
    .locals 1

    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    return v0
.end method

.method public isPolicyMappingInhibited()Z
    .locals 1

    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    return v0
.end method

.method public isRevocationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    return v0
.end method

.method public setAnyPolicyInhibited(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    return-void
.end method

.method public setCertPathCheckers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    goto :goto_0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    return-void

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public setExplicitPolicyRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    return-void
.end method

.method public setInitialPolicies(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    goto :goto_0
.end method

.method public setPolicyMappingInhibited(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    return-void
.end method

.method public setPolicyQualifiersRejected(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    return-void
.end method

.method public setRevocationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    return-void
.end method

.method public setSigProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    return-void
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertSelector;

    goto :goto_0
.end method

.method public setTrustAnchors(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustAnchors == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;->checkTrustAnchors(Ljava/util/Set;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\n Trust Anchors: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Revocation Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n Explicit Policy Required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n Policy Mapping Inhibited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n Any Policy Inhibited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n Policy Qualifiers Rejected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n Initial Policy OIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "any"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Cert Stores: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const-string v1, "no"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Validity Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Cert Path Checkers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const-string v1, "no"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Signature Provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Target Certificate Constraints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
