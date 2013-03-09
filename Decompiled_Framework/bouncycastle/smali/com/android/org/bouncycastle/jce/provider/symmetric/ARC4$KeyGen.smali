.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$KeyGen;
.super Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;
.source "ARC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "ARC4"

    const/16 v1, 0x80

    new-instance v2, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method
