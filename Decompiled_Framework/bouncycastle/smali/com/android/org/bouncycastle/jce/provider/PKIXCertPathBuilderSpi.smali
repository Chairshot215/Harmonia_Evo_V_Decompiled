.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 15

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v12

    if-le v11, v12, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :try_start_0
    const-string v11, "X.509"

    const-string v12, "BC"

    invoke-static {v11, v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    const-string v11, "PKIX"

    const-string v12, "BC"

    invoke-static {v11, v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v4, 0x0

    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v10, v4, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v9

    check-cast v9, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v11, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v9}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v12

    invoke-virtual {v9}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v13

    invoke-virtual {v9}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    invoke-direct {v11, v4, v12, v13, v14}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v11

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Exception creating support classes."

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_1
    move-exception v5

    :try_start_5
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Certification path could not be constructed from certificate list."

    invoke-direct {v11, v12, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_5
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    :cond_4
    if-nez v2, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_3
    move-exception v5

    :try_start_6
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Certification path could not be validated."

    invoke-direct {v11, v12, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_6
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :try_start_7
    invoke-static/range {p1 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_7
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_8
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-static/range {p1 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_5

    :try_start_a
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No issuer certificate for certificate in certification path found."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_4
    move-exception v5

    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No additiontal X.509 stores can be added from certificate locations."

    invoke-direct {v11, v12, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :catch_5
    move-exception v5

    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v11, v12, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_6
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_a
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v2

    goto :goto_1
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v9, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v9, :cond_0

    instance-of v9, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v9, :cond_0

    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parameters must be an instance of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " or "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/4 v5, 0x0

    instance-of v9, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v9, :cond_1

    move-object v5, p1

    check-cast v5, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v3

    instance-of v9, v3, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    if-nez v9, :cond_2

    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TargetConstraints must be an instance of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " class."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    goto :goto_0

    :cond_2
    :try_start_0
    move-object v0, v3

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    move-object v9, v0

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v8

    check-cast v3, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    const-string v10, "No certificate found matching targetContraints."

    invoke-direct {v9, v10}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_0
    move-exception v4

    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v10, "Error finding target certificate."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_3
    const/4 v6, 0x0

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1, v5, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v6

    goto :goto_1

    :cond_4
    if-nez v6, :cond_6

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    instance-of v9, v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v9, :cond_5

    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    iget-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v11}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_5
    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    const-string v10, "Possible certificate chain could not be validated."

    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-direct {v9, v10, v11}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_6
    if-nez v6, :cond_7

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-nez v9, :cond_7

    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    const-string v10, "Unable to find certificate chain."

    invoke-direct {v9, v10}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    return-object v6
.end method
