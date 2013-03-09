.class public final Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
.super Ljava/lang/Object;
.source "TrustedCertificateIndex.java"


# instance fields
.field private final subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    return-void
.end method

.method private static findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/security/cert/TrustAnchor;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private index(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    monitor-exit v7

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    :goto_2
    invoke-virtual {p1, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    goto :goto_2

    :cond_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 2

    new-instance v0, Ljava/security/cert/TrustAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    return-object v0
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .locals 5

    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
