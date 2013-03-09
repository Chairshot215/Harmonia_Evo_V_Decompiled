.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v3, 0x0

    const-string v1, "PBEwithHmacSHA"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xa0

    move-object v0, p0

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V

    return-void
.end method
