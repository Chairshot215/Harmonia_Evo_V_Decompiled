.class public Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String; = null

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String; = null

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String; = null

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String; = null

.field protected static final CRL_NUMBER:Ljava/lang/String; = null

.field protected static final CRL_SIGN:I = 0x6

.field protected static final CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil; = null

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String; = null

.field protected static final FRESHEST_CRL:Ljava/lang/String; = null

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String; = null

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String; = null

.field protected static final KEY_CERT_SIGN:I = 0x5

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAdditionalStoreFromLocation(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isAdditionalLocationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected static addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_2

    aget-object v7, v1, v4

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_1

    aget-object v7, v3, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    aget-object v7, v3, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution points could not be read."

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/org/bouncycastle/x509/X509Store;

    if-eqz v5, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509Store;

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/x509/X509Store;->getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from X.509 store."

    invoke-direct {v5, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_0
    move-object v0, v4

    check-cast v0, Ljava/security/cert/CertStore;

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from certificate store."

    invoke-direct {v5, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_1
    return-object v1
.end method

.method protected static findIssuerCerts(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {v7, v8, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_1
    move-exception v2

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Issuer certificate cannot be searched."

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_0
    return-object v1
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    return-object v0
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_0

    :try_start_1
    invoke-static {p0, v7, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v4, v3

    const/4 v6, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v9, "Cannot set subject search criteria for trust anchor."

    invoke-direct {v8, v9, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    if-eqz v8, :cond_4

    :try_start_2
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :catch_2
    move-exception v3

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    if-nez v6, :cond_6

    if-eqz v4, :cond_6

    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v9, "TrustAnchor found but certificate validation failed."

    invoke-direct {v8, v9, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_6
    return-object v6
.end method

.method protected static getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Subject public key cannot be decoded."

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    :try_start_0
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v6, v7, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Cannot decode CRL issuer information."

    invoke-direct {v6, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_4
    return-void
.end method

.method protected static getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v6, v5}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_1
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {p3, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    :cond_3
    return-void

    :catch_0
    move-exception v3

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Bouncy Castle X509CRLObject could not be created."

    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v2

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v5, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    goto :goto_1
.end method

.method protected static getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    instance-of v7, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p0, v5, v3, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    instance-of v7, p1, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_2

    move-object v7, p1

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    :cond_0
    :goto_2
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCompleteCRLEnabled(Z)V

    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v7, v3, p3, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    instance-of v7, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Could not get issuer information from distribution point."

    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    instance-of v7, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_0

    move-object v7, p1

    check-cast v7, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setAttrCertificateChecking(Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;)V

    goto :goto_2

    :cond_3
    move-object v6, p1

    check-cast v6, Ljava/security/cert/X509Certificate;

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    return-object v2
.end method

.method protected static getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v2, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    :try_start_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {p2, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    const/4 v5, 0x0

    :try_start_2
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    if-nez v0, :cond_2

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPoint([B)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPointEnabled(Z)V

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v9, v2, p1, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v8

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Cannot extract issuer from CRL."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v4

    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "CRL number extension could not be extracted from CRL."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :catch_2
    move-exception v4

    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Issuing distribution point extension value could not be read."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_2
    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_1

    :cond_3
    return-object v7
.end method

.method protected static getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;
    .locals 2

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method protected static getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .locals 1

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    instance-of v10, v9, Ljava/security/interfaces/DSAPublicKey;

    if-nez v10, :cond_1

    move-object v2, v9

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v9

    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    if-nez v10, :cond_0

    add-int/lit8 v5, p1, 0x1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    instance-of v10, v9, Ljava/security/interfaces/DSAPublicKey;

    if-nez v10, :cond_2

    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    move-object v8, v9

    check-cast v8, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v8}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    if-nez v10, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v8}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    new-instance v3, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v12

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v3, v10, v11, v12, v13}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :try_start_0
    const-string v10, "DSA"

    const-string v11, "BC"

    invoke-static {v10, v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private static getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception processing extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static final getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    return-object v4

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v5, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    if-gtz p2, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    add-int/lit8 v3, p2, -0x1

    if-nez v3, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2
    move-exception v1

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date from date of cert gen extension could not be parsed."

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    goto :goto_0
.end method

.method protected static getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_0
    return-object v0
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v12, 0x0

    aget-object v3, p1, p0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v12, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iput-object v3, v13, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    :cond_1
    if-nez v12, :cond_6

    aget-object v3, p1, p0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v3, "2.5.29.32.0"

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    const/16 v16, 0x0

    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v15, 0x0

    :try_start_1
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    const-string v3, "2.5.29.32.0"

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    :cond_4
    const/4 v9, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    :cond_5
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v3, "2.5.29.32.0"

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    aget-object v3, p1, p0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    :catch_0
    move-exception v10

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate policies cannot be decoded."

    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v11

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Policy information cannot be decoded."

    invoke-direct {v3, v4, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v11

    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Policy qualifier info set could not be built."

    invoke-direct {v3, v4, v11}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 8

    aget-object v7, p1, p0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, p0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v4, p1, v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p3, p1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    if-nez p3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p3
.end method

.method protected static processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z
    .locals 11

    const/4 v7, 0x0

    add-int/lit8 v1, p0, -0x1

    aget-object v10, p1, v1

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_0
    return v7

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method protected static processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V
    .locals 10

    add-int/lit8 v1, p0, -0x1

    aget-object v9, p1, v1

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v1, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method protected static removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    if-nez p0, :cond_0

    move-object p0, v2

    :goto_0
    return-object p0

    :cond_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object p0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_0
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v2

    aget-object v2, p0, v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_0
.end method
