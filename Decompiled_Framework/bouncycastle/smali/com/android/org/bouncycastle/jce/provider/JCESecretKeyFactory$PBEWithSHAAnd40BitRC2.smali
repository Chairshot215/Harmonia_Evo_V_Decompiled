.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd40BitRC2;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd40BitRC2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v3, 0x1

    const-string v1, "PBEwithSHAand40BitRC2-CBC"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbewithSHAAnd40BitRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x2

    const/16 v6, 0x28

    const/16 v7, 0x40

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V

    return-void
.end method
