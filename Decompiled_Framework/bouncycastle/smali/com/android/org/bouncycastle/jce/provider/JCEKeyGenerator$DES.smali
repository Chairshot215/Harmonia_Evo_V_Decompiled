.class public Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$DES;
.super Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "DES"

    const/16 v1, 0x40

    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method
