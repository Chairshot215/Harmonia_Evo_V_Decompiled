.class public Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-eq v0, v4, :cond_2

    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-virtual {p0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
