.class public Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;
.super Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;
.source "ECPrivateKeySpec.java"


# instance fields
.field private d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-object v0
.end method
