.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Wrap;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V

    return-void
.end method
