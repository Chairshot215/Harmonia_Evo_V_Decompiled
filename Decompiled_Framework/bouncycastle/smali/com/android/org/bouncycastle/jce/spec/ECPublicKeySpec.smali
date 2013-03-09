.class public Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;
.super Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;
.source "ECPublicKeySpec.java"


# instance fields
.field private q:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
