.class public interface abstract Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;
.super Ljava/lang/Object;
.source "MiscObjectIdentifiers.java"


# static fields
.field public static final entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final entrustVersionExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeBaseURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCARevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCApolicyURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCertComment:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeRenewalURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeSSLServerName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final novell:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final novellSecurityAttribs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignDnbDunsNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeBaseURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCARevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRenewalURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCApolicyURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeSSLServerName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertComment:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.113733.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6.3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6.15"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignDnbDunsNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.113719"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.9.4.1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novellSecurityAttribs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113533.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "65.0"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrustVersionExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
