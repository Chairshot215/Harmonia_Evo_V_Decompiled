.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$AlgParams;
.super Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "AES IV"

    return-object v0
.end method
