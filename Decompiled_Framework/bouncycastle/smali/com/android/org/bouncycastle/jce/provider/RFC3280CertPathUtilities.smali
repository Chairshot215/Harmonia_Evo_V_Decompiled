.class public Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field protected static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String; = null

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String; = null

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String; = null

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String; = null

.field protected static final CRL_NUMBER:Ljava/lang/String; = null

.field protected static final CRL_SIGN:I = 0x6

.field private static final CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil; = null

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

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

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

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v14, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v14, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Validation time is in future."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v14, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v13

    const/16 v22, 0x0

    const/16 v21, 0x0

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_9

    invoke-virtual/range {p7 .. p7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v5

    if-nez v5, :cond_9

    :try_start_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p8

    invoke-static/range {v4 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v19

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p1

    invoke-static {v14, v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v15

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No valid CRL for current time found."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v17

    move-object/from16 v21, v17

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    move-object/from16 v0, p1

    invoke-static {v15, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    const/16 v5, 0xb

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    :cond_4
    move-object/from16 v0, p7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_6

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL contains unsupported critical extensions."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    move-object v10, v11

    :cond_6
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_8

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL contains unsupported critical extension."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    move-object v10, v11

    :cond_8
    const/16 v22, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez v22, :cond_a

    throw v21

    :cond_a
    return-void
.end method

.method protected static checkCRLs(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v15, 0x0

    const/4 v10, 0x0

    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    const/16 v17, 0x0

    if-eqz v10, :cond_0

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v13, 0x0

    :goto_0
    array-length v3, v11

    if-ge v13, v3, :cond_0

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    :try_start_3
    aget-object v1, v11, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v17, 0x1

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v12

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v12

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Distribution points could not be read."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v12

    move-object v15, v12

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v14, 0x0

    :try_start_4
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v14

    :try_start_5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v9, 0x4

    invoke-direct {v6, v9, v14}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_5
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v17, 0x1

    :cond_1
    :goto_2
    if-nez v17, :cond_3

    instance-of v3, v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v3, :cond_2

    throw v15

    :catch_4
    move-exception v12

    :try_start_6
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    move-exception v12

    move-object v15, v12

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No valid CRL found."

    invoke-direct {v3, v4, v15}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate revocation after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_5

    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    :cond_5
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_6

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate status could not be determined."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    return-void
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    sub-int v4, v23, p1

    const/16 v29, 0x0

    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    move-object/from16 v10, p3

    if-eqz v29, :cond_d

    move-object/from16 v22, v29

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :catch_0
    move-exception v14

    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_0
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/Set;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-lez p4, :cond_9

    const/4 v15, 0x0

    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v15, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    :cond_4
    if-nez v15, :cond_2

    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v7, 0x0

    const/16 v30, 0x0

    :try_start_1
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v30

    check-cast v30, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v28, 0x0

    :try_start_2
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v28

    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_3
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    :cond_8
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v3, "2.5.29.32.0"

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct/range {v2 .. v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    aget-object v3, p2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_1
    move-exception v13

    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate policies extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v13, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_2
    move-exception v14

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Policy information could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_3
    move-exception v14

    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy qualifier info set could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_9
    if-gtz p4, :cond_2

    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v18, v4, -0x1

    :goto_3
    if-ltz v18, :cond_a

    aget-object v26, p2, v18

    const/16 v19, 0x0

    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_b

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    if-nez v10, :cond_c

    :cond_b
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_d
    return-object v10
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v12, 0x0

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const/4 v8, 0x0

    :try_start_0
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_2

    move-object v7, v8

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    const/4 v4, 0x0

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    const-string v10, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    :catch_0
    move-exception v3

    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension could not be decoded."

    invoke-direct {v10, v11, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    :catch_1
    move-exception v2

    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension contents could not be decoded."

    invoke-direct {v10, v11, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    :cond_0
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    :try_start_0
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_1
    invoke-virtual {p2, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    :catch_1
    move-exception v2

    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Name constraints extension could not be decoded."

    invoke-direct {v9, v10, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    :catch_2
    move-exception v3

    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    :cond_2
    return-void
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .locals 3

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    return p2
.end method

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .locals 3

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    return p2
.end method

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .locals 3

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    return p2
.end method

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    :try_start_0
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-ge v6, p2, :cond_1

    :goto_0
    return v6

    :catch_0
    move-exception v3

    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    :catch_1
    move-exception v3

    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    :cond_1
    move v6, p2

    goto :goto_0
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    :try_start_0
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-ge v6, p2, :cond_1

    :goto_0
    return v6

    :catch_0
    move-exception v3

    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    :catch_1
    move-exception v3

    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    :cond_1
    move v6, p2

    goto :goto_0
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ge v0, p2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v3

    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v5, v6, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Not a CA certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v3

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_0
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    return-void
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1

    if-gtz p2, :cond_0

    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Max path length not greater than zero"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    :cond_1
    return p2
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ge v1, p2, :cond_0

    :goto_0
    return v1

    :catch_0
    move-exception v5

    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Basic constraints extension cannot be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_0
    return-void
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate has unsupported critical extension."

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_1
    return-void
.end method

.method protected static processCRLA1i(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_1
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p3, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from certificate."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from CRL."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No new delta CRL locations could be added from Freshest CRL extension."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Exception obtaining delta CRLs."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static processCRLA1ii(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-virtual {v1, p2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    :try_start_0
    invoke-virtual {p3}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v6}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCompleteCRLEnabled(Z)V

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v4, v1, p1, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    return-object v4

    :catch_0
    move-exception v3

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot extract issuer from CRL."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Exception obtaining delta CRLs."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_2

    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    :try_start_0
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_2
    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    if-nez v6, :cond_5

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v6, 0x1

    :cond_5
    if-nez v6, :cond_6

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    return-void
.end method

.method protected static processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v5, 0x0

    :try_start_0
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    const/4 v6, 0x0

    :goto_0
    array-length v10, v4

    if-ge v6, v10, :cond_0

    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Issuing distribution point extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_2

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read CRL issuer."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    :cond_3
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    :goto_2
    const/4 v6, 0x0

    :goto_3
    array-length v10, v4

    if-ge v6, v10, :cond_6

    aget-object v10, v4, v6

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_4

    :cond_4
    new-array v4, v12, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v11, 0x0

    :try_start_2
    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v13, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v13, v10}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    aput-object v12, v4, v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read certificate issuer."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_5
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    aput-object v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    const/4 v6, 0x0

    :goto_5
    array-length v10, v4

    if-ge v6, v10, :cond_7

    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v7, 0x1

    :cond_7
    if-nez v7, :cond_d

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-nez v10, :cond_a

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    const/4 v6, 0x0

    :goto_6
    array-length v10, v4

    if-ge v6, v10, :cond_b

    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v7, 0x1

    :cond_b
    if-nez v7, :cond_d

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :try_start_3
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Extension;

    move-object v10, v0

    sget-object v11, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    instance-of v10, p1, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_10

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "CA Cert CRL only contains user certificates."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_3
    move-exception v3

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Basic constraints extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-nez v10, :cond_10

    :cond_f
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "End CRL only contains CA certificates."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_10
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v10

    if-eqz v10, :cond_11

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_11
    return-void
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v4

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension could not be decoded."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    const/4 v3, 0x0

    :try_start_1
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    const/4 v5, 0x0

    if-nez v1, :cond_4

    if-nez v3, :cond_3

    const/4 v5, 0x1

    :cond_3
    :goto_0
    if-nez v5, :cond_5

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_1
    move-exception v4

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_2
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    const/4 v2, 0x0

    :try_start_3
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    if-nez v0, :cond_6

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_2
    move-exception v4

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_3
    move-exception v4

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_6
    if-nez v2, :cond_7

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-object v3, v2

    :goto_1
    if-nez v1, :cond_4

    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    move-object v3, v2

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    goto :goto_2
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v13, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v13}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :catch_1
    move-exception v7

    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Issuer certificate for CRL cannot be searched."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :cond_0
    :try_start_2
    const-string v20, "PKIX"

    const-string v21, "BC"

    invoke-static/range {v20 .. v21}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v2

    new-instance v14, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v14}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V

    :goto_1
    invoke-virtual {v2, v12}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v14

    goto/16 :goto_0

    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    :catch_2
    move-exception v7

    move-object v13, v14

    :goto_2
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Internal error."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :catch_3
    move-exception v7

    :goto_3
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Public key of issuer certificate of CRL could not be retrieved."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :catch_4
    move-exception v7

    :goto_4
    new-instance v20, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x0

    const/4 v8, 0x0

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    if-eqz v10, :cond_4

    array-length v0, v10

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    const/16 v20, 0x6

    aget-boolean v20, v10, v20

    if-nez v20, :cond_4

    :cond_3
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v20, "Issuer certificate key usage extension does not permit CRL signing."

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_6

    if-nez v11, :cond_6

    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Cannot find a valid issuer certificate."

    invoke-direct/range {v20 .. v21}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_6
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_7

    if-eqz v11, :cond_7

    throw v11

    :cond_7
    return-object v5

    :catch_5
    move-exception v7

    move-object v13, v14

    goto :goto_4

    :catch_6
    move-exception v7

    move-object v13, v14

    goto :goto_3

    :catch_7
    move-exception v7

    goto/16 :goto_2
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify delta CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    :cond_0
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    :cond_0
    return-void
.end method

.method protected static processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-nez p4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p3, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2

    move-object v0, p1

    move-object v3, p6

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match SubjectName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") of signing certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_0
    move-exception v7

    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_1
    move-exception v7

    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_2
    move-exception v7

    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_3
    move-exception v7

    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_4
    move-exception v7

    move-object v6, v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_3
    return-void
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    move/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    sub-int v15, v17, p1

    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v19

    if-eqz v19, :cond_0

    move/from16 v0, v17

    if-lt v15, v0, :cond_2

    :cond_0
    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual/range {v18 .. v18}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    :try_start_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v5, 0x0

    :try_start_2
    sget-object v19, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    new-instance v19, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    sget-object v20, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v19 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getValues(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v11, v0, v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v13

    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative email failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    :catch_1
    move-exception v9

    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Exception extracting subject name when checking subtrees."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    :catch_2
    move-exception v9

    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    :catch_3
    move-exception v9

    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name extension could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    :cond_1
    if-eqz v5, :cond_2

    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    const/16 v16, 0x0

    :goto_1
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    :try_start_5
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :catch_4
    move-exception v9

    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name contents could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    :catch_5
    move-exception v9

    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative name failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    :cond_2
    return-void
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    sub-int v5, v29, p1

    const/16 v19, 0x0

    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    if-eqz v19, :cond_11

    if-eqz p3, :cond_11

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v36, 0x0

    :try_start_1
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v36

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z

    move-result v28

    if-nez v28, :cond_0

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V

    goto :goto_0

    :catch_0
    move-exception v23

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Could not read certificate policies extension from certificate."

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :catch_1
    move-exception v24

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Policy qualifier info set could not be build."

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "2.5.29.32.0"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    if-gtz p5, :cond_3

    move/from16 v0, v29

    if-ge v5, v0, :cond_d

    invoke-static/range {v18 .. v18}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v8

    add-int/lit8 v4, v5, -0x1

    aget-object v14, p4, v4

    const/16 v27, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_d

    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    :goto_4
    const/4 v13, 0x0

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    :cond_8
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, v16

    instance-of v4, v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v4, :cond_5

    check-cast v16, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_b
    if-nez v13, :cond_5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    aget-object v4, p4, v5

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    :cond_d
    move-object/from16 v17, p3

    add-int/lit8 v26, v5, -0x1

    :goto_7
    if-ltz v26, :cond_10

    aget-object v31, p4, v26

    const/16 v27, 0x0

    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_e

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v17

    if-nez v17, :cond_f

    :cond_e
    add-int/lit8 v26, v26, -0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v22

    if-eqz v22, :cond_12

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    aget-object v31, p4, v5

    const/16 v26, 0x0

    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_12

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    :cond_11
    const/16 v17, 0x0

    :cond_12
    return-object v17
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    return-object p2

    :catch_0
    move-exception v3

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-gtz p3, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_0
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .locals 1

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    :try_start_0
    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_0

    move p2, v7

    :cond_1
    return p2

    :catch_0
    move-exception v3

    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    :catch_1
    move-exception v3

    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate has unsupported critical extension"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_1
    return-void
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    if-nez p5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    :cond_0
    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_5

    aget-object v8, p4, v13

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    goto :goto_4

    :cond_7
    if-eqz p5, :cond_a

    add-int/lit8 v13, v15, -0x1

    :goto_5
    if-ltz v13, :cond_a

    aget-object v17, p4, v13

    const/4 v14, 0x0

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    :cond_a
    move-object/from16 v12, p5

    goto/16 :goto_0

    :cond_b
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_f

    aget-object v8, p4, v13

    const/4 v14, 0x0

    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_e

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v18, "2.5.29.32.0"

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_f
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_10
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    goto :goto_a

    :cond_11
    if-eqz p5, :cond_14

    add-int/lit8 v13, v15, -0x1

    :goto_b
    if-ltz v13, :cond_14

    aget-object v17, p4, v13

    const/4 v14, 0x0

    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_13

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_12

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_13
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    :cond_14
    move-object/from16 v12, p5

    goto/16 :goto_0
.end method
