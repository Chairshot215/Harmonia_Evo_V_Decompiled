.class public Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;
.super Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BCPKCS12KeyStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->access$200()Ljava/security/Provider;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;->pbewithSHAAnd40BitRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;-><init>(Ljava/security/Provider;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    return-void
.end method
