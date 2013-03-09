.class public abstract Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;,
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;
    }
.end annotation


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    return-void
.end method


# virtual methods
.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method
